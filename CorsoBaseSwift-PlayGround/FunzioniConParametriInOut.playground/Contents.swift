import UIKit

/*
    FUNZIONI
    
    func nomeFunzione(inout <parametri>) {
        <corpo funzione>
    }
 
 */

// esempio senza parametri inout

var a = 2
a = 5
a += 1

func modifica(variabile: Int) {
    
    let b = variabile + 5
    print(b)
}

modifica(variabile: 3)

print("---------------")

// Utilizzo parametro inout
func scambiaValore(valore: inout Int) {
    valore += 5
}

scambiaValore(valore: &a)
print(a)

print("---------------")

// Senza utilizzo dei parametri inout
var d = 5

func scambio() {
    d += 3
}

scambio()

print("---------------")
//  Altri tipi


func incrementaArray(array: inout [Int]) -> [Int] {
    array.append(44)
    array[0] = 15
    
    
    return array
}

var mioArray = [4,34,78,90]
incrementaArray(array: &mioArray)






