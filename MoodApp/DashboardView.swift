//
//  DashboardView.swift
//  MoodApp
//
//  Created by PEREZ, ROBERTO on 4/16/25.
//

import SwiftUI

struct DashboardView: View {
    @State var selectedMood: Mood = Mood(emoji: "😄", message: "Happy")
    var body: some View {
        TabView {
            DashboardView()
            NavigationStack()
            VStack {
                .tabItem {
                    Text("Today's Mood")
                    Text(selectedMood.emoji)
                    Text(selectedMood.message)
                    NavigationLink(destination: MoodPickerView())
                }
                TabView {
                    NavigationStack() {
                        AboutView()
                    }
                }
            }
        }
    }
    
    struct DashboardView_Previews: PreviewProvider {
        static var previews: some View {
            DashboardView()
        }
    }
