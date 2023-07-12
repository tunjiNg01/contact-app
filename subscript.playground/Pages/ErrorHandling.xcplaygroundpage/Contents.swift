//: [Previous](@previous)

import Foundation



enum ApiError: Error {
    
    case success(String)
    case fail
    case badRequest
    
}

// By propagating an error from the function to the code that calls the function.
 
func canThrowErr(name: String) throws -> String {
    
    guard name.contains("L") else {
        throw ApiError.success("Succeded")
    }
    
    return "No error found"
}


// print(try canThrowErr(name: "tunji"))

// Handling error using the do catch statement

do {
    try canThrowErr(name: "Hammed")
}catch ApiError.success(let message) {
    print("successful: \(message)")
}catch ApiError.fail {
    print("failed")
}

do {
    try canThrowErr(name: "Tunji")
}catch is ApiError {
    print("An error is thrown!")
}


do {
    
    try canThrowErr(name: "Tunji")
    
}catch ApiError.success(let message) {
    print("successful: \(message)")
}catch ApiError.badRequest, ApiError.fail {
    
    print("An error is thrown!")
    
}

// converting an error as an optional value




//: [Next](@next)
