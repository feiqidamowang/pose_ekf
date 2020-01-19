find_path(GeographicLib_INCLUDE_DIRS 
    GeographicLib/Geoid.hpp GeographicLib/MagneticModel.hpp GeographicLib/LocalCartesian.hpp 
    PATHS /usr/local/include)
if(NOT GeographicLib_INCLUDE_DIRS)
    message(FATAL_ERROR "Could not find GeographicLib/xxx.h")
endif()

find_library(GeographicLib_LIBRARIES Geographic PATHS /usr/local/lib)
if(NOT GeographicLib_LIBRARIES)
    message(FATAL_ERROR "Could not find libgeographic.so")
endif()    