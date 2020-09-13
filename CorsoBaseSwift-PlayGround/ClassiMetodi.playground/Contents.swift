import UIKit

var str = "Hello, playground"
/*
 Classe Cliente con Metodi
 
 */

class Cliente {
    // Attributi
    
    let codice : String
    var saldo : Double?
    
    init(nuovoCodice: String) {
        self.codice = nuovoCodice
    }
    
    // Funzioni
    func versamento(importo: Double) -> Void {
        
        controlloSaldoNil()
        
        self.saldo! = self.saldo! + importo
    }
    
    // Metodo prelievo
    
    func prelievo(importo: Double) -> Void {
        
        controlloSaldoNil()
        
        guard self.saldo! > importo else {
            print("Puoi prelevare massimo \(self.saldo!)")
            return
        }
        
        self.saldo! -= importo
    }
    
    func stampaSaldo() -> Void {
        
       controlloSaldoNil()
        
        print("Il cliente \(self.codice) ha un saldo di \(self.saldo!)")
    }
    
    private func controlloSaldoNil() -> Void {
        guard self.saldo != nil else {
            print("Ancora devi inizializzare la proprietà saldo")
            return
        }
    }
    
}

var francesco = Cliente.init(nuovoCodice: "2222")
francesco.saldo = 1000
francesco.stampaSaldo()
francesco.versamento(importo: 200)
francesco.stampaSaldo()
francesco.prelievo(importo: 1300)
francesco.stampaSaldo()

