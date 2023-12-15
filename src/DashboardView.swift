//
//  DashboardView.swift
//  laundry-app
//
//  Created by raihansyahrin on 12/12/23.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        
        ZStack{
            VStack{
                TabView{
                    Group{
                        HomeView()
                            .tabItem {
                                Label("Home", systemImage: "house.fill")
                            }
                        
//                            .navigationBarBackButtonHidden(false)
                        
                        ChatView()
                            .tabItem {
                                Label("Chat", systemImage: "message.fill")
                            }
                            .navigationBarBackButtonHidden(false)
                        
                        HistoryView()
                            .navigationBarBackButtonHidden(false)
                            .tabItem {
                                Label("History", systemImage: "newspaper.fill")
                                    .font(.title)
                            }
                        
                        ProfileView()
                            .tabItem {
                                Label("Profile", systemImage: "person.fill")
                                    .background(.blue)
                            }
                    }
                    .navigationBarBackButtonHidden(false)
                    .toolbarBackground(.ultraThinMaterial, for: .tabBar)
//                    .tool
                    
                    
                }
                
//                .toolbarBackground(Color.white, for: .tabBar)
                
                    
//                    ForEach(Tab.allCases, id: \.rawValue){tab in
//                        if tab == .person{
//                            ProfileView()
//                                .tag(tab)
//                        }else if tab == .house{
//                            HomeView()
//                                .tag(tab)
//                                .tabItem {
//                                          Label("", systemImage: "house.fill")
//                                        }
//
//                        }else if tab == .message{
//                            ChatView()
//                                .tag(tab)
//                        }else if tab == .doc{
//                            HistoryView()
//                                .tag(tab)
//                        }else{
//                            HStack{
//                                Image(systemName: tab.rawValue)
//                                Text("\(tab.rawValue.capitalized)")
//                                    .bold()
//                                    .animation(nil, value: selectedTab)
//                            }
//                            .tag(tab)
//                        }
//                    }
                }
            }
            
//            VStack{
//                Spacer()
//                CustomTabBar(selectedTab: $selectedTab)
////            }
        
             
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
