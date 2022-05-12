using Xunit;
using FizzBuzz;

namespace FizzBuzz.Tests;

public class TestFizzBuzz
{
    [Fact]
    public void FB()
    {
      string output = FizzBuzzCalculator.FizzBuzz(0);

      Assert.Equal(output, "0");
    }
}
