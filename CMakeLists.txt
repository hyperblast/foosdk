cmake_minimum_required(VERSION 3.0)

project(foosdk)

if(NOT WIN32)
    message(FATAL_ERROR "This project requires WIN32 target.")
endif()

option(FOO_SDK_HELPERS      "Include SDK helpers" ON)
option(FOO_ATL_HELPERS      "Include ATL helpers (enables usage of ATL)" ON)
option(FOO_STATIC_STDLIB    "Use static standard libraries" OFF)
option(FOO_SYSTEM_WTL       "Use system WTL library" OFF)
option(FOO_SAMPLE           "Build foo_sample component" OFF)

set(CMAKE_MODULE_PATH   "${CMAKE_CURRENT_SOURCE_DIR}/cmake;${CMAKE_MODULE_PATH}")
set(CMAKE_CXX_FLAGS     "${CMAKE_CXX_FLAGS} /wd4302 /wd4838 /wd4996 /d2notypeopt")

if(FOO_STATIC_STDLIB)
    foreach(FLAGS CMAKE_CXX_FLAGS_DEBUG
                  CMAKE_CXX_FLAGS_RELEASE
                  CMAKE_CXX_FLAGS_MINSIZEREL
                  CMAKE_CXX_FLAGS_RELWITHDEBINFO)
        string(REPLACE "/MD" "/MT" ${FLAGS} "${${FLAGS}}")
    endforeach()
endif()

set(WINVER 0x0501)

add_definitions(
    -D_UNICODE -DUNICODE -DSTRICT -DWINVER=${WINVER} -D_WIN32_WINNT=${WINVER}
)

set(INCLUDE_WTL OFF)

if(FOO_ATL_HELPERS)
    if(NOT FOO_SDK_HELPERS)
        message(SEND_ERROR "FOO_ATL_HELPERS option requires FOO_SDK_HELPERS.")
    endif()

    if(FOO_SYSTEM_WTL)
        find_package(Wtl REQUIRED)
        include_directories(${WTL_INCLUDE_DIRS})
    else()
        include_directories(wtl/Include)
        set(INCLUDE_WTL ON)
    endif()
endif()

include(FileLists)

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

if(FOO_ATL_HELPERS)
    set(LIB_SOURCES ${LIB_SOURCES} ${ATL_HELPERS_SOURCES} ${ATL_HELPERS_HEADERS})
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

if(FOO_ATL_HELPERS)
    install(FILES ${ATL_HELPERS_HEADERS} DESTINATION include/foobar2000/ATLHelpers)
endif()
