input_numbers = input().split()
output_indices = []
for index, number in enumerate(input_numbers):
    digits = [int(digit) for digit in number]
    sum_digits = sum(digits)
    product_digits = 1
    for digit in digits:
        product_digits *= digit
    if sum_digits < product_digits:
        output_indices.append(index)
print(" ".join(map(str, output_indices)))
