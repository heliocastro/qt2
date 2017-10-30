set(HTTPD_SRCS
    httpd.cpp
    )

qt2_wrap_cpp(HTTPD_SRCS SOURCES httpd.cpp)

add_executable(httpd ${HTTPD_SRCS})
target_link_libraries(httpd Qt::Qt2)
