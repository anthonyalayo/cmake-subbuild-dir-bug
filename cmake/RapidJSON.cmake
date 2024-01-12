block()
  set(VERSION_HASH "6089180ecb704cb2b136777798fa1be303618975")

  cpmaddpackage(
    NAME rapidjson
    GITHUB_REPOSITORY "Tencent/rapidjson"
    GIT_TAG ${VERSION_HASH}
    OPTIONS
    "RAPIDJSON_BUILD_DOC OFF"
    "RAPIDJSON_BUILD_TESTS OFF"
    "RAPIDJSON_BUILD_EXAMPLES OFF"
    "RAPIDJSON_BUILD_CXX17 ON"
  )

  # rapidjson misses setting up the build interface include
  if(rapidjson_ADDED)
    target_include_directories(RapidJSON
      INTERFACE $<BUILD_INTERFACE:${rapidjson_SOURCE_DIR}/include>)
  endif()

  add_library(RapidJSON::RapidJSON ALIAS RapidJSON)
endblock()