//
//  ContentView.swift
//  MoodApp
//
//  Created by WILLIAMS, HUNTER R. on 4/16/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView{
            HomeView()
                .tabItem{
                    Label("Home", systemImage: "person")
                }
            AboutView()
                .tabItem{
                    Label("About", systemImage: "house")
                }
        }
        
    }
}

#Preview {
    ContentView()
}
