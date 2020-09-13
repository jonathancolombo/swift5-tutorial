import UIKit

// Funzione Somma
func somma(numero01: Int, numero02: Int) -> Int {
    return numero01 + numero02
}

// Funzione Sottrazione
func sottrazione(numero01: Int, numero02: Int) -> Int {
    return numero01 - numero02
}

// Funzione Moltiplicazione
func moltiplicazione(numero01: Int, numero02: Int) -> Int {
    return numero01 * numero02
}

// Funzione Divisione
func divisione(numero01: Int, numero02: Int) -> Int {
    return numero01 / numero02
}

print("Il risultato dell'operazione è: \(somma(numero01: 5, numero02: 5))")
print("Il risultato dell'operazione è: \(sottrazione(numero01: 5, numero02: 5))")
print("Il risultato dell'operazione è: \(moltiplicazione(numero01: 5, numero02: 5))")
print("Il risultato dell'operazione è: \(divisione(numero01: 5, numero02: 5))")
print("------------------")
// Funzione stampa
func stampa(funzione: (Int,Int) -> Int, v1: Int, v2: Int) {
    print("Risultato dell'operazione:  \(funzione(v1,v2))")
}

stampa(funzione: somma, v1: 5, v2: 10)
stampa(funzione: sottrazione, v1: 10, v2: 5)

print("------------------")

func operazione(numero01: Int, numero02: Int, op: String) -> Int {
    switch op {
    case "+" :
        return numero01 + numero02
    case "-" :
        return numero01 - numero02
    case "*" :
        return numero01 * numero02
    case "/" :
        return numero01 / numero02
    default:
        return 0
    }
}

func stampa2(v1: Int, v2: Int, op: String, funzione: (Int,Int,String) -> Int) {
    print("Risultato operazione: \(funzione(v1,v2,op))")
}


stampa2(v1: 10, v2: 5, op: "+", funzione: operazione(numero01:numero02:op:))

