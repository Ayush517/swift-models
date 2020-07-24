
if(NOT "/Users/ayush517/swift-models/swift-protobuf-prefix/src/swift-protobuf-stamp/swift-protobuf-gitinfo.txt" IS_NEWER_THAN "/Users/ayush517/swift-models/swift-protobuf-prefix/src/swift-protobuf-stamp/swift-protobuf-gitclone-lastrun.txt")
  message(STATUS "Avoiding repeated git clone, stamp file is up to date: '/Users/ayush517/swift-models/swift-protobuf-prefix/src/swift-protobuf-stamp/swift-protobuf-gitclone-lastrun.txt'")
  return()
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E rm -rf "/Users/ayush517/swift-models/swift-protobuf-prefix/src/swift-protobuf"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: '/Users/ayush517/swift-models/swift-protobuf-prefix/src/swift-protobuf'")
endif()

# try the clone 3 times in case there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
while(error_code AND number_of_tries LESS 3)
  execute_process(
    COMMAND "/usr/local/bin/git"  clone --no-checkout "git://github.com/apple/swift-protobuf.git" "swift-protobuf"
    WORKING_DIRECTORY "/Users/ayush517/swift-models/swift-protobuf-prefix/src"
    RESULT_VARIABLE error_code
    )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(STATUS "Had to git clone more than once:
          ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'git://github.com/apple/swift-protobuf.git'")
endif()

execute_process(
  COMMAND "/usr/local/bin/git"  checkout master --
  WORKING_DIRECTORY "/Users/ayush517/swift-models/swift-protobuf-prefix/src/swift-protobuf"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: 'master'")
endif()

set(init_submodules TRUE)
if(init_submodules)
  execute_process(
    COMMAND "/usr/local/bin/git"  submodule update --recursive --init 
    WORKING_DIRECTORY "/Users/ayush517/swift-models/swift-protobuf-prefix/src/swift-protobuf"
    RESULT_VARIABLE error_code
    )
endif()
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: '/Users/ayush517/swift-models/swift-protobuf-prefix/src/swift-protobuf'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy
    "/Users/ayush517/swift-models/swift-protobuf-prefix/src/swift-protobuf-stamp/swift-protobuf-gitinfo.txt"
    "/Users/ayush517/swift-models/swift-protobuf-prefix/src/swift-protobuf-stamp/swift-protobuf-gitclone-lastrun.txt"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: '/Users/ayush517/swift-models/swift-protobuf-prefix/src/swift-protobuf-stamp/swift-protobuf-gitclone-lastrun.txt'")
endif()

