//
//  ContentView.swift
//  CustomTabBar
//
//  Created by raihansyahrin on 03/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab : Tab = .house
    @State private var isDetailsOrderViewPresented = false
    init(){
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack{
            VStack{
                TabView(selection: $selectedTab){
                    ForEach(Tab.allCases, id: \.rawValue){tab in
                        if tab == .person{
                            ProfileView()                        
                                .tag(tab)
                        }else if tab == .house{
                            HomeView()
                                .tag(tab)
                        }else if tab == .message{
                            ChatView()
                                .tag(tab)
                        }else if tab == .doc{
                            HistoryView()
                                .tag(tab)
                        }else{
                            HStack{
                                Image(systemName: tab.rawValue)
                                Text("\(tab.rawValue.capitalized)")
                                    .bold()
                                    .animation(nil, value: selectedTab)
                            }
                            .tag(tab)
                        }
                    }
                }
            }
            
            VStack{
                Spacer()
                CustomTabBar(selectedTab: $selectedTab)
            }
            
        }       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
