# Dot source the file to be tested
# The function inside named Sum will be used
BeforeAll {
  . ./StringCalculator.ps1
}

# Describe: this is the description for a group of tests
Describe "Tests for StringCalculator.ps1 function Sum" {

  # Context: This is the description for a single test
  Context "Input length = 0" {
    # It: Is the thing to be tested
    # Pipe results into 'Should' and use the -Be param to assert
    It "String length of 0" {
      Sum -StringToSum "" | Should -Be 0
    }
  }

  Context "Input is a single number, no delimiters" {
    It "One character length numbers" -TestCases @(
      @{ StringToSum = '0' ; Expected = 0 }
    ) {
      param ($StringToSum, $Expected)

      Sum -StringToSum $StringToSum | Should -Be $Expected
    }
  }
}
