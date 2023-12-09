//
//  ListChat.swift
//  CustomTabBar
//
//  Created by raihansyahrin on 06/12/23.
//

import SwiftUI

struct ListChat: View {
    var body: some View {
        NavigationLink{
            HomeView()
        }label: {
            HStack{
                //profile image
                Image("laundry-photo-1")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 100, height: 100)
                
                VStack(alignment: .leading, spacing: 12){
                    HStack{
                        Text("Roumah Laundry")
                            .foregroundColor(.black)
                            .font(.title3)
                            .fontWeight(.semibold)
                        Spacer()
                        Text("12.35 pm")
                            .foregroundColor(.gray)
                        
                    }
                    
                    Text("Hello, Good Afternoon. Hope you doing well ")
                        .foregroundColor(.black)
                        .lineLimit(1)
                }
                
            }
            .padding(.trailing, 20)
//           
        }
        
    }
}

struct ListChat_Previews: PreviewProvider {
    static var previews: some View {
        ListChat()
    }
}
