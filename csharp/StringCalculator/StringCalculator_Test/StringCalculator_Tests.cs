using Xunit; 
using StringCalculator_Library;

namespace StringCalculator_Test;

public class StringCalculator_Tests
{
    [Theory]
    [InlineData("", 1)]
    public void SumTest(string input, int actual)
    {
        // Act, Arrange
        int? result = StringCalculator.Sum("");

        // Assert
        Assert.Equal(actual, result);
    }
}
