def find_matching_substrings(s)
    # –егул€рное выражение дл€ соответстви€ шаблону 1[0]1, где [0] обозначает один или более нулей
    pattern = /10+1/
    # Ќайти все совпадени€ шаблона в строке
    s.scan(pattern)
end

# ѕример строки из задачи
example_str = "101tf11flb10001"
# Ќайти и вывести все совпадающие подстроки
matching_substrings = find_matching_substrings(example_str)
puts matching_substrings
