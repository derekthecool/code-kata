using Xunit;
using StringCalculator_Library;

namespace StringCalculator_Test;

public class StringCalculator_Tests
{
    [Theory]
    [InlineData("1", 1)]
    [InlineData("2", 2)]
    [InlineData("100000000000000", 100000000000000)]
    public void NullString(string input, int answer)
    {
        // Arrange
        StringCalculator SC = new StringCalculator();

        // Act
        long result = SC.Sum(input);

        // Assert
        Assert.Equal(answer, result);
    }
}
