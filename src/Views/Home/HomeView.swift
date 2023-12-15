//
//  Home.swift
//  CustomTabBar
//
//  Created by raihansyahrin on 03/12/23.
//

import SwiftUI

struct HomeView: View {
    @State private var searchText = ""
    @State private var selectedListing: Int? = nil
    
    init(){
        UITextField.appearance(whenContainedInInstancesOf: [UISearchBar.self]).backgroundColor = .white
        UITextField.appearance(whenContainedInInstancesOf: [UISearchBar.self]).tintColor = .black
 
    }
    
    var body: some View {
        
        
        NavigationStack{
            ScrollView{
                LazyVStack(spacing: 12){
                    //header
                    HStack{
                        //location
                        VStack(alignment: .leading){
                            Text("Current Location")
                                .font(.callout)
                                .foregroundColor(.gray)
                            HStack{
                                Image(systemName: "mappin.and.ellipse")
                                    .font(.title3)
                                    .foregroundColor(.blue)
                                    .fontWeight(.bold)
                                Text("Bandung, West Java")
                                    .font(.title3)
                                    .foregroundColor(.black )
                                    .fontWeight(.semibold)
                            }
                            .padding(.top, 1)
                        }
                        Spacer()
                        
                        // notif button
                        Button {
                            print("button tap")
                        }label: {
                            Image(systemName: "bell.square")
                                .foregroundColor(.black)
                                .font(.system(size: 50))
                                .fontWeight(.ultraLight)
                        }
                    }
                    .padding()
                    
                    //search bar
                    HStack(spacing: 20){
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .font(.system(size: 25))
                        
                        
                        VStack(alignment: .leading, spacing: 2){
                            Text("Find the nearest Laundry")
                                .foregroundColor(.gray)
                                .font(.system(size: 20))
                        }
                        
                        Spacer()
                    }
                    
                    
                    .padding(.horizontal)
                    .padding(.vertical, 15)
                    
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                        //                    .stroke(lineWidth: 1)
                            .foregroundStyle(Color(.white))
                        //                    .shadow(color: .black, radius: 20)
                        
                    )
                    .padding()
                    .padding(.top, -20)
                    
                    //message
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color(red: 46 / 255, green: 167 / 255, blue: 236 / 255))
                        
                        //                    .shadow(color: Color.blue, radius:10, x: 0, y: 20)
                        //                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                        
                        HStack{
                            VStack(alignment: .leading, spacing: 22){
                                //nama laundry
                                Text("7 Eleven Laundry")
                                    .foregroundColor(.white)
                                    .font(.system(size: 16))
                                
                                Text("Your clothes will finish in 1 Days")
                                    .foregroundColor(.white)
                                    .font(.title2)
                                    .bold()
                                
                                NavigationLink{
                                    DetailsOrderView(statusLaundry: "Ongoing")
                                        .navigationBarBackButtonHidden(true)
                                        .toolbar(.hidden, for: .tabBar)
                                }label: {
                                    Text("View Details")
                                        .foregroundColor(.white)
                                        .underline()
                                        .bold()
                                }

                                
                            }
                            .padding()
                            Spacer()
                            
                            Image("washing-machine")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 150, height: 160)
                            
                        }
                        
                    }
                    .frame(width: UIScreen.main.bounds.width - 30, height: 170)
                    
                    
                    //Location laundry
                    HStack{
                        Text("Nearest laundry")
                            .foregroundColor(.black)
                            .font(.title3)
                            .fontWeight(.semibold)
                        
                        Spacer()
                        Button{
                            print("see more")
                        }label: {
                            Text("See More")
                                .foregroundColor(.blue)
                                .font(.title3)
                                .fontWeight(.regular)
                        }
                    }
                    .padding(.top, 15)
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                    .padding(.bottom, -15)
                    
                    ScrollView(.horizontal) {
                        LazyHStack(spacing: 20) {
                            ForEach(0..<3, id: \.self){ listing in
                                NavigationLink{
                                    LaundryView()
                                        .navigationBarBackButtonHidden(true)
                                        .toolbar(.hidden, for: .tabBar)
//                                        .toolbar(.hidden, for: .tabBar)
                                       
                                      
                                }label: {
                                    ListingItemView()
                                        .foregroundColor(.black)
                                }
                            }
//                            .padding(.top, -50)
                        }
                        .padding()
                    }
                    .background(Color(red: 242 / 255, green: 244 / 255, blue: 247 / 255))
                    
                    
                    Spacer()
                }
                
            }
            
            .background(Color(red: 242 / 255, green: 244 / 255, blue: 247 / 255))
            .ignoresSafeArea(.keyboard, edges: .bottom)
            
        }
    }
}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
