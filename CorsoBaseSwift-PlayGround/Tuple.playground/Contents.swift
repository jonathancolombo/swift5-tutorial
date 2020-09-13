import UIKit

// DICHIARAZIONE IMPLICITA
var erroreCodice = (404,"Pagina non trovata")


// DICHIARAZIONE ESPLICITA
var codiceErrore : (Int,String)
codiceErrore = (404,"Pagina non trovata")

// TUPLE CON PIù VALORI
var utente = ("Francesco","Rossi",39,"Codice Fiscale")


// LEGGERE I VALORI DI UNA TUPLE
print("Nome: \(utente.0)\nCognome: \(utente.1)\nEtà: \(utente.2)\nCodiceFiscale: \(utente.3)")
