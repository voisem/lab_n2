#include <iostream>
#include <regex>
#include <string>

int main() {
    // ������ ������ �� ������
    std::string exampleStr = "101tf11flb10001";
    // ���������� ��������� ��� ������������ ������� 1[0]1, ��� [0] ���������� ���� ��� ����� �����
    std::regex pattern("10+1");

    // ����� ��� ���������� ������� � ������
    auto matches_begin = std::sregex_iterator(exampleStr.begin(), exampleStr.end(), pattern);
    auto matches_end = std::sregex_iterator();

    // ������� ��� ����������� ���������
    for (std::sregex_iterator i = matches_begin; i != matches_end; ++i) {
        std::smatch match = *i;
        std::string match_str = match.str();
        std::cout << match_str << std::endl;
    }

    return 0;
}
