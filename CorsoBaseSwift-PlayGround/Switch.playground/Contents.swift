import UIKit

/*
 
    ISTRUZIONE LOGICA SWITCH
    
    switch valore_da_controllare {
        
    case valore_1:
        eseguo codice del valore_1
    
    case valore_2, case valore_3:
    eseguo codice del valore 2 e 3
 
    default:
    in caso contrario fai qualcos'altro
    
    }
    ATTENZIONE! Un case non esegue operazioni logice. Esempio case < 1. Ogni case deve avere
    almeno una istruzione.
 
 
 */

//Esempi

let carattere = "e"

switch carattere {
case "a","e","i","o","u":
    print("\(carattere) è una vocale")
case "b","c","d","f":
    print("\(carattere) è una consonante")
default:
    print("\(carattere) non è una vocale ne una consonante")
}

// Dato in range

let votoAlunno = 6

switch votoAlunno {
case 0...5:
    print("Voto insufficiente")
case 6...9:
    print("Voto buono")
case 10:
    print("Voto ottimo")
default:
    print("Valore non consentito max 10 e min")
}

print("-------------")

let ora = 5

switch ora {
case let x where x < 13:
    print("Buongiorno")
case let x where x > 13 && x < 20:
    print("Buon pomeriggio")
default:
    print("Buona sera")
}
