fun romanToDecimal(roman: String): Int {
    val romanNumerals = mapOf(
        'I' to 1,
        'V' to 5,
        'X' to 10,
        'L' to 50,
        'C' to 100,
        'D' to 500,
        'M' to 1000
    )

    var result = 0
    var prevValue = 0
    for (char in roman.reversed()) {
        val value = romanNumerals[char] ?: 0
        if (value < prevValue) {
            result -= value
        } else {
            result += value
        }
        prevValue = value
    }
    return result
}

fun main() {
    println(romanToDecimal("LXVI"))  // Output: 66
    println(romanToDecimal("LXXXI")) // Output: 81
}
