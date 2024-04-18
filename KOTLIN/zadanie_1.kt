fun findMatchingSubstrings(s: String): List<String> {
    // ���������� ��������� ��� ������������ ������� 1[0]1, ��� [0] ���������� ���� ��� ����� �����
    val pattern = Regex("10+1")
    // ����� ��� ���������� ������� � ������
    return pattern.findAll(s).map { it.value }.toList()
}

fun main() {
    // ������ ������ �� ������
    val exampleStr = "101tf11flb10001"
    // ����� � ������� ��� ����������� ���������
    findMatchingSubstrings(exampleStr).forEach { println(it) }
}
