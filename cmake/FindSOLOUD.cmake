include(FindPackageHandleStandardArgs)

if (NOT SOLOUD_FOUND)
	find_library(
		SOLOUD_LIBRARY
		soloud_static_x86
		PATH_SUFFIXES
		lib/soloud
	)

	find_path(
		SOLOUD_INCLUDE_DIR
		soloud
		PATH_SUFFIXES
		include
	)

	add_library(SOLOUD::SOLOUD STATIC IMPORTED)

	set_target_properties(
		SOLOUD::SOLOUD
		PROPERTIES
		IMPORTED_LOCATION
		"${SOLOUD_LIBRARY}"
		INTERFACE_INCLUDE_DIRECTORIES
		"${SOLOUD_INCLUDE_DIRS}"
	)

	find_package_handle_standard_args(SOLOUD DEFAULT_MSG SOLOUD_LIBRARY SOLOUD_INCLUDE_DIR)
endif()
