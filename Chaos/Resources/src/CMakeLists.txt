
add_library(
    lorenz
    STATIC
    lorenz.c
)

set_target_properties(lorenz
    PROPERTIES
    ARCHIVE_OUTPUT_DIRECTORY ${OPENMODELICA_LIBRARY_DIR}
)
