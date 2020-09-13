import UIKit

/*
 struct Nome {
    Attributi
    Metodi
 }
 
 - Se non specificato crea un init di default
 - Non è possibile utilizzare l'ereditarietà
 - Per cambiare il valore degli attributi di una struttura occorre utilizzare la funzione con la
   parola chiave mutating in quanto viene considerata una let come nelle func
 - Una struct è value type mentre una classe è reference type
 - La struct è più veloce di una classe
 */


struct Cliente {
    var nome: String
    var saldo: Double
    
    mutating func aggiungi(importo: Double) -> Void {
        self.saldo += importo
    }
}

struct Archivio {
    var array = [Cliente]()
    
    mutating func aggiungi(cliente: Cliente) -> Void {
        array.append(cliente)
    }
}

var francesco = Cliente.init(nome: "Francesco", saldo: 1000)
francesco.aggiungi(importo: 500)
print(francesco)

var archivioClienti = Archivio.init()
archivioClienti.array

// Classe
class Utente {
    var nome : String = ""
}

var a = Utente.init()

a.nome = "Francesco"
print(a.nome)

var b = a
print(b.nome)

b.nome = "Carlo"

print(b.nome)
print(a.nome)

a.nome = "Lucia"
print(b.nome)
print(a.nome)

print("----------------------------")
//-------------

struct Utente2 {
    var nome: String = ""
}

var a1 = Utente2.init(nome: "Francesco")
print(a1.nome)

var b1 = a1
print(b1.nome)

a1.nome = "Carlo"
print(b1.nome)
print(a1.nome)
