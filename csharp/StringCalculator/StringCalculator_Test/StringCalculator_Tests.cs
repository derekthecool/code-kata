using Xunit;
using StringCalculator_Library;

namespace StringCalculator_Test;

public class StringCalculator_Tests
{
    [Theory]
    [InlineData("", 0)]
    [InlineData("1", 1)]
    [InlineData("2", 2)]
    [InlineData("3", 3)]
    [InlineData("4", 4)]
    [InlineData("5", 5)]
    [InlineData("6", 6)]
    public void NullString(string inputString, int expectedSum)
    {
        // Act
        StringCalculator SC = new StringCalculator();

        // Arrange
        int result = SC.Sum(inputString);

        // Assert
        Assert.Equal(expectedSum, result);
    }
}
