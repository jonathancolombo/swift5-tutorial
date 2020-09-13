import UIKit

// TIPOLOGIE DI DATO

/*
 Int    Tutti i numeri interi positivi e negativi. Esemoio : -1. -2 , +3243, 0
 
 Float   Rappresenta l'insieme dei numeri reali, (gli Int + i numeri con la virgola).
         Esempio: -4,
 
Double  Simile al Float ma con una precisione dopo la virgola maggiore. Di default quando
        inserisci un nuemro con la virgola Swift lo interpeta come Double.
 
Character   Rappresenta i caratteri, si può assegnare un solo carattere ad una var o let,
            altrimenti diventa una stringa. Quando lo si assegna ad una var deve essere
            racchiuso tra le virgolette " ". Esempio: "a" "b" "c". Anche lo spazio vuoto è un
            carattere.

String      Più caratteri formano una stringa. Esempio "Il risultato è", "Il mio nome è Francesco"

Bool        Rappresenta la condizione di Vero (true) o False(false)

 
 */

let a: Int = 2

let b: Float = 2.123452
let bb = Int(b)

let c : Double = 2.4326453427

let d : Character = "c"

let e : String = "aaaa"

let f : Bool = false

// PERDITA DI DATO

/*
 Senza perdita di dato
 
 da Int a Float o a Double
 
 da Float a Double
 
 da Int, Float e Double in String
 
 Con perdita di dati:
 
 da Double a Float o Int (in questo caso piena perdita della parte di virgola)
 
 da Float a Int.
 
 */

// Operazioni Aritmetiche
/*
 
 +  Addizione
 -  Sottrazione
 *  Moltiplicazione
 /  Divisione

 */

let num01 = 5
let num02 = 3
let num03 = 2

let risultato = (num01 + num02) * num03

// Formattazione di una stringa

/*
 
\n      newline, va a capo
\t      tab, tabulazione
\\      è il carattere '\', backslash
\'      apice
\"      virgolette
 
 */

let testo = "il mio nome è \"francesco\""
print(testo)

// Operazioni relazionali e condizioni

/*
 
>       Maggiore di
>=      Maggiore o uguale di
<=      Minore o uguale di
<       Minore di
==      Uguale
!=      Diverso
&&      and
||      or
 */

num01 > num02 || num02 < num03






