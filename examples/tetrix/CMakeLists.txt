set(TETRIX_SRCS
    gtetrix.cpp
    qdragapp.cpp
    qtetrix.cpp
    qtetrixb.cpp
    tetrix.cpp
    tpiece.cpp
    )

set(TETRIX_HEADERS
    gtetrix.h
    qdragapp.h
    qtetrix.h
    qtetrixb.h
    tpiece.h
    )

qt2_wrap_moc(TETRIX_SRCS SOURCES ${TETRIX_HEADERS})
qt2_wrap_cpp(TARGET tetrix SOURCES qdragapp.cpp)

add_executable(tetrix ${TETRIX_SRCS})
target_link_libraries(tetrix Qt2)
