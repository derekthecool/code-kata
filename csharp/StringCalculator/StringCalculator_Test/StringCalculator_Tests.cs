using Xunit;
using StringCalculator_Library;

namespace StringCalculator_Test;

public class StringCalculator_Tests
{
    [Fact]
    public void NullString()
    {
        // Act
        StringCalculator SC = new StringCalculator();

        // Arrange
        int result = SC.Sum("");

        // Assert
        Assert.Equal(0, result);
    }
}
