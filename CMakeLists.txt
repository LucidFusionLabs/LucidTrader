# $Id: CMakeLists.txt 1320 2014-10-26 08:12:52Z justin $

lfl_project(market)
add_definitions(${LFL_APP_DEF})
include_directories(${LFL_APP_INCLUDE} ${PROTOBUF_INCLUDE_DIR} ${CMAKE_CURRENT_BINARY_DIR})
PROTOBUF_GENERATE_CPP(PROTO_SRC PROTO_HDR market.proto)
add_executable(market market.cpp ${PROTO_SRC} ../core/web/crawler.pb.cc)
target_link_libraries(market ${LFL_APP_LIB} ${LFL_APP_FRAMEWORK} ${LFL_APP_GRAPHICS}
                      ${LFL_APP_AUDIO} app_null_camera app_null_matrix app_null_fft
                      app_simple_resampler app_simple_loader ${LFL_APP_CONVERT}
                      app_libpng_png app_libjpeg_jpeg app_null_gif app_null_ogg app_null_css app_null_ttf
                      app_null_ssl app_null_js app_null_tu app_protobuf_proto 
                      ${BOX2D_LIB} ${PROTOBUF_LIBRARY} ${LFL_APP_OS})
