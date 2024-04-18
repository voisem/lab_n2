fn roman_to_decimal(roman: &str) -> i32 {
    let roman_numerals: Vec<(char, i32)> = vec![
        ('I', 1),
        ('V', 5),
        ('X', 10),
        ('L', 50),
        ('C', 100),
        ('D', 500),
        ('M', 1000)
    ];

    let mut result = 0;
    let mut prev_value = 0;
    for c in roman.chars().rev() {
        let value = roman_numerals.iter().find(|&&(r, _)| r == c).unwrap().1;
        if value < prev_value {
            result -= value;
        } else {
            result += value;
        }
        prev_value = value;
    }
    result
}

fn main() {
    println!("{}", roman_to_decimal("LXVI"));  // Output: 66
    println!("{}", roman_to_decimal("LXXXI")); // Output: 81
}
