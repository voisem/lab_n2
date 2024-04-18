function findMatchingSubstrings(s) {
    // –егул€рное выражение дл€ соответстви€ шаблону 1[0]1, где [0] обозначает один или более нулей
    const pattern = /10+1/g;
    // Ќайти все совпадени€ шаблона в строке
    const matches = s.match(pattern);
    return matches;
}

// ѕример строки из задачи
const exampleStr = "101tf11flb10001";
// Ќайти и вывести все совпадающие подстроки
const matchingSubstrings = findMatchingSubstrings(exampleStr);
console.log(matchingSubstrings);
