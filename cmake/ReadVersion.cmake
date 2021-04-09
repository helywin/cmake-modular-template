file(READ ${CMAKE_SOURCE_DIR}/VERSION VERSION_STR)
string(STRIP ${VERSION_STR} VERSION_STR)
message(STATUS "Current general version number: ${VERSION_STR}")
string(REPLACE "." ";" VERSION_STR_LIST ${VERSION_STR})
list(LENGTH VERSION_STR_LIST LEN)
if (NOT LEN EQUAL 4)
    message(FATAL_ERROR "version number not in correct format")
endif ()
set(GENERAL_VERSION ${VERSION_STR})
list(GET VERSION_STR_LIST 0 GENERAL_VERSION_MAJOR)
list(GET VERSION_STR_LIST 1 GENERAL_VERSION_MINOR)
list(GET VERSION_STR_LIST 2 GENERAL_VERSION_PATCH)
list(GET VERSION_STR_LIST 3 GENERAL_VERSION_TWEAK)