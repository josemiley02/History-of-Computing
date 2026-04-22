// Go: programa de ejemplo con manejo de errores y slices
package main

import (
    "fmt"
    "strconv"
)

func main() {
    var listLen int
    fmt.Print("Introduzca la longitud: ")
    fmt.Scanln(&listLen)

    if listLen > 0 && listLen < 100 {
        intList := make([]int, listLen)
        sum := 0
        for i := 0; i < listLen; i++ {
            var input string
            fmt.Printf("Número %d: ", i+1)
            fmt.Scanln(&input)
            valor, err := strconv.Atoi(input)
            if err != nil {
                fmt.Println("Error: entrada no numérica")
                return
            }
            intList[i] = valor
            sum += valor
        }
        average := sum / listLen
        result := 0
        for _, v := range intList {
            if v > average {
                result++
            }
        }
        fmt.Printf("Número de valores > media: %d\n", result)
    } else {
        fmt.Println("Error: longitud no válida")
    }
}
