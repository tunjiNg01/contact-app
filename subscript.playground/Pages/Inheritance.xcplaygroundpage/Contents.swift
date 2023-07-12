//: [Previous](@previous)

import Foundation

// Defining the base class
class School {
    let averageAge = 27
    var studentList: [String] = ["Thoma", "Lee", "Wang"]
    func numberOfStudent() -> Int {
        return studentList.count
    }
    func attendance(){
        
    }
}

// Subclass
 

class Room: School {
    
    override var studentList: [String]
    {
        get {
            return super.studentList
        }
        set{
            super.studentList = newValue
        }
    }
}

var room = Room()
room.studentList = ["Jade", "Mike", "Mary"]
print(room.studentList)

// preventing an override
