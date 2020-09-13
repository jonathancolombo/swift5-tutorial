import UIKit

/*
    FUNZIONI CON PARAMETRI IN INGRESSO
    
 func nomeFunzione (<parametri>) {
    <corpo funzione>
 }
 */

// CON PARAMETRI IN INGRESSO

func saluto(nome: String) {
    print("Ciao \(nome)")
}

saluto(nome: "Francesco")
saluto(nome: "Mario")


func datiUtente(nome: String, cognome: String, eta: Int) {
    print("Dati Utente: \(nome)")
    print("Nome: \(cognome)")
    print("Età: \(eta)")
}

datiUtente(nome: "Paolo", cognome: "Moscardi", eta: 35)
datiUtente(nome: "Luca", cognome: "Toschi", eta: 22)

func somma(n1: Int, n2: Int) {
    print("La somma è: \(n1 + n2)")
}

somma(n1: 5, n2: 3)
somma(n1: 190, n2: 3)

func stampaArray(array:[Int]) {
    print("Dati contenuti nell'array")
    
    for x in array {
        print(x)
    }
}

let mioArray = [213,325,6543,646,25]

stampaArray(array: mioArray)

func calcolaMedia(numeri: Double...) {
    var risultato : Double = 0
    
    for numero in numeri {
        risultato += numero
    }
    
    print("La media dei numeri inseriti è: \(risultato/Double(numeri.count))")
}

calcolaMedia(numeri: 10,20,30,40,50,60)

