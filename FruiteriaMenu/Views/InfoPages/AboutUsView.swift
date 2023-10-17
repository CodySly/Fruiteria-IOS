//
//  AboutUsView.swift
//  FruiteriaMenu
//
//  Created by Cody Burgess on 10/5/23.
//

import SwiftUI

struct AboutUsView: View {
    var body: some View {
            ZStack {
                Color(Color(.purple))
                    .edgesIgnoringSafeArea(.all)
                ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, content: {
                    
                    Text("Welcome to Fruiteria")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top)
                    Spacer(minLength: -50)
                    
                    HStack {
                        Text("      Where the vibrant flavors of authentic Mexican Ice Cream, treats and drinks is a haven for those seeking a unique and delicious treat experience. We take pride in crafting the finest artisanal authentic mexican treats, inspired by the rich culinary traditions of Mexico. We believe that a dessert should be a celebration of flavors, and we infuse each with the authentic tastes and ingredients that define Mexican cuisine.")
                            .padding(.vertical, 25)
                            .padding(.horizontal, 25)
                            .foregroundColor(.white)
                            .font(.footnote)
                        
                        Image("Cartoon-watermelon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width:100, height: 100)
                            .padding(10)
                    }
                    
                    .background(Color(.brown))
                    .cornerRadius(25)
                    .frame(width: 350, height: 500)
                    
                    HStack {
                        
                        Image("Mango 2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 300)
                            .padding(10)
                        
                        Text("      We carefully source the freshest, high-quality ingredients to create the variety of desserts offered, paying homage to the vibrant fruits, spices, candies, and traditonal sweets that make Mexican cuisine so extraordinary. From the moment you step into our shop, you will be greeted by the vibrant colors and enticing aromas of freshly made ice cream on display. Our warm and friendly staff is here to guide you through a mouthwatering array of flavors, from classics like creamy vanilla and rich chocolate to adventurous creations like horchata, tres leches and exotic fruit sorbets.")
                            .padding(.vertical, 25)
                            .padding(.horizontal, 25)
                            .foregroundColor(.purple)
                            .font(.footnote)
                    }
                    
                    .background(Color(.yellow))
                    .cornerRadius(25)
                    .frame(width: 350, height: 500)
                    
                    HStack {
                        Text("      Every dessert is handcrafted with love and attention to detail. We take pride in our commitment to using traditional methods, blending age-old recipes with a touch of innovation to create unique and unforgettable flavor combinations. Whether you're a lifelong lover of Mexican cuisine or simply looking to embark on a culinary adventure, we invite you to indulge your senses and savor the authentic taste of Mexico in every bit.")
                            .padding(.vertical, 25)
                            .padding(.horizontal, 25)
                            .foregroundColor(.black)
                            .font(.footnote)
                        
                        Image("strawberry 2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .padding(10)
                    }
                    
                    .background(Color(.blue))
                    .cornerRadius(25)
                    .frame(width: 350, height: 500)
                    
                    HStack {
                        
                        Image("lime 2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .padding(10)
                        
                        Text("      We are more than just a dessert shop; it's a gathering place for friends, families, and communities. We strive to create a warm and welcoming atmosphere where people can connect, create memories, and share their love for delicious frozen treats. It's a place where laughter echoes, stories are exchanged, and the joy of discovery is celebrated. We are dedicated to sustainability and supporting local farmers and vendor. By partnering with local suppliers, we ensure that the ingredients we use are of the highest quality while contributing to the growth and well-being of our community.")
                            .padding(.vertical, 25)
                            .padding(.horizontal, 25)
                            .foregroundColor(.black)
                            .font(.footnote)

                    }
                    .background(Color(.gray))
                    .cornerRadius(25)
                    .frame(width: 350, height: 500)
                    
                    HStack {
                        Text("      So come on in and experience the true flavors of Mexico. Whether you're enjoying one of our variety of Paletas on a sunny day or treating yourself to a handcrafted Diablo Cup for a special occasion, Fruiteria promises and unforgettable culinary journey that will transport you to the streets of Mexico City, the beaches of Cancun, or the colorful markets of Oaxaca.")
                            .padding(.vertical, 25)
                            .padding(.horizontal, 25)
                            .foregroundColor(.black)
                            .font(.footnote)
                        
                        Image("Pineapple")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .padding(10)
                    }
                    .background(Color(.white))
                    .cornerRadius(25)
                    .frame(width: 350, height: 500)
                    
                    
                    
                })// VStack
                .padding(0.5)
            } // Scroll View
                .background(Color(.cyan))
                .cornerRadius(25)
                .frame(width: 350, height: 780)
                
        } // ZStack
    } // Body View
} //View
#Preview {
    AboutUsView()
}
