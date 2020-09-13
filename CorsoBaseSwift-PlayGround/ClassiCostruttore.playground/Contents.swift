import UIKit

/*
 Classi
 
 classe Persona {
 // attributi
 nome
 data_nascita
 altezza
 peso
 codice_fiscale
 
 
 // funzionalità > Metodi
 camminare()
 bere()
 studiare()
 
  var francesco = Persone()
 }
*/

class Persona {
    
    // Attributi
    var nome: String?
    var cognome: String?
    var eta: Int?
    var codiceFiscale: String?
    
    // Costruttore vuoto
    init() {
        
    }
    
    // Fine Classe
    
    
    
}
var francesco = Persona.init()
francesco.nome = "Francesco"
francesco.cognome = "Rossi"
francesco.eta = 45
francesco.codiceFiscale = "CODICEFISCALE"
if francesco.codiceFiscale != nil {
    print(francesco.codiceFiscale!)
} else {
    print("Nessun codice fiscale inserito")
}

//-------------------------------------
// Classe Persona2 con parametri obbligatori init

class Persona2 {
    // Attributi
    var nome: String
    var cognome: String
    var eta: Int
    var codiceFiscale: String
    
    //Costruttore
    init(nome: String, cognome: String, eta: Int, codiceFiscale: String) {
        self.nome = nome
        self.cognome = cognome
        self.eta = eta
        self.codiceFiscale = codiceFiscale
    }
    
    
}

var francesco2 = Persona2(nome: "Francesco", cognome: "Rossi", eta: 34, codiceFiscale: "CODICEFISCALE")

class Persona3 {
    var nome: String
    var cognome: String
    var eta: Int
    var codiceFiscale: String?
    
    init(nome: String, cognome: String, eta: Int) {
        self.nome = nome
        self.cognome = cognome
        self.eta = eta
    }
    
    init(nome: String, cognome: String, eta: Int, codiceFiscale: String?) {
        self.nome = nome
        self.cognome = cognome
        self.eta = eta
        self.codiceFiscale = codiceFiscale
    }
}

var francesco3 = Persona3.init(nome: "Francesco", cognome: "Rossi", eta: 43)
francesco.codiceFiscale = "CODICEFISCALE"

var francesco4 = Persona3.init(nome: "Francesco", cognome: "Rossi", eta: 45, codiceFiscale: nil)


