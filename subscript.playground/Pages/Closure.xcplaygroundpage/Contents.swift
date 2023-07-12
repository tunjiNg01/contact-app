//: [Previous](@previous)

import Foundation

// {(parameter) -> <Returntype> in <Statement>}

var animals = ["dog", "hen", "cow", "cat"]

var sortedAnimals = animals.sorted{ $1 > $0}

print(sortedAnimals)

var numbers = [2,4,3,6,7,9]

let squareNum = numbers.map {
    num in return num * num
}

print(squareNum)


func stringGenerator(s1: String) -> () -> String {
    var fullText = ""
    
    func concat() -> String {
        fullText = fullText + " " + s1
        return fullText
    }
    
    return concat
}

let strinCon = stringGenerator(s1: "Thomas")

print(strinCon())
print(strinCon())
print(strinCon())

var stringCon2 = strinCon
print(stringCon2())


var handler: [() -> Void] = []
func escapingClosure(completionHandler: @escaping () -> Void)
{
    handler.append(completionHandler)
    
    return
}



