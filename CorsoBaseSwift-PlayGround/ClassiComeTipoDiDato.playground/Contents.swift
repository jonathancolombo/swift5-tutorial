import UIKit

// Classe Contatto
class Contatto {
    
    var nome: String
    var numero: String
    
    init(nome: String, numero: String) {
        self.nome = nome
        self.numero = numero
    }
    
}

class Rubrica {
    
    var contatti: [Contatto]
    
    init() {
        self.contatti = [Contatto]()
    }
    
    func aggiungiContatto(new: Contatto) -> Void {
        self.contatti.append(new)
    }
    
    func chiama(nome: String) -> Bool {
        guard self.contatti.count > 0 else {
            print("La rubrica è vuota")
            return false
        }
        
        for x in self.contatti {
            if x.nome == nome {
                print("Sto chiamando \(x.nome)")
                return true
            }
        }
        print("Non ho trovato il contatto \(nome) nella Rubrica")
        return false
    }
    
    func visualizzaRubrica() -> Void {
        guard self.contatti.count > 0 else {
            print("La rubrica è vuota")
            return
        }
        
        for x in self.contatti {
            print("\(x.nome) Tel: \(x.numero)")
        }
    }
    
}

var francesco = Contatto.init(nome: "Francesco", numero: "11111")
var carlo = Contatto.init(nome: "Carlo", numero: "22222")
var maria = Contatto.init(nome: "Maria", numero: "33333")

var rubrica = Rubrica.init()
rubrica.aggiungiContatto(new: carlo)
rubrica.aggiungiContatto(new: maria)
rubrica.chiama(nome: "Francesco")
rubrica.visualizzaRubrica()



