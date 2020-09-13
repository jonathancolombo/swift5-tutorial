import UIKit

/*
    OPERAZIONI CICLICHE WHILE e REPEAT WHILE
 
    // Sintassi
    while <condizione> {
        <istruzioni>
    }

    repeat {
        <istruzioni>
    } while <condizione>
 
 */

var indice = 0

while indice < 10 {
    indice += 1
    print(indice)
}

print("-----------")

var conto = 0

repeat {
    conto += 1
    print(conto)
} while conto < 10


