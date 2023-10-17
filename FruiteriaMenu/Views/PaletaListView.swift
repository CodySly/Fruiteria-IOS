//
//  PaletaListView.swift
//  FruiteriaMenu
//
//  Created by Cody Burgess on 10/3/23.
//

import SwiftUI

struct PaletaListView: View {
    var body: some View {
        NavigationView {
            List(MockData3.paletas, id: \.id) { paleta in
                HStack{
                    Image(paleta.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120, height: 90)
                        .cornerRadius(8)
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text(paleta.name)
                            .font(.title2)
                            .fontWeight(.medium)
                        
                        Text("$\(paleta.price, specifier: "%.2f")")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                    }
                    .padding(.leading)
                }
            }
            .navigationTitle("🍭 Paleta Flavors")
        }
    }
}

#Preview {
    PaletaListView()
}
