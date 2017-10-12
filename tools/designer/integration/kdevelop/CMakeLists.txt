set(INTEGRATION_SRCS kdewidgets.cpp)

qt2_wrap_moc(INTEGRATION_SRCS
    SOURCES
    kdewidgets.h
    )

add_library(integration OBJECT ${INTEGRATION_SRCS})

target_include_directories(integration
        PRIVATE
            ${PROJECT_SOURCE_DIR}/include
            ../../shared
        )
