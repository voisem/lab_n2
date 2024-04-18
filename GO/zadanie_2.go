package main

import "fmt"

func romanToDecimal(roman string) int {
    // Словарь, содержащий соответствие римских цифр и их десятичных значений
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
        // Если текущее значение больше предыдущего, вычитаем удвоенное значение предыдущего из текущего
        if i > 0 && romanNumerals[roman[i]] > romanNumerals[roman[i-1]] {
            result += romanNumerals[roman[i]] - 2*romanNumerals[roman[i-1]]
        } else {
            result += romanNumerals[roman[i]]
        }
    }
    return result
}

func main() {
    // Примеры преобразования римских чисел в десятичные и вывод результата
    fmt.Println(romanToDecimal("LXVI"))  // Вывод: 66
    fmt.Println(romanToDecimal("LXXXI")) // Вывод: 81
}
