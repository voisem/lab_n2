using System;
using System.Text.RegularExpressions;

class Program
{
    static void Main()
    {
        // ѕример строки из задачи
        string exampleStr = "101tf11flb10001";
        // Ќайти и вывести все совпадающие подстроки
        foreach (var match in FindMatchingSubstrings(exampleStr))
        {
            Console.WriteLine(match);
        }
    }

    static string[] FindMatchingSubstrings(string s)
    {
        // –егул€рное выражение дл€ соответстви€ шаблону 1[0]1, где [0] обозначает один или более нулей
        Regex pattern = new Regex("10+1");
        // Ќайти все совпадени€ шаблона в строке
        MatchCollection matches = pattern.Matches(s);
        string[] result = new string[matches.Count];
        for (int i = 0; i < matches.Count; i++)
        {
            result[i] = matches[i].Value;
        }
        return result;
    }
}
