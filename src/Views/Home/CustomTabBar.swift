//
//  CustomTabBar.swift
//  CustomTabBar
//
//  Created by raihansyahrin on 03/12/23.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case house
    case message
    case doc
    case person
}

struct CustomTabBar: View {
    @Binding var selectedTab: Tab
    private var fillImage: String {
        selectedTab.rawValue + ".fill"
    }
    
    var body: some View {
        VStack{
            HStack{
                ForEach(Tab.allCases, id: \.rawValue){tab in
                    Spacer()
                    VStack(spacing: 10){
                        Image(systemName: selectedTab == tab ? fillImage : tab.rawValue)
                            .scaleEffect(selectedTab == tab ? 1.25 : 1.0)
                            .font(.system(size: 22))
                            .onTapGesture{
                                withAnimation(.easeInOut(duration: 0.1)){
                                    selectedTab = tab
                                }
                            }
                        Text(tab == .house ? "Home" :
                                                     tab == .message ? "Chat" :
                                                     tab == .person ? "Profile" :
                                                     tab == .doc ? "History" :
                                                     tab.rawValue)
                    }
                    
                    Spacer()
                }
                
            }
            .frame(width: nil, height: 60)
            .cornerRadius(10)
    
        }
        .padding(.top, 20)       // Ruang di bagian atas
        .padding(.leading, 10)   // Ruang di bagian kiri
        .padding(.trailing, 10)
        .background(.white)
        .ignoresSafeArea(.all, edges: .bottom)
    }
    
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar(selectedTab: .constant(.house))
    }
}
