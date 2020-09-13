import UIKit

/*
 
 concetto di Opzionalità in Swift
 
 Marcatori ? e !
 
 */


// Dichiarazione

var miaVariabile : Int?

// Inizializzazione

var miaVariabile2 = Int()

var miaVariabile3 = 4

miaVariabile = 4

print(miaVariabile!)

var conto : Double?

//conto = 800

if conto == nil {
    print("Il conto è vuoto")
} else {
    print("Il conto contiene \(conto!)")
}

// Login
var nome : String?

nome = "Francesco"

if nome == nil {
    print("Ciao Ospite")
} else {
    print("Ciao, \(nome!) ")
}
