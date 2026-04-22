// Programa en C++ – Uso de una clase para estadísticas básicas
#include <iostream>
#include <vector>
using namespace std;

class Estadistica {
private:
    vector<int> datos;
public:
    void agregar(int valor) {
        datos.push_back(valor);
    }
    int media() const {
        if (datos.empty()) return 0;
        int suma = 0;
        for (int d : datos) suma += d;
        return suma / datos.size();
    }
    int contar_mayores() const {
        int prom = media();
        int count = 0;
        for (int d : datos)
            if (d > prom) count++;
        return count;
    }
};

int main() {
    int n;
    cout << "Longitud: ";
    cin >> n;
    if (n > 0 && n < 100) {
        Estadistica stats;
        for (int i = 0; i < n; i++) {
            int valor;
            cin >> valor;
            stats.agregar(valor);
        }
        cout << "Valores > media: " << stats.contar_mayores() << endl;
    } else {
        cout << "Error: longitud no válida" << endl;
    }
    return 0;
}
