import UIKit


// Esempio invio di un messaggio

let contatti = ["Francesco", "Maria", "Carlo"]

func invioMessaggio(destinatario: String, messaggio: String) {
    print("Messaggio: \(messaggio)")
    print("inviato da: \(destinatario)")
    print("--------------------------")
}

invioMessaggio(destinatario: "Tizio", messaggio: "Come stai? Tutto bene!")

enum TipoErrore : Error {
    case destinatarioNonPresente
    case messaggioNonPresente
    case destinatarioNonInserito
}

func invioMessaggio0(destinatario: String, messaggio: String) throws {
    guard destinatario != "" else {
        throw TipoErrore.destinatarioNonInserito
    }
    
    var esistenteDestinatario = false
    
    for contatto in contatti {
        if contatto == destinatario {
            esistenteDestinatario = true
        }
    }
    
    guard esistenteDestinatario == true else {
        throw TipoErrore.destinatarioNonPresente
    }
    
    guard messaggio != "" else {
           throw TipoErrore.messaggioNonPresente
       }
    
    print("Messaggio: \(messaggio)")
    print("inviato da: \(destinatario)")
    print("--------------------------")
}
 
do {
    print("Provo a inviare il messaggio")
    try invioMessaggio0(destinatario: "Francesco", messaggio: "Come stai?")
} catch {
    print("è stata sollevata una eccezione \(error)")
}


do {
    print("Provo a inviare il messaggio")
    try invioMessaggio0(destinatario: "Francesco", messaggio: "")
} catch TipoErrore.destinatarioNonPresente {
    print("Non è presente nella lista Contatti")
}  catch TipoErrore.destinatarioNonInserito {
    print("Il destinatario non è stato specificato")
} catch TipoErrore.messaggioNonPresente {
    print("Inserisci un messaggio")
}
