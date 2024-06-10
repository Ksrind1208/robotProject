# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\appprojectRobot1_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\appprojectRobot1_autogen.dir\\ParseCache.txt"
  "appprojectRobot1_autogen"
  )
endif()
