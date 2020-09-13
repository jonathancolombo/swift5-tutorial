import UIKit

/*
 FUNZIONI CON PARAMETRI IN INGRESSO E USCITA
 
 func nomeFunzione(<parametri>) -> <uscita> {
    <corpo funzione>
    return
 }
 */

//  CON PARAMETRI IN INGRESSO E USCITA

func saluto() {
    print("ciao")
}


func saluto2(nome: String) {
    print("Ciao: \(nome)")
}

//var a = saluto2(nome: "Paolo")
//print(a)

func contaCaratteri(dato: String) -> Int {
    var conta = 0
    
    for _ in dato {
        conta += 1
    }
    
    return conta
}
contaCaratteri(dato: "Francesco")

func calcolaMedia(array: [Int]) -> (min: Int, max: Int) {
    var minimo = array[0]
    var massimo = array[0]
    
    for valore in array {
        if valore < minimo {
            minimo = valore
        } else if valore > massimo {
            massimo = valore
        }
    }
    
    return (minimo,massimo)
}

let minMax = [1,2,3,4,56,74,243,678,23,12]

let risultato = calcolaMedia(array: minMax)
print("Il minimo è \(risultato.0) e il minimo è \(risultato.1)")
