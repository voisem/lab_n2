use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input).unwrap();
    let numbers: Vec<&str> = input.trim().split_whitespace().collect();
    let mut output = Vec::new();
    for (i, &number) in numbers.iter().enumerate() {
        let digits: Vec<i32> = number.chars().map(|d| d.to_digit(10).unwrap() as i32).collect();
        let sum: i32 = digits.iter().sum();
        let product: i32 = digits.iter().product();
        if sum < product {
            output.push(i);
        }
    }
    for index in output {
        print!("{} ", index);
    }
}
