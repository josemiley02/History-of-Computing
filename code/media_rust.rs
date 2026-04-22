// Rust: programa que cuenta valores mayores que la media
use std::io;

fn main() {
    println!("Introduzca la longitud:");
    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("Error de lectura");
    let list_len: usize = input.trim().parse().expect("Entrada no numérica");

    if list_len > 0 && list_len < 100 {
        let mut int_list = Vec::with_capacity(list_len);
        let mut sum = 0;

        for i in 0..list_len {
            println!("Número {}: ", i + 1);
            let mut valor_str = String::new();
            io::stdin().read_line(&mut valor_str).expect("Error");
            let valor: i32 = valor_str.trim().parse().expect("No es un entero");
            int_list.push(valor);
            sum += valor;
        }

        let average = sum / (list_len as i32);
        let result = int_list.iter().filter(|&&x| x > average).count();
        println!("Número de valores > media: {}", result);
    } else {
        println!("Error: longitud no válida");
    }
}
