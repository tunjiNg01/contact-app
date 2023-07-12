//: [Previous](@previous)

import Foundation

protocol Component {
    func performOperation()
}

class Leaf: Component {
    func performOperation() {
        // Perform operation for the leaf object
    }
}

class Composite: Component {
    private var childComponents: [Component] = []

    func addComponent(_ component: Component) {
        childComponents.append(component)
    }

    func removeComponent(_ component: Component) {
        childComponents.removeAll { $0 === component }
    }

    func performOperation() {
        // Perform operation for the composite object
        // This can include performing operations on child components recursively
        for component in childComponents {
            component.performOperation()
        }
    }
}



let leaf1 = Leaf()
let leaf2 = Leaf()
let composite = Composite()
composite.addComponent(leaf1)
composite.addComponent(leaf2)

composite.performOperation()

