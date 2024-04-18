#include <iostream>
#include <regex>
#include <string>

int main() {
    // ѕример строки из задачи
    std::string exampleStr = "101tf11flb10001";
    // –егул€рное выражение дл€ соответстви€ шаблону 1[0]1, где [0] обозначает один или более нулей
    std::regex pattern("10+1");

    // Ќайти все совпадени€ шаблона в строке
    auto matches_begin = std::sregex_iterator(exampleStr.begin(), exampleStr.end(), pattern);
    auto matches_end = std::sregex_iterator();

    // ¬ывести все совпадающие подстроки
    for (std::sregex_iterator i = matches_begin; i != matches_end; ++i) {
        std::smatch match = *i;
        std::string match_str = match.str();
        std::cout << match_str << std::endl;
    }

    return 0;
}
