using System;
public class Solution
{
    int max = 0, start = 0, end = 0;
    public bool IsPalindrome(string s, int i, int j)
    {
        while (i < j)
        {
            char ch1 = s[i];
            char ch2 = s[j];
            if (ch1 != ch2)
                return false;
            i++;
            j--;
        }
        return true;
    }
    public string LongestPalindrome(string s)
    {
        int n = s.Length;

        for (int i = 0; i < n; i++)
        {
            for (int j = i; j < n; j++)
            {
                if (IsPalindrome(s, i, j))
                {
                    if ((j - i + 1) > max)
                    {
                        max = j - i + 1;
                        start = i;
                        end = j;
                    }
                }
            }
        }
        return s.Substring(start, end - start + 1);
    }
}
public class Program
{
    public static void Main(string[] args)
    {
        Solution solution = new Solution();
        string input = "babad";
        string longestPalindrome = solution.LongestPalindrome(input);
    Console.WriteLine("Longest Palindromic Substring: " + longestPalindrome);
    }
}
