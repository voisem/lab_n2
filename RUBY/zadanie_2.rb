def roman_to_decimal(roman)
    roman_numerals = {
        'I' => 1,
        'V' => 5,
        'X' => 10,
        'L' => 50,
        'C' => 100,
        'D' => 500,
        'M' => 1000
    }

    result = 0
    prev_value = 0
    roman.reverse.each_char do |char|
        value = roman_numerals[char]
        if value < prev_value
            result -= value
        else
            result += value
        end
        prev_value = value
    end
    result
end

puts roman_to_decimal("LXVI")  # Output: 66
puts roman_to_decimal("LXXXI") # Output: 81
