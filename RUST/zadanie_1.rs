fn find_matching_substrings(s: &str) -> Vec<String> {
    let mut result = Vec::new();
    let mut start = None;
    let mut zero_found = false;

    for (i, ch) in s.chars().enumerate() {
        match (start, ch) {
            (None, '1') => {
                start = Some(i);
                zero_found = false;  // Сбрасываем флаг наличия '0' при нахождении новой '1'
            },
            (Some(_), '0') => zero_found = true,  // Нашли '0' между '1'
            (Some(start_idx), '1') if zero_found => {
                // Найдена подстрока, соответствующая шаблону "1[0]+1"
                result.push(s[start_idx..=i].to_string());
                start = Some(i);  // Начинаем новую потенциальную подстроку с текущего индекса
                zero_found = false;  // Сбрасываем флаг наличия '0'
            },
            _ => start = None,
        }
    }

    result
}

fn main() {
    let example_str = "101tf11flb10001";
    let matching_substrings = find_matching_substrings(example_str);
    println!("{:?}", matching_substrings);  // Ожидаемый вывод: ["101", "10001"]
}
