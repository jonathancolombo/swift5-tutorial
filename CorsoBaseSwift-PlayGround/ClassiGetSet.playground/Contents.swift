import UIKit

class Saldo {
    
    var saldo: Double
    
    init(saldo: Double) {
        self.saldo = saldo
    }
    
    func stampaSaldo() -> Void {
        print("Il tuo saldo è \(self.saldo)")
    }
    
}

var francesco = Saldo.init(saldo: 1000)

francesco.stampaSaldo()

class Saldo2 {
    
    private var saldo: Double
    
    init(saldo: Double) {
        self.saldo = saldo
    }
    
    func stampaSaldo() -> Void {
        print("Il tuo saldo è \(self.saldo)")
    }
    
}

var francesco2 = Saldo2.init(saldo: 1000)
francesco2.stampaSaldo()

class Saldo3 {
    
    private var saldo: Double
    
    var saldoConto: Double {
        get {
            return self.saldo
        }
        set(nuovoValore) {
            print("Il nuovo saldo è \(nuovoValore)")
            self.saldo = nuovoValore
        }
    }
    
    init(saldo: Double) {
        self.saldo = saldo
    }
    
}

var francesco3 = Saldo3(saldo: 3000)
francesco3.saldoConto = 8000
print("Il tuo saldo è \(francesco3.saldoConto)")

class Saldo4 {
    
    private var saldo: Double
    
    var saldoConto: Double {
        get {
            return self.saldo
        }
        set(nuovoValore) {
            if nuovoValore < 0 {
                print("Stai provando a inserire un saldo negativo")
                return
            }
            print("Il nuovo saldo è \(nuovoValore)")
            self.saldo = nuovoValore
        }
    }
    
    init(saldo: Double) {
        self.saldo = saldo
    }
    
}

var francesco4 = Saldo4.init(saldo: 1000)
francesco4.saldoConto = -500

// --------------------------------------
class Persona {
    
    var nome: String
    var cognome: String
    var eta: String
    
    var codiceFiscale: String {
        let codiceCalcolo = nome + cognome + eta
        return codiceCalcolo
    }
    
    init(nome: String, cognome: String, eta: String) {
        self.nome = nome
        self.cognome = cognome
        self.eta = eta
    }
    
}

var mario = Persona.init(nome: "Mario", cognome: "Rossi", eta: "45")
print("\(mario.codiceFiscale)")
