import UIKit

/*
 Istruzione di controllo guard
 
 guard < condizione > else { <istruzioni> }
 
 - una volta che l'esecuzione del codice è entrata all'interno del blocco else, non si può più
 uscire se non con un'istruzione di trasferimento del controllo (break, return , continue ecc...)
 
 - Può essere utilizzata solo all'interno della funzione, dei cicli, classi e strutture.
 
 */


var array =  ["a","b","c","d","f","g"]

// utilizzo istruzione Guard

func trovaLettera(lettera: String) {
    for x in array {
        guard x != lettera else {
            print("Trovata la lettera \(lettera)")
            return
        }
    }
    
    print("Non ho trovato la lettera \(lettera)")
}

trovaLettera(lettera: "b")

// Creo Codice Fiscale

func creaCodice(nome: String?, cognome: String?, eta: String?) -> String? {
    guard let veroNome = nome, let veroCognome = cognome, let veraEta = eta else {
        return nil
    }
    
    return (veroNome + veroCognome + veraEta)
}

print(creaCodice(nome: "Francesco", cognome: "Rossi", eta: "") ?? "Optional()")


