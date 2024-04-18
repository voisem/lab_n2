func romanToDecimal(_ roman: String) -> Int {
    let romanNumerals: [Character: Int] = [
        "I": 1,
        "V": 5,
        "X": 10,
        "L": 50,
        "C": 100,
        "D": 500,
        "M": 1000
    ]

    var result = 0
    var prevValue = 0
    for char in roman.reversed() {
        guard let value = romanNumerals[char] else { return 0 }
        if value < prevValue {
            result -= value
        } else {
            result += value
        }
        prevValue = value
    }
    return result
}

print(romanToDecimal("LXVI"))  // Output: 66
print(romanToDecimal("LXXXI")) // Output: 81
