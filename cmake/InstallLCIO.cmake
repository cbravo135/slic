IF( NOT LCIO_TAG )
    SET( LCIO_TAG "v02-07-05" )
ENDIF()

EXTERNALPROJECT_ADD(
    LCIO

    GIT_REPOSITORY "https://github.com/iLCSoft/LCIO"
    GIT_TAG ${LCIO_TAG}
    
    UPDATE_COMMAND ""
    PATCH_COMMAND ""

    SOURCE_DIR "${CMAKE_BINARY_DIR}/lcio"
    CMAKE_ARGS -DINSTALL_DOC=OFF -DBUILD_ROOTDICT=OFF -DCMAKE_INSTALL_PREFIX=${DEPENDENCY_INSTALL_DIR}/lcio
)

SET( LCIO_DIR ${DEPENDENCY_INSTALL_DIR}/lcio CACHE PATH "LCIO install dir" FORCE )
