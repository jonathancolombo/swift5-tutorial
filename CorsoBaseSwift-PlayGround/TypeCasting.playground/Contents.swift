import UIKit
/*
 Type Casting
 
 */

class Persona {
    var nome: String
    
    init(nome: String) {
        self.nome = nome
    }
}

var a = Persona.init(nome: "Francesco")
var b = Persona.init(nome: "Mario")

class Nota {
    var nome: String
    
    init(nome: String) {
        self.nome = nome
    }
}

class Testo : Nota {
    var testo: String?
    
    init(nome: String, testo: String?) {
        self.testo = testo ?? ""
        super.init(nome: nome)
    }
    
}

class Audio : Nota {
    var url: String?
    
    init(nome: String, url: String?) {
        self.url = url ?? ""
        super.init(nome: nome)
    }
    
}

// Creazione array che contenga tutte le note create

var mieNote = [
    Testo.init(nome: "Nome nota Testo 01", testo: "Testo nota 01"),
    Audio.init(nome: "Nome audio Audio 01", url: "Indirizzo audio 01"),
    Testo.init(nome: "Nome nota Testo 02", testo: "Testo nota 02"),
    Audio.init(nome: "Nome audio Audio 02", url: "Indirizzo audio 02")
]

var recuperoNota: Nota = Testo.init(nome: "nota 01", testo: "testo nota")

var testo = recuperoNota as? Testo

var numeroTesto = 0
var numeroAudio = 0

for x in mieNote {
    if x is Testo {
        numeroTesto += 1
    } else if x is Audio {
        numeroAudio += 1
    }
}


