#C Project
cmake_minimum_required(VERSION 3.10.2)

#Set debug mode
set(CMAKE_BUILD_TYPE Debug)

#Export compile commands json file, this is needed for clangd coc.nvim autocomplete
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

#Set variable to use for project name and main file
set(ProjectBasename "StringCalculator")

#Set project name, description, and language
project(${ProjectBasename}
    LANGUAGES C
    DESCRIPTION "String Calculator code kata"
    )

#Set static library
add_library(${ProjectBasename} STATIC
    ${ProjectBasename}.c
    ${ProjectBasename}.h
    )

# Enable Cmake built-in unit testing, needs to be declared once for entire project
include(CTest)

# Add test application
add_executable(${ProjectBasename}_test
    ${ProjectBasename}_test.c
    )

# Link the static library to the test application
target_link_libraries(${ProjectBasename}_test ${ProjectBasename})

#Use the newest C standard (C11)
set_property(TARGET ${ProjectBasename}      C_STANDARD 11)
set_property(TARGET ${ProjectBasename}_test C_STANDARD 11)

# Tests can pass or fail in two ways:
# 1. Default method is to check the return code.
#
#    Return value of:             0 == pass
#    Return value of: anything else == fail
#
# 2. You can read the output and filter with a regular expression. Note that
#    stderr and stdout will all be checked, not just stdout.
#
#    PASS_REGULAR_EXPRESSION: if output matches, the test will pass
#    FAIL_REGULAR_EXPRESSION: if output matches, the test will fail
#
#  ____  _                 _     _   ____
# / ___|| |__   ___  _   _| | __| | |  _ \ __ _ ___ ___
# \___ \| '_ \ / _ \| | | | |/ _` | | |_) / _` / __/ __|
#  ___) | | | | (_) | |_| | | (_| | |  __/ (_| \__ \__ \
# |____/|_| |_|\___/ \__,_|_|\__,_| |_|   \__,_|___/___/
#--------------------------------
add_test(EmptyString_ShouldPass ${ProjectBasename}_test "")

# Tests that are supposed to fail (return value != 0)
#  ____  _                 _     _   _____     _ _ 
# / ___|| |__   ___  _   _| | __| | |  ___|_ _(_) |
# \___ \| '_ \ / _ \| | | | |/ _` | | |_ / _` | | |
#  ___) | | | | (_) | |_| | | (_| | |  _| (_| | | |
# |____/|_| |_|\___/ \__,_|_|\__,_| |_|  \__,_|_|_|
#--------------------------------

#add_test(Test1_ShouldFail ${ProjectBasename}_test "")
