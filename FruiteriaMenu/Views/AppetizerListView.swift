//
//  AppetizerListView.swift
//  FruiteriaMenu
//
//  Created by Cody Burgess on 9/26/23.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationView {
            List(MockData.appetizers, id: \.id) { appetizer in
                HStack{
                    Image(appetizer.imageName)
                        .resizable()
                        .frame(width: 120, height: 90)
                        .cornerRadius(8)
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text(appetizer.name)
                            .font(.title2)
                            .fontWeight(.medium)
                        
                        Text("$\(appetizer.price, specifier: "%.2f")")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                        
                    }
                    .padding(.leading)
                }

                
            }
                .navigationTitle("🍦 Ice Cream Flavors")

        }
    }

}

