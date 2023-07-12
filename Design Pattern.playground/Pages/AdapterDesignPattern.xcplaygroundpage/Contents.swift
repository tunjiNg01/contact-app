//: [Previous](@previous)

import Foundation

// Define the interface that you need.
protocol Ledger {
    func createLedger()
}

// Define the existing class that you need to use.
class BankALedger: Ledger  {
    
    func generateLedger() {
        print("Bank A ledger")
    }
    
    func createLedger() {
        generateLedger()
    }
}

// The second api
class BankBLedger {
    func makeLedger() {
        print("Bank B ledger")
    }
}

extension BankBLedger: Ledger {
    func createLedger () {
       makeLedger()
    }
}


var allLedger: [Ledger] = [BankALedger(), BankBLedger()]

for ledger in allLedger {
    ledger.createLedger()
}


//let bankaledger = BankALedger()
//bankaledger.createLedger()

//let bankbledger = BankBLedger()
//bankbledger.createLedger()


