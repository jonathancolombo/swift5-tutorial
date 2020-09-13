import UIKit


//  DICHIARAZIONE IMPLICITA ---------
var arrayImplicito = [12,23,46,96,47]

//  DICHIARAZIONE ESPLICITA ----------
var arrayEsplicito : [Int] // Dichiarazione
arrayEsplicito = [1,2,3,4,5] // Inizializzazione


//  INIZIALIZZAZIONE VUOTA ----------
var mioArray = [Int]()
print(mioArray)

//  AGGIUNGERE UN ELEMENTO ----------

mioArray.append(5)
mioArray.append(8)
mioArray.append(4)
mioArray.append(7)
mioArray.insert(2, at: 2)

//  ELIMINARE UN ELEMENTO -----------
mioArray.remove(at: 3)

//  MODIFICARE UN ELEMENTO ------------

mioArray[2] = 9

// OPERAZIONI ----------
var a = [1,2]
var b = [3,4]
var c = a + b

// LEGGERE CONTENUTO

var z = mioArray[2]

for x in c {
    print(x)
}

mioArray.isEmpty
mioArray.count
mioArray.removeLast()
