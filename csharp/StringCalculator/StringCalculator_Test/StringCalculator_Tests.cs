using Xunit;
using StringCalculator_Library;

namespace StringCalculator_Test;

public class StringCalculator_Tests
{
    [Theory]
    [InlineData("", 0)]
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
