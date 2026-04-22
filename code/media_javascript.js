// JavaScript: programa interactivo en el navegador
let listLen = parseInt(prompt("Introduzca la longitud de la lista:"));
if (listLen > 0 && listLen < 100) {
    let intList = [];
    let sum = 0;
    for (let i = 0; i < listLen; i++) {
        let valor = parseInt(prompt("Introduzca un número:"));
        intList.push(valor);
        sum += valor;
    }
    let average = Math.floor(sum / listLen);
    let result = 0;
    for (let num of intList) {
        if (num > average) result++;
    }
    alert("Número de valores > media: " + result);
} else {
    alert("Error: longitud no válida");
}
