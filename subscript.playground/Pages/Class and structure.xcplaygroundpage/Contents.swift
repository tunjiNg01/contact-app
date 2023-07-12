//: [Previous](@previous)

import Foundation

struct SomeStruct {
    let name:String
}

class SomeClass {
    var age = 40
    
    func message(){
        print("some message")
    }
}

let somestruct = SomeStruct(name: "Tunji")
let someclass = SomeClass()
let someclass2 = someclass

someclass2.age = 49


someclass.message()
print(someclass.age)
print(somestruct.name)





