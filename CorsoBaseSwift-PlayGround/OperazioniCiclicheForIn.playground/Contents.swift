import UIKit

// Array composto da 7 numeri
var mioArray = [10,20,30,40,50,60,70]
// Stampo array
print(mioArray[0])
print(mioArray[1])
print(mioArray[2])
print(mioArray[3])

/*
 OPERAZIONI CICLICHE
 
 // Sintassi
 for <variabile> in <intervallo> {
    
 <blocco istruzioni>
 
 }
 */

print("--------")


// LETTURA ARRAY
for x in mioArray {
    print(x)
}

print("--------")

// LETTURA DIZIONARIO
var mioDizionario = ["Francesco" : 100, "Mario" : 150, "Luca" : 45]

for (nome, punteggio) in mioDizionario {
    print("\(nome) ha un punteggio di \(punteggio)")
}
print("---------")

// con una sola variabile di lettura

for utente in mioDizionario {
    print("\(utente.0) ha un punteggio di \(utente.1)")
}

print("---------")

for _ in 1...5 {
    print("Francesco")
}

print("----------")

var numero = 0
for _ in 1...4 {
    numero += 1
    print(numero)
}



