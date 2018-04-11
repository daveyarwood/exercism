using System;
using System.Text;

public static class ReverseString
{
    public static string Reverse(string input)
    {
        var builder = new StringBuilder();

        for (int i = input.Length - 1; i >= 0; i--)
        {
            builder.Append(input[i]);
        }

        return builder.ToString();
    }
}
