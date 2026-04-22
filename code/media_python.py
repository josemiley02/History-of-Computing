# Python: cálculo de valores mayores que la media
def main():
    list_len = int(input("Introduzca la longitud: "))
    if 0 < list_len < 100:
        int_list = []
        for _ in range(list_len):
            int_list.append(int(input()))
        average = sum(int_list) // list_len
        result = sum(1 for x in int_list if x > average)
        print(f"Número de valores > media: {result}")
    else:
        print("Error: longitud no válida")

if __name__ == "__main__":
    main()
