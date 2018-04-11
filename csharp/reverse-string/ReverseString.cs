using System;
using System.Text;

public static class ReverseString
{
    public static string Reverse(string input)
    {
        var builder = new StringBuilder();
        foreach (char c in input) builder.Insert(0, c);
        return builder.ToString();
    }
}
