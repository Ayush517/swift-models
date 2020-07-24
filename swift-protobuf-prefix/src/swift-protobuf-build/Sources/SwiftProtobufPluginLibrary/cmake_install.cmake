# Install script for directory: /Users/ayush517/swift-models/swift-protobuf-prefix/src/swift-protobuf/Sources/SwiftProtobufPluginLibrary

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/swift/darwin" TYPE SHARED_LIBRARY FILES "/Users/ayush517/swift-models/swift-protobuf-prefix/src/swift-protobuf-build/Sources/SwiftProtobufPluginLibrary/libSwiftProtobufPluginLibrary.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/swift/darwin/libSwiftProtobufPluginLibrary.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/swift/darwin/libSwiftProtobufPluginLibrary.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/ayush517/swift-models/swift-protobuf-prefix/src/swift-protobuf-build/Sources/SwiftProtobuf"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/swift/darwin/libSwiftProtobufPluginLibrary.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/swift/darwin/libSwiftProtobufPluginLibrary.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/swift/darwin/x86_64" TYPE FILE FILES
    "/Users/ayush517/swift-models/swift-protobuf-prefix/src/swift-protobuf-build/swift/SwiftProtobufPluginLibrary.swiftdoc"
    "/Users/ayush517/swift-models/swift-protobuf-prefix/src/swift-protobuf-build/swift/SwiftProtobufPluginLibrary.swiftmodule"
    )
endif()

