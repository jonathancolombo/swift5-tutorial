import UIKit

// var/let  nomeDizionario = [chiave: valore, chiave: valore]

// DICHIARAZIONE IMPLICITA --------------
var dizionarioImplicito = [1: 3000, 2: 2000, 3: 3000]

// DICHIARAZIONE ESPLICITA -------------
var dizionarioEsplicito : [Int : String]
dizionarioEsplicito = [1 : "Francesco", 2 : "Mario", 3 : "Massimo"]

print(dizionarioEsplicito)
// INIZIALIZZAZIONE VUOTA -----------
var mioDizionario = [Int : Int]()

// AGGIUNGERE/NOTIFICARE -----------
mioDizionario.updateValue(3000, forKey: 1)
mioDizionario.updateValue(2000, forKey: 2)
mioDizionario.updateValue(1000, forKey: 3)

// modifica valore di una corrispettiva chiave
mioDizionario.updateValue(2500, forKey: 2)
mioDizionario

// ELIMINAZIONE -------------
mioDizionario[2] = nil
//mioDizionario = [:]

// LEGGERE IL CONTENUTO
mioDizionario[3]

for (x,y) in mioDizionario {
    print("\(x)" + "-" + "\(y)")
}

mioDizionario.count
