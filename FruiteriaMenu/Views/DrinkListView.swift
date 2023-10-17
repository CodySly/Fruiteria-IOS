//
//  DrinkListView.swift
//  FruiteriaMenu
//
//  Created by Cody Burgess on 9/27/23.
//

import SwiftUI

struct DrinkListView: View {
    var body: some View {
        NavigationView {
            List(MockData2.drinks, id: \.id) { drink in
                HStack{
                    Image(drink.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120, height: 90)
                        .cornerRadius(8)
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text(drink.name)
                            .font(.title2)
                            .fontWeight(.medium)
                        
                        Text("$\(drink.price, specifier: "%.2f")")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                        
                    }
                    .padding(.leading)
                }
            }
            .navigationTitle("🥛 Speciality Cup's")
            
        }
    }
}

#Preview {
    DrinkListView()
}
