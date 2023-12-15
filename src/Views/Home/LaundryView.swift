//
//  LaundryView.swift
//  CustomTabBar
//
//  Created by raihansyahrin on 07/12/23.
//

import SwiftUI

struct LaundryView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var btnBack : some View { Button(action: {
           self.presentationMode.wrappedValue.dismiss()
           }) {
               HStack {
                   Image(systemName: "arrow.backward") // set image here
                       .aspectRatio(contentMode: .fit)
                       .foregroundColor(.black)
                       .font(.system(size: 25))
                
               }
           }
       }
    var body: some View {

        NavigationStack{
            ScrollView{
                LazyVStack{
                    Text("Roumah Laundry")
                        .foregroundColor(.black)
                        .font(.title)
                        .fontWeight(.semibold)
                        .padding()
                    
                    
                    HStack(spacing: 10){
                        HStack{
                            Image(systemName: "mappin.and.ellipse")
                                .foregroundColor(.blue)
                            
                            Text("Jl.Sukabirus No.32")
                                .foregroundColor(.gray)
                                .fontWeight(.medium)
                        }
                        .font(.system(size: 15))
                        .frame(width: 180, height: 40)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .strokeBorder(Color(.systemGray5), lineWidth: 1)
                                .background(RoundedRectangle(cornerRadius: 10).foregroundStyle(Color.white))
                        )
                        
                        HStack{
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                            
                            Text("5.0 (324 Reviews)")
                                .foregroundColor(.gray)
                                .fontWeight(.medium)
                        }
                        .font(.system(size: 15))
                        .frame(width: 160, height: 40)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .strokeBorder(Color(.systemGray6), lineWidth: 1)
                                .background(RoundedRectangle(cornerRadius: 10).foregroundStyle(Color.white))
                        )
                    }
                    .padding(.horizontal)
                    
                    Image("laundry-photo-1")
                        .resizable()
//                        .scaledToFit()
                        // Pastikan gambar memiliki dimensi yang memadai
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .frame(width: 350, height: 160)
                        .padding()
                    
                    ScrollView{
                        HStack{
                            Text("Order list")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .foregroundColor(.black)
                            Spacer()
                            Button("Add category"){
                                print("add category")
                            }
                        }
                        .padding(.top, 15)
                        .padding()
                        
                        VStack(spacing: 20){
                            ListLaundry()
                        }
                        
                    }
                    .background(Color(red: 242 / 255, green: 244 / 255, blue: 247 / 255))
                    .cornerRadius(30)
                    
                       
                    Spacer()
                   
                }
                .background(.white)
                .padding(.top, 20)
            }
            .navigationBarBackButtonHidden(true)
//            .navigationTitle("Details Order")
//            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading: btnBack)
            .toolbar{
                Button{
                    print("Hello")
                }label: {
                    Image(systemName: "ellipsis.circle")
                        .foregroundColor(.black)
                        .font(.system(size: 25))
                }
            }
            
//            .background(Color(red: 242 / 255, green: 244 / 255, blue: 247 / 255))
        }
    }
}

struct LaundryView_Previews: PreviewProvider {
    static var previews: some View {
        LaundryView()
    }
}
