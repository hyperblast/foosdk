cmake_minimum_required(VERSION 3.10)

project(foosdk)

set(CMAKE_CXX_STANDARD 17)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

set(OS_WINDOWS OFF)
set(OS_MAC OFF)

if(CMAKE_SYSTEM_NAME STREQUAL Windows)
    set(OS_WINDOWS ON)
    include(SourcesWindows)
elseif(CMAKE_SYSTEM_NAME STREQUAL Darwin)
    set(OS_MAC ON)
    include(SourcesMacOs)
    enable_language(OBJC)
else()
    message(FATAL_ERROR "Target OS is not Windows or Mac")
endif()

option(FOO_SAMPLE       "Build foo_sample component" OFF)
option(FOO_SDK_HELPERS  "Include SDK helpers (requires FOO_PPUI on Windows)" ON)

if(OS_WINDOWS)
    option(FOO_PPUI         "Include libPPUI (adds usage of ATL/WTL)" ON)
    option(FOO_SYSTEM_WTL   "Use system WTL library" OFF)
else()
    set(FOO_PPUI OFF)
endif()

if(MSVC)
    option(FOO_STATIC_STDLIB "Use static standard libraries" OFF)

    if(FOO_STATIC_STDLIB)
        foreach(FLAGS CMAKE_CXX_FLAGS_DEBUG
                  CMAKE_CXX_FLAGS_RELEASE
                  CMAKE_CXX_FLAGS_MINSIZEREL
                  CMAKE_CXX_FLAGS_RELWITHDEBINFO)
        string(REPLACE "/MD" "/MT" ${FLAGS} "${${FLAGS}}")
        endforeach()
    endif()

    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /MP /wd4302 /wd4838 /wd4996 /d2notypeopt")
endif()

set(INCLUDE_WTL OFF) # WTL not WTF

if(OS_WINDOWS)
    set(WINVER 0x0601)

    add_definitions(
        -D_UNICODE -DUNICODE -DSTRICT -DWINVER=${WINVER} -D_WIN32_WINNT=${WINVER}
    )

    if(FOO_PPUI)
        if(FOO_SYSTEM_WTL)
            find_package(Wtl REQUIRED)
            include_directories(${WTL_INCLUDE_DIRS})
        else()
            include_directories(wtl/Include)
            set(INCLUDE_WTL ON)
        endif()
    endif()
endif()

function(option_dependency_check OPT1 OPT2)
    if(${OPT1})
        if(NOT ${OPT2})
            message(SEND_ERROR "Option ${OPT1} requires option ${OPT2}")
        endif()
    endif()
endfunction()

if(OS_WINDOWS)
    option_dependency_check(FOO_SDK_HELPERS FOO_PPUI)
endif()

option_dependency_check(FOO_SAMPLE FOO_SDK_HELPERS)

set(SHARED_LIBRARY "")

if(OS_WINDOWS)
    if("${CMAKE_SIZEOF_VOID_P}" STREQUAL "8")
        set(SHARED_LIBRARY sdk/foobar2000/shared/shared-x64.lib)
    else()
        set(SHARED_LIBRARY sdk/foobar2000/shared/shared-Win32.lib)
    endif()
endif()

set(
    LIB_SOURCES
    ${PFC_SOURCES} ${PFC_HEADERS}
    ${SHARED_SOURCES} ${SHARED_HEADERS}
    ${SDK_SOURCES} ${SDK_HEADERS}
    ${COMPONENT_CLIENT_SOURCES} ${COMPONENT_CLIENT_HEADERS}
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

    target_include_directories(
        foo_sample PRIVATE
        sdk/foobar2000/foo_sample
        sdk/foobar2000/helpers-mac
    )

    target_link_libraries(foo_sample foosdk)

    if(SHARED_LIBRARY)
        target_link_libraries(foo_sample "${CMAKE_CURRENT_SOURCE_DIR}/${SHARED_LIBRARY}")
    endif()

    if(OS_MAC)
        target_link_libraries(foo_sample "-framework Cocoa")
    endif()
endif()

install(TARGETS foosdk ARCHIVE DESTINATION lib)

if(SHARED_LIBRARY)
    install(FILES "${CMAKE_CURRENT_SOURCE_DIR}/${SHARED_LIBRARY}" DESTINATION lib)
endif()

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
