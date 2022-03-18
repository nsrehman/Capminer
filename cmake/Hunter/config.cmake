hunter_config(CURL VERSION ${HUNTER_CURL_VERSION} CMAKE_ARGS HTTP_ONLY=ON CMAKE_USE_OPENSSL=ON CMAKE_USE_LIBSSH2=OFF CURL_CA_PATH=none)
hunter_config(Boost VERSION 1.70.0-p0)

hunter_config(ethash VERSION 1.0.0
    URL https://github.com/CapMiner/capminer-ethash/archive/1.0.0.tar.gz
    SHA1 239f32aed05544eb30f30045392a3224ef80a2d6
)