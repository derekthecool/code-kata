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

### String Calculator

1. Create a String calculator with a method int Add(string numbers)
  1. The method can take 0, 1, or 2 numbers and will return their sum.
  2. An empty string will return 0.
  3. Example inputs: `“”, “1”, or “1,2”`
  4. Start with the simplest test case of an empty string. Then 1 number. Then 2
     numbers.
  5. Remember to solve things as simply as possible, forcing yourself to write
     tests for things you didn’t think about.
  6. Remember to refactor after each passing test.
2. Allow the Add method to handle an unknown number of arguments/numbers.
3. Allow the Add method to handle new lines between numbers (instead of commas).
  1. Example: `“1\n2,3”` should return 6.
  2. Example: `“1,\n”` is invalid, but you don’t need a test for this case.
  3. Only test correct inputs  there is no need to deal with invalid inputs for
     this kata.
4. Calling Add with a negative number will throw an exception “Negatives not
   allowed: “ listing all negative numbers that were in the list of numbers.
  1. Example `“-1,2”` throws “Negatives not allowed: -1”
  2. Example `“2,-4,3,-5”` throws “Negatives not allowed: -4,-5”
5. Numbers bigger than 1000 should be ignored.
  * Example: `“1001,2”` returns 2
6. Allow the Add method to handle a different delimiter:
  1. To change the delimiter, the beginning of the string will contain a
     separate line that looks like this: `“//[delimiter]\n[numbers]”`
  2. Example: `“//;\n1;2”` should return 3 (the delimiter is ;)
  3. This first line is optional; all existing scenarios (using , or \n) should
     work as before.
