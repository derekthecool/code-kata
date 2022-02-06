using Xunit;
using StringCalculator_Library;

namespace StringCalculator_Test;

public class UnitTest1
{
    [Fact]
    public void NullString()
    {
        int dog = Class1.Sum("", "");

        Assert.Equal(0, dog);
    }
}
