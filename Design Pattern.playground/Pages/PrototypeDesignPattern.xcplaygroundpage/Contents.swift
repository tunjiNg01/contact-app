//: [Previous](@previous)

import Foundation

class Person: NSCopying {
   
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        return Person(name: name, age: age)
    }
   
}


let prototypePerson = Person(name: "John Doe", age: 30)

let newPerson = prototypePerson.copy() as! Person

newPerson.name = "Luke Thomas"
newPerson.age = 25

print(newPerson.name)
print(newPerson.age)

