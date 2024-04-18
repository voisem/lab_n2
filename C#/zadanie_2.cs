using System;
using System.Collections.Generic;

class Program
{
    // ������� ��� �������������� ������� ����� � ����������
    static int RomanToDecimal(string roman)
    {
        // �������, ���������� ������������ ������� ���� � �� ���������� ��������
        Dictionary<char, int> romanNumerals = new Dictionary<char, int>
        {
            {'I', 1},
            {'V', 5},
            {'X', 10},
            {'L', 50},
            {'C', 100},
            {'D', 500},
            {'M', 1000}
        };

        int result = 0;
        int prevValue = 0;
        // ������ �� �������� ����� � �����
        for (int i = roman.Length - 1; i >= 0; i--)
        {
            int value = romanNumerals[roman[i]];
            // ���� ������� �������� ������ �����������, �������� ���
            if (value < prevValue)
                result -= value;
            else
                result += value;
            prevValue = value;
        }
        return result;
    }

    static void Main(string[] args)
    {
        // ������� �������������� ������� ����� � ���������� � ����� ����������
        Console.WriteLine(RomanToDecimal("LXVI"));  // �����: 66
        Console.WriteLine(RomanToDecimal("LXXXI")); // �����: 81
    }
}
