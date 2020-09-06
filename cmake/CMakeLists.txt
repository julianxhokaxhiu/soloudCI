include(ExternalProject)

set(SOLOUD_VERSION "1.0.0")

ExternalProject_Add(
	soloud
	URL								"https://github.com/julianxhokaxhiu/soloudCI/releases/download/${SOLOUD_VERSION}/soloud-v${SOLOUD_VERSION}_Release.zip"
	INSTALL_DIR		    "${CMAKE_BINARY_DIR}/vendor"
	CONFIGURE_COMMAND	""
	BUILD_COMMAND			""
	INSTALL_COMMAND		"${CMAKE_COMMAND}" -E copy_directory "<SOURCE_DIR>" "<INSTALL_DIR>"
)
