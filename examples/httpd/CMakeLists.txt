set(HTTPD_SRCS
    httpd.cpp
    )

qt2_wrap_cpp(TARGET httpd SOURCES httpd.cpp)

add_executable(httpd ${HTTPD_SRCS})
add_dependencies(httpd moc_httpd)
target_link_libraries(httpd Qt::Qt2)
