import Foundation

func findMatchingSubstrings(s: String) -> [String] {
    // ���������� ��������� ��� ������������ ������� 1[0]1, ��� [0] ���������� ���� ��� ����� �����
    let pattern = "10+1"
    let regex = try! NSRegularExpression(pattern: pattern)
    let matches = regex.matches(in: s, range: NSRange(s.startIndex..., in: s))
    return matches.map {
        String(s[Range($0.range, in: s)!])
    }
}

// ������ ������ �� ������
let exampleStr = "101tf11flb10001"
// ����� � ������� ��� ����������� ���������
let matchingSubstrings = findMatchingSubstrings(s: exampleStr)
print(matchingSubstrings)
