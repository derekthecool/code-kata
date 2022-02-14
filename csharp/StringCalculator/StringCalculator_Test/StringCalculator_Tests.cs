using Xunit;
using StringCalculator_Library;

namespace StringCalculator_Test;

public class StringCalculator_Tests
{
    [Theory]
    [InlineData("1")]
    public void SumTest(string input)
    {
        // Act
        StringCalculator SC = new StringCalculator();

        // Arrange
        int result = SC.Sum(input);

        // Assert
        Assert.Equal(0, result);
    }
}
