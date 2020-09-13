import UIKit

/*
    PAROLE CHIAVE
    break, fallthrough, continue e return
 
 */

// fallthrough
let interoDaControllo = 13
var descrizione = "Il numero \(interoDaControllo) è "

switch interoDaControllo {
case 2,3,5,11,13,17:
    descrizione += "un numero primo e anche "
    fallthrough // esegue anche il case successivo
default:
    descrizione += "numero intero"
}

print(descrizione)


print("--------------")

// continue
var stringaNonCodificata = "laMiaPassword"

var stringCodificata = ""

for carattere in stringaNonCodificata {
    switch carattere {
    case "a","e","i","o","u":
        continue
    default:
        stringCodificata.append(carattere)
    }
}

print(stringCodificata)

print("--------------")


// break
var stringa = "aaaaaaaaaaaaaaaaa1aaaaaaaaa"
var i = 0

for valore in stringa {
    i += 1
    if valore == "1" {
        print("Trovato l'intruso")
        break
    }
}

print("Ciclo eseguito \(i)")
print("--------------")
