#   NACL_FOUND - system has NaCl
#   NACL_INCLUDE_DIR - the NaCl include directory
#   NACL_LIBRARIES - the NaCl libraries

include(FindPackageHandleStandardArgs)

if (NACL_INCLUDE_DIR AND NACL_LIBRARIES)
    set(NACL_FOUND TRUE)
else(NACL_INCLUDE_DIR AND NACL_LIBRARIES)

find_path(NACL_INCLUDE_DIR sodium.h
    /usr/include
    /usr/local/include
)

find_library(NACL_LIBRARIES names libsodium.so
    PATHS
    /usr/lib
    /usr/lib64
    /usr/local/lib
    /usr/local/lib64
)

find_package_handle_standard_args(NACL NACL_INCLUDE_DIR NACL_LIBRARIES)

MARK_AS_ADVANCED(NACL_INCLUDE_DIR NACL_LIBRARIES)

endif(NACL_INCLUDE_DIR AND NACL_LIBRARIES)
