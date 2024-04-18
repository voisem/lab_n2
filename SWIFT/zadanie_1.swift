import Foundation

func findMatchingSubstrings(s: String) -> [String] {
    // –егул€рное выражение дл€ соответстви€ шаблону 1[0]1, где [0] обозначает один или более нулей
    let pattern = "10+1"
    let regex = try! NSRegularExpression(pattern: pattern)
    let matches = regex.matches(in: s, range: NSRange(s.startIndex..., in: s))
    return matches.map {
        String(s[Range($0.range, in: s)!])
    }
}

// ѕример строки из задачи
let exampleStr = "101tf11flb10001"
// Ќайти и вывести все совпадающие подстроки
let matchingSubstrings = findMatchingSubstrings(s: exampleStr)
print(matchingSubstrings)
