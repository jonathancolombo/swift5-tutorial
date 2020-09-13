import UIKit

/*
 Estensione di una classe
 
 extension NomeClasse {
    comportamento da aggiungere
 }
 */

class Persona {
    
    var nome: String
    var cognome: String
    var eta: String
    
    init(nome: String, cognome: String, eta: String) {
        self.nome = nome
        self.cognome = cognome
        self.eta = eta
    }
    
    func stampaDati() -> Void {
        print("Nome: \(self.nome)")
        print("Cognome: \(self.cognome)")
        print("Eta: \(self.eta)")
    }
    
}

extension Persona {
    var codiceFiscale: String {
        get {
            return (self.nome + self.cognome + self.eta)
        }
    }
    
}

var francesco = Persona(nome: "Francesco", cognome: "Rossi", eta: "39")
francesco.stampaDati()
print("Codice Fiscale : \(francesco.codiceFiscale)")
