namespace StringCalculator_Library;
public class StringCalculator
{
    public int Sum(string input)
    {
        // Check for a blank string first
        if (string.IsNullOrEmpty(input))
        {
            return 0;
        }

        // Parse the string as a number
        return Convert.ToInt32(input);
    }
}
