//
//  LocationView.swift
//  FruiteriaMenu
//
//  Created by Cody Burgess on 10/17/23.
//

import SwiftUI
import MapKit

struct LocationView: View {
    var body: some View {
        ZStack {
            Color(Color(.black))
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Fruiteria Locations")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.bottom, 25)
                VStack {
                    Text("Orem, Utah Location")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.top)
                        .foregroundColor(.white)
                        .padding(.bottom, 5)
                    Text("1549 North State St #105, Orem, UT 84057")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    MapView()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: 350, height: 250)
                        .cornerRadius(25)
                    
                }
                Spacer(minLength: 0)
                
                VStack {
                    Text("Provo, Utah Location")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.bottom, 5)
                    Text("239 Cougar Blvd, Provo, UT 84604")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    MapView2()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: 350, height: 250)
                        .cornerRadius(25)
                        .padding(.bottom, 50)
                }
            }
        }
    }
}

#Preview {
    LocationView()
}

