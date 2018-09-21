_find_package(${ARGS})

if(TARGET sfml-window AND TARGET sfml-graphics)
        find_package(Freetype REQUIRED)
        find_package(OpenGL REQUIRED COMPONENTS GLX)

        set_property(TARGET sfml-window APPEND PROPERTY INTERFACE_LINK_LIBRARIES "OpenGL::GLX")
        set_property(TARGET sfml-graphics APPEND PROPERTY INTERFACE_LINK_LIBRARIES "Freetype::Freetype")
endif()
