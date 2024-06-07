cmake_minimum_required(VERSION 3.16)

project(robotProject VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(approbotProject
    main.cpp
)

qt_add_qml_module(approbotProject
    URI robotProject
    VERSION 1.0
    QML_FILES
        Main.qml
        QML_FILES
        SOURCES backend.h backend.cpp
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(approbotProject PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.approbotProject
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(approbotProject
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS approbotProject
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
