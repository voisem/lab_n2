function findMatchingSubstrings(s) {
    // ���������� ��������� ��� ������������ ������� 1[0]1, ��� [0] ���������� ���� ��� ����� �����
    const pattern = /10+1/g;
    // ����� ��� ���������� ������� � ������
    const matches = s.match(pattern);
    return matches;
}

// ������ ������ �� ������
const exampleStr = "101tf11flb10001";
// ����� � ������� ��� ����������� ���������
const matchingSubstrings = findMatchingSubstrings(exampleStr);
console.log(matchingSubstrings);
