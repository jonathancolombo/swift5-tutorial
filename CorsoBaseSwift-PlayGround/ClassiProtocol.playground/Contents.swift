import UIKit

/*
 Protocol di una classe
 
 protocol nome {
    contenuto del protocollo
 }
 
 */

// Creazione Protocollo

protocol funzioniObbligatorieDaInserire {
    
    func salva()
    func inserimento()
    func modifica()
    func elimina()
    
}

class Persona: funzioniObbligatorieDaInserire {
    
    func salva() {
        <#code#>
    }
    
    func inserimento() {
        <#code#>
    }
    
    func modifica() {
        <#code#>
    }
    
    func elimina() {
        <#code#>
    }
    
    
}

protocol DatiSensibili {
    var nome : String {get set}
    var codiceFiscale: String {get}
}

class Persona2 : DatiSensibili {
    var nome : String
    
    init(nome: String) {
        self.nome = nome
    }
    
    var codiceFiscale: String {
        get{
            return "\(self.nome)"
        }
    }
    
}

var francesco = Persona2.init(nome: "Francesco")
print(francesco.codiceFiscale)
francesco.nome = "Francesco2"
print(francesco.codiceFiscale)
