def find_matching_substrings(s)
    # ���������� ��������� ��� ������������ ������� 1[0]1, ��� [0] ���������� ���� ��� ����� �����
    pattern = /10+1/
    # ����� ��� ���������� ������� � ������
    s.scan(pattern)
end

# ������ ������ �� ������
example_str = "101tf11flb10001"
# ����� � ������� ��� ����������� ���������
matching_substrings = find_matching_substrings(example_str)
puts matching_substrings
