//
//  SnackListView.swift
//  FruiteriaMenu
//
//  Created by Cody Burgess on 10/4/23.
//

import SwiftUI

struct SnackListView: View {
    var body: some View {
            NavigationView {
                List(MockData4.snacks, id: \.id) { snack in
                    HStack{
                        Image(snack.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 120, height: 90)
                            .cornerRadius(8)
                        
                        VStack(alignment: .leading, spacing: 5) {
                            Text(snack.name)
                                .font(.title2)
                                .fontWeight(.medium)
                            
                            Text("$\(snack.price, specifier: "%.2f")")
                                .foregroundColor(.secondary)
                                .fontWeight(.semibold)
                        }
                        .padding(.leading)
                    }
                }
                .navigationTitle("🥡 Snacks")
            }
      
    }
}

#Preview {
    SnackListView()
}
