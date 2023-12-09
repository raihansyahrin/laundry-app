//
//  ChatView.swift
//  CustomTabBar
//
//  Created by raihansyahrin on 05/12/23.
//

import SwiftUI


struct ChatView: View {
    @State private var searchText = ""
    @State private var isSearching = false

    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    //search bar
                    HStack(spacing: 20){
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .font(.system(size: 25))
                        
                        
                        VStack(alignment: .leading, spacing: 2){
                            Text("Search in chats")
                                .foregroundColor(.gray)
                                .font(.system(size: 20))
                        }
                        
                        Spacer()
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 15)
                    
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .strokeBorder(Color(.systemGray4), lineWidth: 1)
                            .background(RoundedRectangle(cornerRadius: 10).foregroundStyle(Color(red: 242 / 255, green: 244 / 255, blue: 247 / 255)))
                    )
                    .padding()
                    .padding(.top, -20)
                    
                    
                    ForEach(0..<10) { _ in
                        ListChat()
                            .foregroundColor(.black)
//                            .padding(.vertical, 8)
                    }
                }
                
                .navigationTitle("Chats")
                .listStyle(GroupedListStyle())
                .background(Color(red: 242 / 255, green: 244 / 255, blue: 247 / 255))
            }
            .background(Color(red: 242 / 255, green: 244 / 255, blue: 247 / 255))
            
        }
    }
}

struct DestinationView: View {
    var body: some View {
        Text("Destination View")
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
