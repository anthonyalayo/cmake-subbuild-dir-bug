block()
  set(VERSION_HASH "6089180ecb704cb2b136777798fa1be303618975")

  cpmaddpackage(
    NAME rapidjson
    OPTIONS
    "RAPIDJSON_BUILD_DOC OFF"
    "RAPIDJSON_BUILD_TESTS OFF"
    "RAPIDJSON_BUILD_EXAMPLES OFF"
    "RAPIDJSON_BUILD_CXX17 ON"
    URL https://github.com/Tencent/rapidjson/archive/${VERSION_HASH}.tar.gz
  )

  # rapidjson misses setting up the build interface include
  if(rapidjson_ADDED)
    target_include_directories(RapidJSON
      INTERFACE $<BUILD_INTERFACE:${rapidjson_SOURCE_DIR}/include>)
  endif()

  add_library(RapidJSON::RapidJSON ALIAS RapidJSON)
endblock()