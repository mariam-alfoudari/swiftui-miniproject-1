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
    let price : Int
    let id = UUID()
}
let bicycles = [
    Bicycle(bicycle: "bc1" , numbers: "1",price: 16),
    Bicycle(bicycle: "bc2", numbers: "2",price: 19),
    Bicycle(bicycle: "bc3", numbers: "3",price: 22),
    Bicycle(bicycle: "bc4", numbers: "4",price: 45),
    Bicycle(bicycle: "bc5", numbers: "5",price: 12),
    Bicycle(bicycle: "bc6", numbers: "6",price: 15),
    Bicycle(bicycle: "bc7", numbers: "7",price: 21),
]

