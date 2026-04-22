// Objective-C – Interfaz y uso básico de una clase
#import <Foundation/Foundation.h>

@interface Contador : NSObject {
    NSMutableArray *numeros;
}
- (void)agregarNumero:(int)num;
- (int)media;
- (int)contarSuperiores:(int)limite;
@end

@implementation Contador
- (instancetype)init {
    self = [super init];
    if (self) {
        numeros = [[NSMutableArray alloc] init];
    }
    return self;
}
- (void)agregarNumero:(int)num {
    [numeros addObject:@(num)];
}
- (int)media {
    int suma = 0;
    for (NSNumber *n in numeros)
        suma += [n intValue];
    return suma / (int)[numeros count];
}
- (int)contarSuperiores:(int)limite {
    int cont = 0;
    for (NSNumber *n in numeros)
        if ([n intValue] > limite) cont++;
    return cont;
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Contador *c = [[Contador alloc] init];
        int listlen, valor;
        scanf("%d", &listlen);
        for (int i = 0; i < listlen; i++) {
            scanf("%d", &valor);
            [c agregarNumero:valor];
        }
        int media = [c media];
        int resultado = [c contarSuperiores:media];
        printf("Número de valores > media: %d\n", resultado);
        return 0;
    }
}
