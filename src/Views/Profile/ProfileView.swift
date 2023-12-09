//
//  ProfileView.swift
//  CustomTabBar
//
//  Created by raihansyahrin on 03/12/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    VStack(spacing: 7){
                        Image("laundry-photo-1")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 130, height: 130)
                        
                        Text("Aisyah Nabilla")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .padding(.top, 10)
                        
                        Text("ID : 031003")
                            .fontWeight(.regular)
                    }
                    
                    VStack(alignment: .trailing, spacing: 10){
                        ListProfile(img: "person.circle", nameSetting: "Account")
                        ListProfile(img: "globe", nameSetting: "Language")
                        ListProfile(img: "bell", nameSetting: "Notification")
                        ListProfile(img: "hexagon", nameSetting: "Preferece")
                        ListProfile(img: "exclamationmark.octagon", nameSetting: "Help & Center")
                    }
                    .padding()
                    
                    Spacer()
                    
                }
                
            }
            .navigationTitle("Profile")
            .background(Color(red: 242 / 255, green: 244 / 255, blue: 247 / 255))
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
