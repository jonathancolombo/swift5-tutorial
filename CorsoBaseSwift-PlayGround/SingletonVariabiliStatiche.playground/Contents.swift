import UIKit

class nomeClasse {
    // Proprietà
    // Metodi della classe
}

var a = nomeClasse.init()
var b = nomeClasse.init()

// --------

class Utente {
    var numeroUtenti = 0
    var nome: String = ""
    
    init(nome: String) {
        self.nome = nome
        self.numeroUtenti += 1
    }
}

var utenteA = Utente.init(nome: "Francesco")
var utenteB = Utente.init(nome: "Carlo")


utenteA.numeroUtenti = 1
utenteB.numeroUtenti = 1

print(utenteA.numeroUtenti)
print(utenteB.numeroUtenti)

class Utente02 {
    static var numeroUtenti = 0
    var nome: String = ""
    
    init(nome: String) {
        self.nome = nome
        Utente02.numeroUtenti += 1
    }
}

var utenteAA = Utente02.init(nome: "Francesco")
var utenteBB = Utente02.init(nome: "Carlo")

/*print(utenteAA.numeroUtenti)
print(utenteBB.numeroUtenti)*/

print("\(Utente02.numeroUtenti)")

class Utente03 {
    static var numeroUtenti = 0
    var nome: String = ""
    
    init(nome: String) {
        self.nome = nome
        Utente02.numeroUtenti += 1
    }
    
    static func printNumeroUtenti() {
        print("\(Utente03.numeroUtenti)")
    }
}

Utente03.printNumeroUtenti()

class Ciao {
    class func stampaCiao() {
        print("Ciao")
    }
}

class CiaoCiao : Ciao {
    override static func stampaCiao() {
        print("Ciao ciao")
    }
}

CiaoCiao.stampaCiao()


class GestioneDati {
    
    static let shared = GestioneDati.init()
    
    func carica() {
        print("Carica")
    }
    
    func modifica() {
        print("Modifica")
    }
    
    func cancella() {
        print("Cancella")
    }
}

GestioneDati.shared.carica()
GestioneDati.shared.modifica()
GestioneDati.shared.cancella()
