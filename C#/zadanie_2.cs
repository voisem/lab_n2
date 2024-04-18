using System;
using System.Collections.Generic;

class Program
{
    // Функция для преобразования римских чисел в десятичные
    static int RomanToDecimal(string roman)
    {
        // Словарь, содержащий соответствие римских цифр и их десятичных значений
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
        // Проход по римскому числу с конца
        for (int i = roman.Length - 1; i >= 0; i--)
        {
            int value = romanNumerals[roman[i]];
            // Если текущее значение меньше предыдущего, вычитаем его
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
        // Примеры преобразования римских чисел в десятичные и вывод результата
        Console.WriteLine(RomanToDecimal("LXVI"));  // Вывод: 66
        Console.WriteLine(RomanToDecimal("LXXXI")); // Вывод: 81
    }
}
