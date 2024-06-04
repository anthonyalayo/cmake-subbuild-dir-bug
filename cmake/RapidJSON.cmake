block()
  set(VERSION_HASH "6089180ecb704cb2b136777798fa1be303618975")

  FetchContent_Declare(
    rapidjson
    GIT_REPOSITORY "https://github.com/Tencent/rapidjson"
    GIT_TAG ${VERSION_HASH}
  )

  set(RAPIDJSON_BUILD_DOC OFF)
  set(RAPIDJSON_BUILD_TESTS OFF)
  set(RAPIDJSON_BUILD_EXAMPLES OFF)
  set(RAPIDJSON_BUILD_CXX17 ON)

  FetchContent_MakeAvailable(rapidjson)

  # rapidjson misses setting up the build interface include
  target_include_directories(RapidJSON
    INTERFACE $<BUILD_INTERFACE:${rapidjson_SOURCE_DIR}/include>)

  add_library(RapidJSON::RapidJSON ALIAS RapidJSON)
endblock()