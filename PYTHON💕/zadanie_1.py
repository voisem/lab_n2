import re

def find_matching_substrings(s):
    # ���������� ��������� ��� ������������ ������� 1[0]1, ��� [0] ���������� ���� ��� ����� �����
    pattern = r'10+1'
    # ����� ��� ����������������� ���������� ������� � ������
    matches = re.findall(pattern, s)
    return matches

# ������ ������ �� ������
example_str = "101tf11flb10001"
# ����� � ������� ��� ����������� ���������
matching_substrings = find_matching_substrings(example_str)
print(matching_substrings)
