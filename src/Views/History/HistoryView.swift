//
//  HistoryView.swift
//  CustomTabBar
//
//  Created by raihansyahrin on 06/12/23.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(spacing: 20){
                    ListHistory(nameLaundry: "Roumah Laundry", statusLaundry: "Ongoing", imgWashing: "circle.fill", imgCleaning: "dot.circle.fill", imgDrying: "circle.fill", imgDeliver: "circle.fill")
                    
                    ListHistory(nameLaundry: "House Laundry", statusLaundry: "Completed",imgWashing: "circle.fill", imgCleaning: "circle.fill", imgDrying: "circle.fill", imgDeliver: "circle.fill")
                    
                    ListHistory(nameLaundry: "7 Laundry", statusLaundry: "Completed",imgWashing: "circle.fill", imgCleaning: "circle.fill", imgDrying: "circle.fill", imgDeliver: "circle.fill")
                    
                    ListHistory(nameLaundry: "Omah Laundry", statusLaundry: "Completed",imgWashing: "circle.fill", imgCleaning: "circle.fill", imgDrying: "circle.fill", imgDeliver: "circle.fill")
                    
                    ListHistory(nameLaundry: "Bersih Laundry", statusLaundry: "Completed",imgWashing: "circle.fill", imgCleaning: "circle.fill", imgDrying: "circle.fill", imgDeliver: "circle.fill")
                }
                .navigationTitle("History")
            }
            .padding()
//            .toolbarBackground(Color.black, for: .navigationBar)
            
            
            .background(Color(red: 242 / 255, green: 244 / 255, blue: 247 / 255))
        }

//        .background(Color(red: 242 / 255, green: 244 / 255, blue: 247 / 255))
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
