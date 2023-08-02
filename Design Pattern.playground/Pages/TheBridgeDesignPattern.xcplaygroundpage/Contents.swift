//: [Previous](@previous)

import Foundation

// Abstraction

protocol Shape {
    var color: Color {get set};
    func draw();
}
// Step 2: Define the Implementor.
protocol Color {
    func applyColor()
}
// Step 3: Concrete Implementor.
class RedColor: Color {
    func applyColor() {
        print("Applying red color")
    }
}

// BlueColor.swift

class BlueColor: Color {
    func applyColor() {
        print("Applying blue color")
    }
}

class Rectangle: Shape {
    var color: Color
    
    init(color: Color){
        self.color = color
    }
    func draw() {
        print("Drawing rectangle")
        color.applyColor()
    }
    
}

var blue = BlueColor()
var red = RedColor()

var rectangle = Rectangle(color: red)
rectangle.draw()
