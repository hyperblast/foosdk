cmake_minimum_required(VERSION 3.0)

project(foosdk)

if(NOT WIN32)
    message(FATAL_ERROR "This project requires WIN32 target.")
endif()

option(FOO_PPUI             "Include libPPUI (adds usage of ATL/WTL)" ON)
option(FOO_SDK_HELPERS      "Include SDK helpers (requires FOO_PPUI)" ON)
option(FOO_STATIC_STDLIB    "Use static standard libraries" OFF)
option(FOO_SYSTEM_WTL       "Use system WTL library" OFF)
option(FOO_SAMPLE           "Build foo_sample component" OFF)

set(CMAKE_MODULE_PATH   "${CMAKE_CURRENT_SOURCE_DIR}/cmake;${CMAKE_MODULE_PATH}")
set(CMAKE_CXX_FLAGS     "${CMAKE_CXX_FLAGS} /MP /wd4302 /wd4838 /wd4996 /d2notypeopt")

if(FOO_STATIC_STDLIB)
    foreach(FLAGS CMAKE_CXX_FLAGS_DEBUG
                  CMAKE_CXX_FLAGS_RELEASE
                  CMAKE_CXX_FLAGS_MINSIZEREL
                  CMAKE_CXX_FLAGS_RELWITHDEBINFO)
        string(REPLACE "/MD" "/MT" ${FLAGS} "${${FLAGS}}")
    endforeach()
endif()

set(CMAKE_CXX_STANDARD 17)
set(WINVER 0x0601)

add_definitions(
    -D_UNICODE -DUNICODE -DSTRICT -DWINVER=${WINVER} -D_WIN32_WINNT=${WINVER}
)

set(INCLUDE_WTL OFF)

if(FOO_PPUI)
    if(FOO_SYSTEM_WTL)
        find_package(Wtl REQUIRED)
        include_directories(${WTL_INCLUDE_DIRS})
    else()
        include_directories(wtl/Include)
        set(INCLUDE_WTL ON)
    endif()
endif()

function(option_dependency_check OPT1 OPT2)
    if(${OPT1})
        if(NOT ${OPT2})
            message(SEND_ERROR "Option ${OPT1} requires option ${OPT2}")
        endif()
    endif()
endfunction()

option_dependency_check(FOO_SDK_HELPERS FOO_PPUI)
option_dependency_check(FOO_SAMPLE      FOO_SDK_HELPERS)

include(FileLists)

if("${CMAKE_SIZEOF_VOID_P}" STREQUAL "8")
    set(SHARED_LIBRARY sdk/foobar2000/shared/shared-x64.lib)
else()
    set(SHARED_LIBRARY sdk/foobar2000/shared/shared-Win32.lib)
endif()

set(
    LIB_SOURCES
    ${PFC_SOURCES} ${PFC_HEADERS}
    ${SDK_SOURCES} ${SDK_HEADERS}
    ${COMPONENT_CLIENT_SOURCES}
)

if(INCLUDE_WTL)
    set(LIB_SOURCES ${LIB_SOURCES} ${WTL_HEADERS})
endif()

if(FOO_SDK_HELPERS)
    set(LIB_SOURCES ${LIB_SOURCES} ${SDK_HELPERS_SOURCES} ${SDK_HELPERS_HEADERS})
endif()

if(FOO_PPUI)
    set(LIB_SOURCES ${LIB_SOURCES} ${PPUI_SOURCES} ${PPUI_HEADERS})
endif()

include_directories(sdk)
include_directories(sdk/foobar2000)

add_library(foosdk STATIC ${LIB_SOURCES})

if(FOO_SAMPLE)
    add_library(foo_sample MODULE ${SAMPLE_SOURCES} ${SAMPLE_HEADERS})
    target_link_libraries(foo_sample foosdk "${CMAKE_CURRENT_SOURCE_DIR}/${SHARED_LIBRARY}")
endif()

install(TARGETS foosdk ARCHIVE DESTINATION lib)
install(FILES "${CMAKE_CURRENT_SOURCE_DIR}/${SHARED_LIBRARY}" DESTINATION lib)

install(FILES ${SHARED_HEADERS} DESTINATION include/foobar2000/shared)
install(FILES ${PFC_HEADERS} DESTINATION include/pfc)
install(FILES ${SDK_HEADERS} DESTINATION include/foobar2000/SDK)

if(INCLUDE_WTL)
    install(FILES ${WTL_HEADERS} DESTINATION include)
endif()

if(FOO_SDK_HELPERS)
    install(FILES ${SDK_HELPERS_HEADERS} DESTINATION include/foobar2000/helpers)
endif()

if(FOO_PPUI)
    install(FILES ${PPUI_HEADERS} DESTINATION include/libPPUI)
endif()
