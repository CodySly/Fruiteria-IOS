//
//  Drinks.swift
//  FruiteriaMenu
//
//  Created by Cody Burgess on 9/27/23.
//

import Foundation

struct Drink: Decodable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageName: String
}

struct  DrinkResponse {
    let request: [Drink]
}

struct MockData2 {
    
    static let sampleDrinks: [Drink] = [
        Drink(id: 0016,
                  name: "Diablo Cup",
                  description: "Tasty",
                  price: 1.01,
                  imageName: "DiabloCup"),
        Drink(id: 0017,
                  name: "Mango Chemoy",
                  description: "Yummy",
                  price: 0.69,
                  imageName: "mm"),
        
        Drink(id: 0018,
                  name: "Fresca Con Cream",
                  description: "Yummy",
                  price: 0.69,
                  imageName: "Frecsa Con Cream"),
        
        Drink(id: 0019,
                  name: "Fresca Banana",
                  description: "Yummy",
                  price: 0.69,
                  imageName: "Frecsa-Bannan"),
        
        Drink(id: 0020,
                  name: "Lime Augua Fresca",
                  description: "Yummy",
                  price: 0.69,
                  imageName: "lime Augua fresca")
        
        

        
    ]
    
    
    
    static let drinks = [sampleDrinks].flatMap { $0 }
}
