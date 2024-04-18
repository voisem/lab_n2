#include <iostream>
#include <sstream>
#include <vector>

int main() {
    std::string line;
    std::getline(std::cin, line);
    std::istringstream iss(line);
    std::string number;
    std::vector<int> output;
    int index = 0;
    while (iss >> number) {
        int sum = 0, product = 1;
        for (char digit : number) {
            int d = digit - '0';
            sum += d;
            product *= d;
        }
        if (sum < product) {
            output.push_back(index);
        }
        index++;
    }
    for (int idx : output) {
        std::cout << idx << " ";
    }
}
