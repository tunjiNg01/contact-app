//: [Previous](@previous)

import Foundation

enum Continent{
    case asia(String)
    case africa
    case northAmerical
    case southAmerical
    case europe
    case antartical
    case oceania
}

var continent = Continent.asia("North Korea")
// print(continent)

//for cont in Continent.allCases {
 //   print(cont)
// }


switch continent {
case .asia(let country):
    print("This is \(country)")
case .africa:
    print("This is AFrica")
case .northAmerical:
    print("This is NorthAmerical")
case .southAmerical:
    print("This is NorthAmerical")
case .europe:
    print("This is Europe")
case .antartical:
    print("This is Antarctica")
case .oceania:
    print("This is Oceania")
}

//: [Next](@next)
