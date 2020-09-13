import UIKit

/*
 if condizione {
    cose da eseguire
 }
 else {
    cose da eseguire
 }
 
 OPERAZIONI COMPARAZIONE
 
 ==         Uguale a
            a == b
 
 !=         Non uguale
            a != b
 
 >          Maggiore di
            a > b
 
 <          Minore di
            a < b
 
 >=         Maggiore o uguale di
            a >= b
 
 <=         Minore o uguale di
            a <= b
 
 OPERAZIONI LOGICHE
 
 !          Diverso di...Inverto una condizione booleana, se è true la considera false e viceversa
 
 &&         and/e permette di concatenare istruzioni di verifica. L'intera condizione è true se          tutte le condizioni lo sono.
 
 ||         or/o permette di concatenare istruzioni di verifica. L'intera condizione è true se           almeno una condizione è vera
 
 */

let a = 5
let b = 8

if a > b {
    print("La variabile è maggiore di 8")
} else {
    print("La variabile è minore di 5")
}

// FORMA CONTRATTA
// se a maggiore di b = Si altrimenti NO
// se più codice racchiudere tra parantesi tonde i risultati e le condizioni
a > b ? "Si" : "No"

if !(a > b) {
    print("VERO")
}

print("------------")


if a > b && a == 5 {
    print("VERO")
} else {
    print("FALSO")
}

if a > b || a == 5 {
    print("VERO")
} else {
    print("FALSO")
}

print("------------")

// IF A CASCATA O CONCATENATI

var x = 10
var y = 12

if x == y {
    print("X e Y sono uguali")
} else if x > y {
    print("X è maggiore di Y")
} else {
    print("X è minore di Y")
}

// Vite giocatore

var vite = 5

if vite > 0 {
    vite -= 1
    print("Puoi continuare, hai ancora \(vite)")
}
else {
    print("Non hai più vite, GAME OVER")
}

































