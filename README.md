# Code Katas For TDD (Test Driven Development)

## Testing Setup For My Favorite Programming Languages

### C

#### Testing interface: [ctest](https://gitlab.kitware.com/cmake/community/-/wikis/doc/ctest/Testing-With-CTest)

Built in tool from cmake, it comes with a cmake install

### Example Setup

Ctest tests are set in the CMakeLists.txt project file. Below is an example of
how it set things up. The most important step the `include(CTest)`.

Then you have to make your own test application if you are testing a library. If
you are just testing an executable then you may not need a test app.

```CMakeLists.txt
# Enable Cmake built-in unit testing, needs to be declared once for entire project
include(CTest)

# Add test application
add_executable(${ProjectBasename}_test
    ${ProjectBasename}_test.c
    )

# Link the static library to the test application
target_link_libraries(${ProjectBasename}_test ${ProjectBasename})

#Use the newest C standard (C11)
set_property(TARGET ${ProjectBasename}      PROPERTY C_STANDARD 11)
set_property(TARGET ${ProjectBasename}_test PROPERTY C_STANDARD 11)

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
add_test(EmptyString_ShouldPass ${ProjectBasename}_test "" 0)

# Tests that are supposed to fail (return value != 0)
add_test(Test1_ShouldFail ${ProjectBasename}_test "" -1234)
```

#### Assertions

Normally only the exit today matters to CTest, but you can configure it to use a
regular expression instead

### C#

### Bash

### PowerShell

#### Testing Interface: [pester](https://github.com/pester/Pester)

This is a PowerShell module and works with nearly every version of PowerShell,
including 7.

To install the latest version which will overwrite old use this command

```powershell
Install-Module -Name Pester -Force
```

### Lua

## TDD Katas

[GitHub link](https://github.com/garora/TDD-Katas/blob/main/src/README.md#the-fizzbuzz-kata)
for source of tests.
