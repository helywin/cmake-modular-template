if (CMAKE_BUILD_TYPE MATCHES Debug)
    set(PROJECT_BINARY_DIR ${PROJECT_SOURCE_DIR}/debug)
    set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/debug)
    add_definitions(-DDEBUG)
elseif (CMAKE_BUILD_TYPE MATCHES Release)
    set(PROJECT_BINARY_DIR ${PROJECT_SOURCE_DIR}/release)
    set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/release)
endif ()

set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR})