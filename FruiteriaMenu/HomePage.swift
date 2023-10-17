import SwiftUI

struct HomePage: View {
     // Track the navigation state
    @State private var presentSideMenu = false
    @State private var isAppetizerListActive = false
    @State private var isDrinkListActive = false
    @State private var isPaletaListActive = false
    @State private var isSnackListActive = false
    @State private var isOrderViewActive = false
    @State private var isAboutUsActive = false
    @State private var isLocationActive = false
    
    var body: some View {
            NavigationView {
                ZStack{
                    Color(Color(.black))
                        .edgesIgnoringSafeArea(.all)
                ScrollView{
                    VStack{
                        HStack {
                            Button {
                                presentSideMenu.toggle()
                            } label: {
                                    Image(systemName: "list.bullet")
                                        .font(.title2)
                                        .padding(10)
                                        .foregroundColor(Color.white)
                                        .cornerRadius(10)
                                }
                            
                            
                            Spacer()
                            // Handle the action for the "gear" button here
                            Button(action: {
                                
                            }, label: {
                                Image(systemName: "person")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30)
                                    .padding(10)
                                    .foregroundColor(Color.white)
                                    .cornerRadius(10)
                            })
                        }
                        .overlay(
                            HStack(spacing: 5) {
                                Image(systemName: "mappin.and.ellipse")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 18, height: 18)
                                    .foregroundColor(Color.white)
                                
                                Text("Utah, US")
                                    .font(.footnote)
                                    .fontWeight(.bold)
                                    .foregroundColor(.yellow)
                            }
                        )
                        .padding()
                    }
                    
                    // Fruiteria logo
                    
                    VStack(spacing: 0) {
                        Image("fruiteria")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 100)
                            .padding()
                        Spacer(minLength: 0)
                    }
                    
                    //Delivery Input and Button
                    
                    HStack(spacing: 20){
                        VStack(alignment: .leading, spacing: 8, content: {
                            (
                                Text("The Fastest in Food ")
                                +
                                Text("Delivery")
                                    .foregroundColor(Color.red)
                                    .fontWeight(.semibold)
                            )
                            .font(.title2)
                            .fontWeight(.bold)
                            
                            NavigationLink(
                                destination: OrderView(),
                                isActive: $isOrderViewActive,
                                label: {
                                    Text("Order Now")
                                        .font(.footnote)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                        .padding(.vertical,10)
                                        .padding(.horizontal)
                                        .background(Color(.red))
                                        .clipShape(Capsule())
                                }
                            )
                            
                        })
                        .padding(.leading)
                        
                        Spacer(minLength: 0)
                        
                        Image(systemName: "cart")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 90, height: 90)
                            .padding(.trailing)
                        
                    }
                    
                    .padding()
                    .background(Color(.orange))
                    .cornerRadius(25)
                    .padding(.horizontal)
                    
                    //Categories View...
                    
                    Text("🍦 Menu Caregories")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding()
                        .foregroundColor(.white)
                    
                    
                    
                    ScrollView(.horizontal, showsIndicators: false,
                               content: {
                        HStack{
                            NavigationLink(
                                destination: AppetizerListView(),
                                isActive: $isAppetizerListActive,
                                label: {
                                    VStack{
                                        Image("mangochemoy")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 90, height: 90)
                                            .padding(5)
                                        
                                        Text("Ice Cream")
                                            .font(.footnote)
                                            .fontWeight(.semibold)
                                            .foregroundColor(Color.white)
                                    }
                                }
                            )
                            NavigationLink(
                                destination: PaletaListView(),
                                isActive: $isPaletaListActive,
                                label: {
                                    VStack{
                                        Image("lime 1")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 90, height: 90)
                                            .padding(5)
                                        
                                        Text("Paleta Flavors")
                                            .font(.footnote)
                                            .fontWeight(.semibold)
                                            .foregroundColor(Color.white)
                                    }
                                }
                            )
                            NavigationLink(
                                destination: DrinkListView(),
                                isActive: $isDrinkListActive,
                                label: {
                                    VStack{
                                        Image("mm")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 90, height: 90)
                                            .padding(5)
                                        
                                        Text("Speciality Cup")
                                            .font(.footnote)
                                            .fontWeight(.semibold)
                                            .foregroundColor(Color.white)
                                    }
                                }
                            )
                            NavigationLink(
                                destination: SnackListView(),
                                isActive: $isSnackListActive,
                                label: {
                                    VStack{
                                        Image("queso-box")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 90, height: 90)
                                            .padding(5)
                                        
                                        Text("Snacks")
                                            .font(.footnote)
                                            .fontWeight(.semibold)
                                            .foregroundColor(Color.white)
                                    }
                                }
                            )
                        }
                    })
                    .padding()
                    .background(Color(.blue))
                    .cornerRadius(15)
                    .padding(.horizontal)
                    
                    HStack(spacing: 25){
                        NavigationLink(
                            destination: LocationView(),
                            isActive: $isLocationActive,
                            label: {
                                
                                VStack {
                                    Text("Locations")
                                        .font(.footnote)
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)
                                    Image(systemName: "mappin.and.ellipse")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 40, height: 60)
                                        .foregroundColor(.black)
                                        .padding(5)
                                }
                            })
                        
                        VStack{
                            Text("Developed By")
                                .font(.footnote)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                            Image("ExiledLogo")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width:60, height:60)
                                .padding(5)
                        }
                        NavigationLink(
                            destination: AboutUsView(),
                            isActive: $isAboutUsActive,
                            label: {
                                
                                HStack{
                                    VStack {
                                        Text("About Us")
                                            .font(.footnote)
                                            .fontWeight(.bold)
                                            .foregroundColor(.black)
                                        Image("Strawberry-logo")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 60, height: 60)
                                            .padding(5)
                                    }
                                }
                            })
                    }
                    .padding()
                    .background(Color(.white))
                    .cornerRadius(15)
                    .padding(.horizontal)
                    .padding(.vertical)
                }
                   SideMenu()
                        .frame(width: 300, height: 700)
                        .cornerRadius(25)
            }

        }
        
    }
    @ViewBuilder
    private func SideMenu() -> some View {
        FruiteriaMenu.SideMenu(isShowing: $presentSideMenu,
                 direction: .leading) {
            SideViewContents(presentSideMenu: $presentSideMenu)
                .frame(width: 300)
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}


