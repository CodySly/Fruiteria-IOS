//
//  Appetizer.swift
//  FruiteriaMenu
//
//  Created by Cody Burgess on 9/26/23.
//

import Foundation

struct Appetizer: Decodable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageName: String
}

struct  AppetizerResponse {
    let request: [Appetizer]
}

struct MockData {
    
    static let sampleAppetizers: [Appetizer] = [
        Appetizer(id: 0001,
                  name: "Vanilla",
                  description: "Tasty",
                  price: 1.01,
                  imageName: "vanilla"),
        Appetizer(id: 0002,
                  name: "Chocolate",
                  description: "Yummy",
                  price: 0.69,
                  imageName: "chocolate"),
        
        Appetizer(id: 0003,
                  name: "Caramel",
                  description: "Yummy",
                  price: 0.69,
                  imageName: "caramel"),
        
        Appetizer(id: 0004,
                  name: "Cookie & Cream",
                  description: "Yummy",
                  price: 0.69,
                  imageName: "c&c"),
        
        Appetizer(id: 0005,
                  name: "BubbleGum",
                  description: "Yummy",
                  price: 0.69,
                  imageName: "BubbleGum"),
        
        Appetizer(id: 0006,
                  name: "Coconut",
                  description: "Yummy",
                  price: 0.69,
                  imageName: "coconut"),
        
        Appetizer(id: 0007,
                  name: "Strawberry",
                  description: "Yummy",
                  price: 0.69,
                  imageName: "strawberry"),
        
        Appetizer(id: 0008,
                  name: "Waterwelon",
                  description: "Yummy",
                  price: 0.69,
                  imageName: "watermelon"),
        
        Appetizer(id: 0009,
                  name: "Pecan",
                  description: "Yummy",
                  price: 0.69,
                  imageName: "pecan"),
        
        Appetizer(id: 0010,
                  name: "Pistrudo",
                  description: "Yummy",
                  price: 0.69,
                  imageName: "pistrudo"),
        
        Appetizer(id: 0011,
                  name: "Horchata",
                  description: "Yummy",
                  price: 0.69,
                  imageName: "horchata"),
        
        Appetizer(id: 0012,
                  name: "Guava",
                  description: "Yummy",
                  price: 0.69,
                  imageName: "guava"),
        
        Appetizer(id: 0013,
                  name: "Lime",
                  description: "Yummy",
                  price: 0.69,
                  imageName: "lime"),
        
        Appetizer(id: 0014,
                  name: "Mango",
                  description: "Yummy",
                  price: 0.69,
                  imageName: "mango"),
        
        Appetizer(id: 0015,
                  name: "Mango Chemoy",
                  description: "Yummy",
                  price: 0.69,
                  imageName: "mangochemoy")
        
    ]
    
    
    
    static let appetizers = [sampleAppetizers].flatMap { $0 }
}
