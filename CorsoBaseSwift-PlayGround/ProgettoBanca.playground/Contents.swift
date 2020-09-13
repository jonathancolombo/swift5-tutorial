import UIKit

// PROGRAMMA GESTIONE CONTO

// Db operazioni Conti
var dbConti = [Int: [(Double,Character)]]()

// Db Gestione Utente
var dbUtenti = [Int : Double]()
// CREA UTENTE
func nuovoUtente(idUtente: Int, utenti: inout [Int:Double]) {
        // Controllare se l'utente già esiste
    if utenti[idUtente] != nil {
        print("Utente già esistente")
        print("----------------------")
        return
    }
    
    utenti.updateValue(0, forKey: idUtente)
    print("Cliente Creato con successo")
    //print(utenti)
}

// VERSAMENTO
func versamento(idCliente: Int, importo: Double, utenti: inout [Int:Double],
                conti: inout [Int: [(Double,Character)]]) {
    
    // Controllo se l'utente esiste
    if utenti[idCliente] == nil {
        print("Non esiste nessun cliente con questo ID")
        print("----------------------")
        return
    }
    
    // Controllo importo inserito
    if !(importo > 0) {
        print("L'importo deve essere maggiore di zero")
        print("----------------------")
        return
    }
    
    // Controllo se ci sono già operazioni per questo Cliente
    
    if conti[idCliente] != nil {
        conti[idCliente]?.append((importo, "+"))
        utenti[idCliente]? += importo
    } else {
        conti.updateValue([(importo,"+")], forKey: idCliente)
        utenti[idCliente]? += importo
    }
    
    print("Operazione eseguita con successo! Aggiunti \(importo)€ al conto.")
    print("Attuale saldo: \(utenti[idCliente]!)")
}

// PRELIEVO
func prelievo(idCliente: Int, importo: Double, utenti: inout [Int:Double],
                conti: inout [Int: [(Double,Character)]]) {
    
    // Controllo se l'utente esiste
    if utenti[idCliente] == nil {
        print("Non esiste nessun cliente con questo ID")
        print("----------------------")
        return
    }
    
    // Controllo importo inserito
    if !(importo > 0) {
        print("L'importo deve essere maggiore di zero")
        print("----------------------")
        return
    }
    
    // Controllo se il prelievo è maggiore del saldo
    
    if utenti[idCliente]! < importo {
        print("Operazione non consentita! Prelievo massimo \(utenti[idCliente]!)€")
        return
    }
    
    // Controllo se ci sono già operazioni per questo Cliente
    
    if conti[idCliente] != nil {
        conti[idCliente]?.append((importo, "-"))
        utenti[idCliente]? -= importo
    } else {
        conti.updateValue([(importo,"-")], forKey: idCliente)
        utenti[idCliente]? -= importo
    }
    
    print("Operazione eseguita con successo! Prelevati \(importo)€ al conto.")
    print("Attuale saldo: \(utenti[idCliente]!)")
}

// STAMPA SALDO
func saldo(idCliente: Int, utenti: [Int : Double], conti: [Int:[(Double,Character)]]) {
    // Controllo se l'utente esiste
    if utenti[idCliente] == nil {
        print("Non esiste nessun cliente con questo ID")
        print("----------------------")
        return
    }
    print("Elenco operazioni Cliente: \(idCliente)")
    
    // Controllo se ci sono operazioni
    
    if conti[idCliente] == nil {
        print("Nessuna operazione effettuata sul conto")
        print("Saldo Cliente: \(utenti[idCliente]!)")
        print("------------------------")
    } else {
        for x in conti[idCliente]! {
            print("\(x.1) \(x.0)")
        }
         print("Saldo Cliente: \(utenti[idCliente]!)")
         print("------------------------")
    }
    
}


nuovoUtente(idUtente: 2222, utenti: &dbUtenti)

versamento(idCliente: 2222, importo: 1000, utenti: &dbUtenti, conti: &dbConti)
versamento(idCliente: 2222, importo: 500, utenti: &dbUtenti, conti: &dbConti)
versamento(idCliente: 1111, importo: 1000, utenti: &dbUtenti, conti: &dbConti)
versamento(idCliente: 2222, importo: 0, utenti: &dbUtenti, conti: &dbConti)

prelievo(idCliente: 2222, importo: 300, utenti: &dbUtenti, conti: &dbConti)
prelievo(idCliente: 2222, importo: 1600, utenti: &dbUtenti, conti: &dbConti)

saldo(idCliente: 2222, utenti: dbUtenti, conti: dbConti)

nuovoUtente(idUtente: 2222, utenti: &dbUtenti)

//--------------
print("-------------")
print("DB Utenti")
print(dbUtenti)
print("DB Conti")
print(dbConti)
print("-------------")
// si può fare refactory senza problemi del codice
