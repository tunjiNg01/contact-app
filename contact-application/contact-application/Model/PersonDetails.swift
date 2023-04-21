//
//  PersonDetails.swift
//  contact-application
//
//  Created by MACBOOK PRO on 21/04/2023.
//

import Foundation

struct Name {
    let title: String
    let first: String
    let last: String
}

struct Street {
    let number: Int
    let name: String
}

struct Location{
    let street: Street
    let city: String
    let state: String
    let country: String
    let post: Int
}
struct Dob {
    let date: Date
    let age: Int
}

struct Pictures {
    let large: String
    let medium: String
    let thumbnail: String
}


struct PersonDetails {
    let name: Name
    let location: Location
    let email: String
    let dob: Dob
    let phone: String
    let cell: String

    
    
}
