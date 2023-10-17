//
//  SideViewContents.swift
//  FruiteriaMenu
//
//  Created by Cody Burgess on 10/11/23.
//

import SwiftUI

struct SideViewContents: View {
    @Binding var presentSideMenu: Bool
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 25) {
                VStack(alignment: .center, spacing: 25) {
                    HStack {
                        Button {
                            presentSideMenu.toggle()
                        } label: {
                            
                            Image(systemName: "x.circle")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                                .foregroundColor(.white)
                                .padding(.top, 50)
                                .padding(.leading)
                        }
                    }
                }
                VStack {
                    HStack {
                        Text("Fruiteria Menu")
                            .foregroundColor(.purple)
                            .font(.title)
                            .fontWeight(.bold)
                            .padding()
                    }
                    Spacer(minLength: 0)
                    HStack{
                        NavigationLink(
                            destination: AppetizerListView(),
                            label: {
                                Text("Ice Cream Menu")
                                    .font(.footnote)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                Image("vanilla")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 60, height: 60)
                                    .padding(5)
                            }
                        )
                    }
                    .padding()
                    .background(Color(.blue))
                    .cornerRadius(15)
                    .padding(.horizontal)
                    
                    Spacer(minLength: 0)
                    HStack {
                        NavigationLink(
                            destination: PaletaListView(),
                            label: {
                                Text("Paletas Flavors")
                                    .font(.footnote)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                Image("vanilla 1")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 60, height: 60)
                                    .padding(5)
                            }
                        )
                    }
                    .padding()
                    .background(Color(.purple))
                    .cornerRadius(15)
                    .padding(.horizontal)
                    
                    Spacer(minLength: 0)
                    HStack {
                        NavigationLink(
                            destination: DrinkListView(),
                            label: {
                                Text("Speciality Cup")
                                    .font(.footnote)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                Image("mm")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 60, height: 60)
                                    .padding(5)
                            }
                        )
                    }
                    .padding()
                    .background(Color(.orange))
                    .cornerRadius(15)
                    .padding(.horizontal)
                    
                    Spacer(minLength: 0)
                    HStack {
                        NavigationLink(
                            destination: SnackListView(),
                                label: {
                                    Text("Traditional Snacks")
                                        .font(.footnote)
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                    Image("queso-box")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 60, height: 60)
                                        .padding(5)
                            }
                        )
                    }
                    .padding()
                    .background(Color(.cyan))
                    .cornerRadius(15)
                    .padding(.horizontal)
                    
                    Spacer(minLength: 0)
                }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                } // VStack
                .frame(maxWidth: .infinity)
                .background(.black)
            } // ZStack
        } // Body View
    @ViewBuilder
    private func SideMenuTopView() -> some View {
    }
}// Top View

    

