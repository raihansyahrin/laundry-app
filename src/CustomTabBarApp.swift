//
//  CustomTabBarApp.swift
//  CustomTabBar
//
//  Created by raihansyahrin on 03/12/23.
//

import SwiftUI

class AppState: ObservableObject {
    @Published var hasOnboarded : Bool
    
    init(hasOnboarded: Bool) {
        self.hasOnboarded = hasOnboarded
    }
}

@main
struct CustomTabBarApp: App {
    @ObservedObject var appState = AppState(hasOnboarded: false)
    var body: some Scene {
        WindowGroup {
            LoginView()
                .environmentObject(appState)
            ContentView()
                .environmentObject(appState)
        }
    }
}
