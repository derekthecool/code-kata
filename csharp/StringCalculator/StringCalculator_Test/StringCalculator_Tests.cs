using Xunit;
using StringCalculator_Library;

namespace StringCalculator_Test;

public class StringCalculator_Tests
{
    [Theory]
    [InlineData("1", 1)]
    public void SumTest(string input, int actual)
    {
        // Act
        StringCalculator SC = new StringCalculator();

        // Arrange
        int? result = SC.Sum(input);

        // Assert
        Assert.Equal(actual, result);
    }
}
