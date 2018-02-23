find_path(
    WTL_INCLUDE_DIRS
    NAMES atlapp.h
    DOC "WTL include directories"
)

include(FindPackageHandleStandardArgs)

find_package_handle_standard_args(
    WTL REQUIRED_VARS WTL_INCLUDE_DIRS
)

mark_as_advanced(WTL_INCLUDE_DIRS)
