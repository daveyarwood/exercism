using System;

public static class IntExtensions
{
    public static bool DivisibleBy(this int x, int factor)
    {
        return x % factor == 0;
    }
}

public static class Leap
{
    public static bool IsLeapYear(int year)
    {
        return year.DivisibleBy(400) ||
               (year.DivisibleBy(4) && !year.DivisibleBy(100));
    }
}
