//
//  Snack.swift
//  FruiteriaMenu
//
//  Created by Cody Burgess on 10/4/23.
//

import Foundation

struct Snack: Decodable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageName: String
}

struct  SnackResponse {
    let request: [Snack]
}

struct MockData4 {
    
    static let sampleSnacks: [Snack] = [
        Snack(id: 0033,
                  name: "Nacho Box",
                  description: "Tasty",
                  price: 1.01,
                  imageName: "box 1"),
        Snack(id: 0034,
                  name: "Queso Box",
                  description: "Yummy",
                  price: 0.69,
                  imageName: "queso-box"),
        
        Snack(id: 0035,
                  name: "Elote Cup",
                  description: "Yummy",
                  price: 0.69,
                  imageName: "elote")
    ]
    
    
    
    static let snacks = [sampleSnacks].flatMap { $0 }
}
