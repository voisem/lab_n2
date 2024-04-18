import re

def find_matching_substrings(s):
    # Регулярное выражение для соответствия шаблону 1[0]1, где [0] обозначает один или более нулей
    pattern = r'10+1'
    # Найти все неперекрывающиеся совпадения шаблона в строке
    matches = re.findall(pattern, s)
    return matches

# Пример строки из задачи
example_str = "101tf11flb10001"
# Найти и вывести все совпадающие подстроки
matching_substrings = find_matching_substrings(example_str)
print(matching_substrings)
