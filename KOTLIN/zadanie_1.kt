fun findMatchingSubstrings(s: String): List<String> {
    // –егул€рное выражение дл€ соответстви€ шаблону 1[0]1, где [0] обозначает один или более нулей
    val pattern = Regex("10+1")
    // Ќайти все совпадени€ шаблона в строке
    return pattern.findAll(s).map { it.value }.toList()
}

fun main() {
    // ѕример строки из задачи
    val exampleStr = "101tf11flb10001"
    // Ќайти и вывести все совпадающие подстроки
    findMatchingSubstrings(exampleStr).forEach { println(it) }
}
