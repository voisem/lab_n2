package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	input := scanner.Text()
	numbers := strings.Split(input, " ")
	var outputIndices []int

	for index, number := range numbers {
		digits := strings.Split(number, "")
		sumDigits, productDigits := 0, 1
		for _, digit := range digits {
			d, err := strconv.Atoi(digit)
			if err != nil {
				fmt.Println("Ошибка", err)
				return
			}
			sumDigits += d
			productDigits *= d
		}
		if sumDigits < productDigits {
			outputIndices = append(outputIndices, index)
		}
	}

	for _, idx := range outputIndices {
		fmt.Print(idx, " ")
	}
	fmt.Println() // Для переноса строки после вывода
}