package main

import (
    "fmt"
    "regexp"
)

func findMatchingSubstrings(s string) []string {
    // ���������� ��������� ��� ������������ ������� 1[0]1, ��� [0] ���������� ���� ��� ����� �����
    pattern := regexp.MustCompile("10+1")
    // ����� ��� ���������� ������� � ������
    matches := pattern.FindAllString(s, -1)
    return matches
}

func main() {
    // ������ ������ �� ������
    exampleStr := "101tf11flb10001"
    // ����� � ������� ��� ����������� ���������
    matchingSubstrings := findMatchingSubstrings(exampleStr)
    fmt.Println(matchingSubstrings)
}
