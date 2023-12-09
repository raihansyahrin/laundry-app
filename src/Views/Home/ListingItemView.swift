//
//  ListingItemView.swift
//  CustomTabBar
//
//  Created by raihansyahrin on 05/12/23.
//

import SwiftUI

struct ListingItemView: View {
    var body: some View {
        VStack{
            ZStack(alignment: .topLeading){
                Image("laundry-photo-1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .shadow(color: Color(.systemGray3), radius: 6)

                HStack(alignment: .firstTextBaseline){
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Text("5.0")
                        .fontWeight(.medium)
                }
                .frame(width: 60, height: 25)
                .background(Color.white.opacity(0.8))
                .font(.system(size: 14))
                .clipShape(Capsule())
                .padding(5)
            }

            VStack(alignment: .leading, spacing: 10){
                Text("Roumah Laundry")
                    //.multilineTextAlignment(.leading)
                    .font(.title3)
                    .fontWeight(.semibold)

                HStack(spacing: 40){
                    HStack{
                        Image(systemName: "mappin.and.ellipse")
                            .font(.system(size: 16))
                            .foregroundColor(.blue)
                            .fontWeight(.bold)
                        
                        Text("250 m")
                            .font(.system(size: 16))
                            .foregroundColor(Color(.systemGray))
                            .fontWeight(.semibold)
                    }
      
                    HStack(alignment: .center, spacing: 0) {
                        Text("6k")
                            .font(.system(size: 22))
                            .fontWeight(.semibold)
                        Text("/kg")
                            .font(.system(size: 18))
                            .foregroundColor(.gray)
                    }
                }
            }
            
        }
        .frame(width: 200)
        .padding()
        .background(Color.white)
        .cornerRadius(20.0)
        
    }
        
    
}


struct ListingItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListingItemView()
    }
}
