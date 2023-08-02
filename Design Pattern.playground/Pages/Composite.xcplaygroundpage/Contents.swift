//: [Previous](@previous)

import Foundation

// Component.swift

protocol FileSystemComponent {
    var name: String { get }
    func display()
}



// File.swift

class File: FileSystemComponent {
    let name: String

    init(name: String) {
        self.name = name
    }

    func display() {
        print("File: \(name)")
    }
}


// Folder.swift

class Folder: FileSystemComponent {
    let name: String
    private var components: [FileSystemComponent] = []

    init(name: String) {
        self.name = name
    }

    func add(component: FileSystemComponent) {
        components.append(component)
    }

    func display() {
        print("Folder: \(name)")
        for component in components {
            component.display()
        }
    }
}

// main.swift

let file1 = File(name: "file1.txt")
let file2 = File(name: "file2.txt")

let folder1 = Folder(name: "Folder 1")
folder1.add(component: file1)
folder1.add(component: file2)

let folder2 = Folder(name: "Folder 2")
folder2.add(component: file1)
folder2.add(component: file2)

let rootFolder = Folder(name: "Root Folder")
rootFolder.add(component: folder1)
rootFolder.add(component: folder2)

rootFolder.display()

