
add_library(
    lorenz
    STATIC
    lorenz.c
    lorenz.f
    lorenz.f90
)

set_target_properties(lorenz
    PROPERTIES
    ARCHIVE_OUTPUT_DIRECTORY ${OPENMODELICA_LIBRARY_DIR}
)
