//: [Previous](@previous)

import Foundation
// Abstraction
protocol Shape {
    func draw()
}

// Implementation
class Circle: Shape {
    func draw() {
        print("Drawing a circle")
    }
}

class Square: Shape {
    func draw() {
        print("Drawing a square")
    }
}

// Bridge
class ShapeBridge {
    private let shape: Shape

    init(shape: Shape) {
        self.shape = shape
    }

    func draw() {
        shape.draw()
    }
}

// Client
let circle = Circle()
let square = Square()

let circleBridge = ShapeBridge(shape: circle)
let squareBridge = ShapeBridge(shape: square)

circleBridge.draw() // Prints "Drawing a circle"
squareBridge.draw() // Prints "Drawing a square"

//: [Next](@next)
