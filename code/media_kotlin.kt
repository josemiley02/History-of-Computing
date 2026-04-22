// Kotlin: programa de ejemplo con manejo de nulos y colecciones
fun main() {
    print("Introduzca la longitud: ")
    val listLen = readLine()?.toIntOrNull()
    if (listLen != null && listLen in 1..99) {
        val intList = mutableListOf<Int>()
        var sum = 0
        repeat(listLen) {
            print("Número ${it + 1}: ")
            val value = readLine()?.toIntOrNull()
            if (value == null) {
                println("Error: entrada no numérica")
                return
            }
            intList.add(value)
            sum += value
        }
        val average = sum / listLen
        val result = intList.count { it > average }
        println("Número de valores > media: $result")
    } else {
        println("Error: longitud no válida")
    }
}
