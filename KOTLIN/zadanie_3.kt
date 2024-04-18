fun main() {
    val input = readLine()!!.split(" ")
    val output = input.mapIndexedNotNull { index, number ->
        val digits = number.map { it.toString().toInt() }
        val sum = digits.sum()
        val product = digits.reduce { acc, d -> acc * d }
        if (sum < product) index else null
    }
    println(output.joinToString(" "))
}
