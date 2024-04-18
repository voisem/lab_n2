using System;
using System.Text.RegularExpressions;

class Program
{
    static void Main()
    {
        // ������ ������ �� ������
        string exampleStr = "101tf11flb10001";
        // ����� � ������� ��� ����������� ���������
        foreach (var match in FindMatchingSubstrings(exampleStr))
        {
            Console.WriteLine(match);
        }
    }

    static string[] FindMatchingSubstrings(string s)
    {
        // ���������� ��������� ��� ������������ ������� 1[0]1, ��� [0] ���������� ���� ��� ����� �����
        Regex pattern = new Regex("10+1");
        // ����� ��� ���������� ������� � ������
        MatchCollection matches = pattern.Matches(s);
        string[] result = new string[matches.Count];
        for (int i = 0; i < matches.Count; i++)
        {
            result[i] = matches[i].Value;
        }
        return result;
    }
}
