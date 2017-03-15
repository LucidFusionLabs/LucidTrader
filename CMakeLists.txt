# $Id: CMakeLists.txt 1320 2014-10-26 08:12:52Z justin $

if(LFL_MOBILE)
  return()
endif()

lfl_project(market)
PROTOBUF_GENERATE_CPP(PROTO_SRC PROTO_HDR market.proto)
add_executable(market market.cpp ${PROTO_SRC} ../core/web/crawler.pb.cc)
target_include_directories(market PUBLIC ${CMAKE_CURRENT_BINARY_DIR})
target_link_libraries(market PUBLIC ${LFL_APP_LIB} ${LFL_APP_FRAMEWORK} ${LFL_APP_GRAPHICS}
                      ${LFL_APP_AUDIO} app_null_camera app_null_matrix app_null_fft
                      app_simple_resampler app_simple_loader ${LFL_APP_CONVERT}
                      app_libpng_png app_libjpeg_jpeg app_null_gif app_null_ogg app_null_css app_null_ttf
                      app_null_ssl app_null_js app_null_tu app_protobuf_proto 
                      ${BOX2D_LIB} ${PROTOBUF_LIBRARY} ${LFL_APP_OS})
