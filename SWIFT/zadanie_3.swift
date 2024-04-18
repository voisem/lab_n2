import Foundation

if let input = readLine() {
    let numbers = input.split(separator: " ")
    var output: [Int] = []
    for (index, number) in numbers.enumerated() {
        let digits = number.compactMap { Int(String($0)) }
        let sum = digits.reduce(0, +)
        let product = digits.reduce(1, *)
        if sum < product {
            output.append(index)
        }
    }
    print(output.map(String.init).joined(separator: " "))
}
