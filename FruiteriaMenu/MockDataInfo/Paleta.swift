//
//  Paleta.swift
//  FruiteriaMenu
//
//  Created by Cody Burgess on 10/3/23.
//

import Foundation

struct Paleta: Decodable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageName: String
}

struct  PaletaResponse {
    let request: [Paleta]
}

struct MockData3 {
    
    static let samplePaletas: [Paleta] = [
        Paleta(id: 0021,
                  name: "Bubble Gum",
                  description: "Tasty",
                  price: 1.01,
                  imageName: "bubblegum 1"),
        Paleta(id: 0022,
                  name: "Caramel",
                  description: "Yummy",
                  price: 0.69,
                  imageName: "caramel 1"),
        
        Paleta(id: 0023,
                  name: "Coconut",
                  description: "Yummy",
                  price: 0.69,
                  imageName: "coconut 1"),
        
        Paleta(id: 0024,
                  name: "Gooseberry",
                  description: "Yummy",
                  price: 0.69,
                  imageName: "gooseberry"),
        
        Paleta(id: 0025,
                  name: "Guava",
                  description: "Yummy",
                  price: 0.69,
                  imageName: "guava 1"),
        Paleta(id: 0026,
                  name: "Lime",
                  description: "Tasty",
                  price: 1.01,
                  imageName: "lime 1"),
        Paleta(id: 0027,
                  name: "Mango",
                  description: "Yummy",
                  price: 0.69,
                  imageName: "mango 1"),
        
        Paleta(id: 0028,
                  name: "MangoChamoy",
                  description: "Yummy",
                  price: 0.69,
                  imageName: "mangochamoy"),
        
        Paleta(id: 0029,
                  name: "Pistachio",
                  description: "Yummy",
                  price: 0.69,
                  imageName: "pist"),
        
        Paleta(id: 0030,
                  name: "Strawberry",
                  description: "Yummy",
                  price: 0.69,
                  imageName: "strawberry 1"),
        
        Paleta(id: 0031,
                  name: "Vanilla",
                  description: "Tasty",
                  price: 1.01,
                  imageName: "vanilla 1"),
        
        Paleta(id: 0032,
                  name: "Watermelon",
                  description: "Yummy",
                  price: 0.69,
                  imageName: "watermelon 1")
        
        
    ]
    
    
    
    static let paletas = [samplePaletas].flatMap { $0 }
}

