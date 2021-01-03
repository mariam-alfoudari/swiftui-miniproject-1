//
//  Bicycle.swift
//  mini-project-swiftui
//
//  Created by mariam alfoudari on 03/01/2021.
//

import Foundation

struct Bicycle: Identifiable, Hashable{
    let bicycle : String
    let numbers : String
    let id = UUID()
}
let bicycles = [
    Bicycle(bicycle: "bc1" , numbers: "1"),
    Bicycle(bicycle: "bc2", numbers: "2"),
    Bicycle(bicycle: "bc3", numbers: "3"),
    Bicycle(bicycle: "bc4", numbers: "4"),
    Bicycle(bicycle: "bc5", numbers: "5"),
    Bicycle(bicycle: "bc6", numbers: "6"),
    Bicycle(bicycle: "bc7", numbers: "7"),
]

