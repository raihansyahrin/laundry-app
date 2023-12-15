//
//  ListProfile.swift
//  CustomTabBar
//
//  Created by raihansyahrin on 05/12/23.
//

import SwiftUI

struct ListProfile: View {
    let img : String
    let nameSetting : String
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationLink{
            Text("Build not yet")
        }label: {
            HStack(spacing: 20){
                Image(systemName: img)
                    .foregroundColor(.blue)
                    .font(.system(size: 35))
                
                Text(nameSetting)
                    .font(.title2)
                    .fontWeight(.regular)
                    .foregroundColor(.black)
                
                Spacer()
                
                Image(systemName: "arrow.forward")
            }
            .padding()
            .frame(width: UIScreen.main.bounds.width - 30, height: 80)
            .background(Color.white)
            .cornerRadius(20.0)
            
            
            
        }
        
    }
}

struct ListProfile_Previews: PreviewProvider {
    static var previews: some View {
        ListProfile(img: "house", nameSetting: "Hallo")
    }
}
