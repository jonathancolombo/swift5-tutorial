import UIKit

/*
 Istruzione Enum
 
 enum NomeEnum {
 
    // elementi
 case
 }
 */

// Creo Enum


enum giorniSettimana {
    case lunedi
    case martedi
    case mercoledi
    case giovedi
    case venerdi
    case sabato
    case domenica
}

var giorno = giorniSettimana.martedi

switch giorno {
case giorniSettimana.lunedi:
    print("1 Giorno della settimana")
case .martedi:
    print("2 Giorno della settimana")
default:
    print("errore")
}

enum menu : String {
    case lunedi = "Primo: Pasta, Secondo: Carne...."
    case martedi = "Primo: Riso, Secondo: Pesce...."
    case mercoledi = "Primo: Minestrone, Secondo: Uova..."
}

var menuGiorno = menu.martedi.rawValue
print(menuGiorno)

enum icon : String {
    case musica
    case sport
    case tempo
    
    var fileName : String {
        return "\(rawValue).png"
    }
    
}

var icon1  = icon.musica.fileName

print(icon1)
