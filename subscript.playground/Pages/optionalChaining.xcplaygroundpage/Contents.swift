//: [Previous](@previous)

import Foundation


// Creating

class Menu {
    var numberOfMeal = 2
    //init?(){
        //return nil
    //}
    
    var guestList: [Person] = []
    
    
    subscript(i: Int) -> Person {
            get {
                return guestList[i]
            }
            set {
                guestList[i] = newValue
            }
    }
    
    func numberOfGuest() -> Int?{
        return guestList.count
    }
}

class Person {
    var name: String
    var address: String
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
}

class Guest {
    var name = "Tunji"
    var mealTaken: Menu?
}



let guest = Guest()
guest.mealTaken = Menu()

if let x = guest.mealTaken?.numberOfMeal {
    print(x)
}


 //guest.mealTaken?[0] = Person(name:" tunji", address: "124 delete street")
let z = guest.mealTaken?.numberOfGuest() ?? 1

print(z)



