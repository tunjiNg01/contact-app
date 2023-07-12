//: [Previous](@previous)

import Foundation

// Component
protocol Coffee {
    func getCost() -> Double
    func getDescription() -> String
}

// Concrete Component
class SimpleCoffee: Coffee {
    func getCost() -> Double {
        return 1.0
    }
    
    func getDescription() -> String {
        return "Simple coffee"
    }
}

// Decorator
class CoffeeDecorator: Coffee {
    let decoratedCoffee: Coffee
    
    init(coffee: Coffee) {
        self.decoratedCoffee = coffee
    }
    
    func getCost() -> Double {
        return decoratedCoffee.getCost()
    }
    
    func getDescription() -> String {
        return decoratedCoffee.getDescription()
    }
}

// Concrete Decorators
class MilkDecorator: CoffeeDecorator {
    override func getCost() -> Double {
        return super.getCost() + 0.5
    }
    
    override func getDescription() -> String {
        return super.getDescription() + ", with milk"
    }
}

class SugarDecorator: CoffeeDecorator {
    override func getCost() -> Double {
        return super.getCost() + 0.2
    }
    
    override func getDescription() -> String {
        return super.getDescription() + ", with sugar"
    }
}

// Usage
let simpleCoffee: Coffee = SimpleCoffee()
print(simpleCoffee.getDescription()) // Output: Simple coffee
print(simpleCoffee.getCost()) // Output: 1.0

let coffeeWithMilk: Coffee = MilkDecorator(coffee: simpleCoffee)
print(coffeeWithMilk.getDescription()) // Output: Simple coffee, with milk
print(coffeeWithMilk.getCost()) // Output: 1.5

let coffeeWithMilkAndSugar: Coffee = SugarDecorator(coffee: coffeeWithMilk)
print(coffeeWithMilkAndSugar.getDescription()) // Output: Simple coffee, with milk, with sugar
print(coffeeWithMilkAndSugar.getCost()) // Output: 1.7

