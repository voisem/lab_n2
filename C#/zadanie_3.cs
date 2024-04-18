using System;

class Program
{
    static void Main()
    {
        string input = Console.ReadLine();
        string[] numbers = input.Split();
        for (int i = 0; i < numbers.Length; i++)
        {
            int sum = 0, product = 1;
            foreach (char c in numbers[i])
            {
                int digit = c - '0';
                sum += digit;
                product *= digit;
            }
            if (sum < product)
            {
                Console.Write($"{i} ");
            }
        }
    }
}
