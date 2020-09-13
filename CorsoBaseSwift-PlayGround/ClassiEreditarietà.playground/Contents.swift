import UIKit

// Ereditarietà di una classe

//  Classe Uomo
class Uomo {
    
    var nome: String
    var cognome: String
    var altezza: Double
    var eta: Int
    
    // Proprietà uniche Uomo
    init(nome: String, cognome: String, altezza: Double, eta: Int) {
        self.nome = nome
        self.cognome = cognome
        self.altezza = altezza
        self.eta = eta
    }
    
}

class Donna {
    
    var nome: String
    var cognome: String
    var altezza: Double
    var eta: Int
    
    // Proprietà uniche Donna
    init(nome: String, cognome: String, altezza: Double, eta: Int) {
        self.nome = nome
        self.cognome = cognome
        self.altezza = altezza
        self.eta = eta
    }
    
}

//  Classe Padre o Superclasse Persona
class Persona {
    
    var nome: String
    var cognome: String
    var altezza: Double
    var eta: Int
    
    init(nome: String, cognome: String, altezza: Double, eta: Int) {
        self.nome = nome
        self.cognome = cognome
        self.altezza = altezza
        self.eta = eta
    }
    
    func stampaDati() -> Void {
        print("Nome: \(self.nome)")
        print("Cognome: \(self.cognome)")
        print("Altezza: \(self.altezza)")
        print("Eta: \(self.eta)")
    }

}

//  Classe Figlie o Sottoclasse di Persona
class Donna2: Persona {
    
    var gravidanza: Bool = false
    
    func stampaGravidanza(gravidanza: Bool) {
        if gravidanza == false {
            print("Gravidanza: NO")
            self.gravidanza = false
        } else {
            print("Gravidanza: SI")
            self.gravidanza = true
        }
    }
}

var maria = Donna2.init(nome: "Maria", cognome: "Rossi", altezza: 1.67, eta: 34)
maria.stampaDati()
maria.gravidanza = true
maria.stampaGravidanza(gravidanza: true)
print("")
//  Classe Figlia o Sottoclasse di Persona con override
class Donna3: Persona {
    
    var gravidanza: Bool = false
    
    override func stampaDati() -> Void {
           print("Nome: \(self.nome)")
           print("Cognome: \(self.cognome)")
           print("Altezza: \(self.altezza)")
           print("Eta: \(self.eta)")
        
        if gravidanza == false {
            print("Gravidanza: NO")
            self.gravidanza = false
        } else {
            print("Gravidanza: SI")
            self.gravidanza = true
        }
    }
   
}

var carla = Donna3.init(nome: "Carla", cognome: "Bianchi", altezza: 1.69, eta: 32)
carla.gravidanza = true
carla.stampaDati()

print("")


class Donna4: Persona {
    
    var gravidanza: Bool = false
    
    override func stampaDati() -> Void {
        super.stampaDati()
        
        if gravidanza == false {
            print("Gravidanza: NO")
            self.gravidanza = false
        } else {
            print("Gravidanza: SI")
            self.gravidanza = true
        }
    }
   
}

var lucia = Donna4.init(nome: "Lucia", cognome: "Verdi", altezza: 1.56, eta: 65)
lucia.gravidanza = false
lucia.stampaDati()
