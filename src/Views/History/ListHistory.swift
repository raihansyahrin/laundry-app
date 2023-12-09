//
//  ListHistory.swift
//  CustomTabBar
//
//  Created by raihansyahrin on 06/12/23.
//

import SwiftUI

struct ListHistory: View {
    let nameLaundry : String
    let statusLaundry : String
    let imgWashing : String
    let imgCleaning : String
    let imgDrying : String
    let imgDeliver : String

    var body: some View {
        VStack(spacing: 17){
            HStack{
                Text(nameLaundry)
                    .font(.title2)
                Spacer()
                Text(statusLaundry)
                    .font(.system(size: 14))
                    .foregroundColor(.white)
                    .frame(width: 95, height:25)
                    .background(statusLaundry == "Completed" ? Color.green : Color.yellow)
                    .clipShape(Capsule())
                    
                    
            }
//            .padding(.top, 10)
            
            HStack{
                Text("December 7, 2023/07.35 pm")
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
                Spacer()
            }
//            .padding(.vertical)
            
            Divider()

            HStack{
                StatusLaundry(statusLaundry: statusLaundry, imgWashing: imgWashing, imgCleaning: imgCleaning, imgDrying: imgDrying, imgDeliver: imgDeliver)
            }
//            .padding(.vertical)
        }
        .frame(height: 110)
        .padding()
        .background(Color.white)
        .cornerRadius(20.0)
    }
}

struct StatusLaundry: View {
    let statusLaundry : String
    let imgWashing : String
    let imgCleaning : String
    let imgDrying : String
    let imgDeliver : String
    
    var body: some View {
        HStack(spacing: 24){
            HStack(spacing: 3){
                Image(systemName: imgWashing)
                    .font(.system(size: 14))
                    .foregroundColor(.blue)
                Text("Washing")
                    .font(.system(size: 12))
                    .minimumScaleFactor(0.01)
            }
            
            
            HStack(spacing: 3){
                Image(systemName: imgCleaning)
                    .font(.system(size: 14))
                    .foregroundColor(.blue)
                Text("Cleaning")
                    .font(.system(size: 12))
                    .minimumScaleFactor(0.01)
            }
            
            HStack(spacing: 3){
                Image(systemName: imgDrying)
                    .font(.system(size: 14))
                    .foregroundColor(statusLaundry == "Ongoing" ? Color.gray : Color.blue)
                Text("Drying")
                    .font(.system(size: 12))
                    .minimumScaleFactor(0.01)
                    .foregroundColor(statusLaundry == "Ongoing" ? Color.gray : Color.black)
            }
            
            
            HStack(spacing: 3){
                Image(systemName: imgDeliver)
                    .font(.system(size: 14))
                    .foregroundColor(statusLaundry == "Ongoing" ? Color.gray : Color.blue)
                Text("Deliver")
                    .font(.system(size: 12))
                    .minimumScaleFactor(0.01)
                    .foregroundColor(statusLaundry == "Ongoing" ? Color.gray : Color.black)
            }
        }
        
        .foregroundColor(.black)
    }
}

struct ListHistory_Previews: PreviewProvider {
    static var previews: some View {
        ListHistory(nameLaundry: "Roumah", statusLaundry: "Completed", imgWashing: "circle.fill", imgCleaning: "circle.fill", imgDrying: "circle.fill", imgDeliver: "circle.fill")
    }
}
