const input = prompt().split(" ");
const output = [];
for (let i = 0; i < input.length; i++) {
    const number = input[i];
    const digits = number.split("").map(Number);
    const sum = digits.reduce((a, b) => a + b, 0);
    const product = digits.reduce((a, b) => a * b, 1);
    if (sum < product) {
        output.push(i);
    }
}
console.log(output.join(" "));
