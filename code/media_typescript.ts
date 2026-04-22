// TypeScript: ejemplo con tipado estático e interfaces
interface Estadisticas {
    numeros: number[];
    media: number;
    superiores: number;
}

function procesarLista(listLen: number): Estadisticas | null {
    if (listLen <= 0 || listLen >= 100) {
        return null;
    }
    const numeros: number[] = [];
    let sum = 0;
    for (let i = 0; i < listLen; i++) {
        const input = prompt(`Número ${i+1}:`);
        const valor = Number(input);
        if (isNaN(valor)) {
            alert("Error: entrada no numérica");
            return null;
        }
        numeros.push(valor);
        sum += valor;
    }
    const media = Math.floor(sum / listLen);
    const superiores = numeros.filter(n => n > media).length;
    return { numeros, media, superiores };
}

function main() {
    const inputLen = prompt("Introduzca la longitud:");
    const listLen = Number(inputLen);
    const resultado = procesarLista(listLen);
    if (resultado) {
        alert(`Número de valores > media: ${resultado.superiores}`);
    } else {
        alert("Error: longitud no válida o entrada incorrecta");
    }
}

main();
