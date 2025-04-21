//
//  DashboardView.swift
//  MoodApp
//
//  Created by PEREZ, ROBERTO on 4/16/25.
//
 
import SwiftUI
 
struct DashboardView: View {
    @State var selectedMood: Mood = .happy
 
    var body: some View {
        TabView {
            NavigationStack {
                VStack(spacing: 16) {
                    Text("Today's Mood")
                        .font(.title)
                    Text(selectedMood.emoji)
                        .font(.system(size: 50))
                    Text(selectedMood.message)
                        .font(.body)
                    
                    NavigationLink(destination: MoodPickerView(selectedMood: $selectedMood)) {
                        Text("Change Mood")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                }
                .padding()
            }
            .tabItem {
                Label("Mood", systemImage: "face.smiling")
            }
 
            NavigationStack {
                AboutView()
            }
            .tabItem {
                Label("About", systemImage: "info.circle")
            }
        }
    }
}
 
struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
