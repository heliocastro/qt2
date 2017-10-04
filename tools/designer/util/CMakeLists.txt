set(QUTIL_SRCS qprocess.cpp)

qt2_wrap_moc(QUTIL_SRCS
    SOURCES qprocess.h)

if(UNIX)
    list(APPEND QUTIL_SRCS qprocess_unix.cpp)
elseif(MSVC)
    list(APPEND QUTIL_SRCS qprocess_win.cpp)
endif()

add_library(qutil OBJECT ${QUTIL_SRCS})
