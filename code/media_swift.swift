// Swift: programa simple con manejo de opcionales
import Foundation

print("Introduzca la longitud:", terminator: " ")
guard let input = readLine(), let listLen = Int(input), listLen > 0, listLen < 100 else {
    print("Error: longitud no válida")
    exit(1)
}

var intList = [Int]()
var sum = 0

for _ in 1...listLen {
    guard let valInput = readLine(), let value = Int(valInput) else {
        print("Error: entrada no numérica")
        exit(1)
    }
    intList.append(value)
    sum += value
}

let average = sum / listLen
let result = intList.filter { $0 > average }.count
print("Número de valores > media: \(result)")
