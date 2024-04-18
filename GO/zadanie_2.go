package main

import "fmt"

func romanToDecimal(roman string) int {
    // �������, ���������� ������������ ������� ���� � �� ���������� ��������
    romanNumerals := map[byte]int{
        'I': 1,
        'V': 5,
        'X': 10,
        'L': 50,
        'C': 100,
        'D': 500,
        'M': 1000,
    }

    result := 0
    for i := 0; i < len(roman); i++ {
        // ���� ������� �������� ������ �����������, �������� ��������� �������� ����������� �� ��������
        if i > 0 && romanNumerals[roman[i]] > romanNumerals[roman[i-1]] {
            result += romanNumerals[roman[i]] - 2*romanNumerals[roman[i-1]]
        } else {
            result += romanNumerals[roman[i]]
        }
    }
    return result
}

func main() {
    // ������� �������������� ������� ����� � ���������� � ����� ����������
    fmt.Println(romanToDecimal("LXVI"))  // �����: 66
    fmt.Println(romanToDecimal("LXXXI")) // �����: 81
}
