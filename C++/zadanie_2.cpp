#include <iostream>
#include <unordered_map>

using namespace std;

int romanToDecimal(string roman) {
    unordered_map<char, int> romanNumerals = {
        {'I', 1},
        {'V', 5},
        {'X', 10},
        {'L', 50},
        {'C', 100},
        {'D', 500},
        {'M', 1000}
    };

    int result = 0;
    int prevValue = 0;
    for (int i = roman.size() - 1; i >= 0; i--) {
        int value = romanNumerals[roman[i]];
        if (value < prevValue) {
            result -= value;
        }
        else {
            result += value;
        }
        prevValue = value;
    }
    return result;
}

int main() {
    cout << romanToDecimal("LXVI") << endl;  // Вывод: 66
    cout << romanToDecimal("LXXXI") << endl; // Вывод: 81
    return 0;
}
