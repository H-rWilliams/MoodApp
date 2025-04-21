//
//  AboutView.swift
//  MoodApp
//
//  Created by LEONTIY, MAKSIM M. on 4/16/25.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        
        ScrollView{
            
            VStack{
                
                Text("About")
                    .font(.system(size: 50, weight: .heavy, design: .serif))
                
                Text("Team MoodMates")
                    .font(.subheadline)
                
                Divider()
                    .frame(height: 3)
                    .overlay(.black)
                
                Spacer()
                
                Text("This app is created to help you choose your mood for the day.")
                    .padding(30)
                
                Group {
                    
                    VStack {
                        Text("🧠 Hunter")
                        Text("Enum Master + Data Wrangler")
                    }
                    Divider()
                    VStack {
                        Text("🎨 Maksim")
                        Text("Design Guru + About Page Magician")
                    }
                    Divider()
                    VStack {
                        Text("🛠 Roberto")
                        Text("Dashboard Commander")
                    }
                    Divider()
                    VStack {
                        Text("📱 Charles")
                        Text("Mood Picker Wizard")
                    }
                }
                
                .font(.subheadline)
                
            }
            
            VStack{
                Text("Bringing you daily vibes, one emoji at a time.")
                                .font(.headline)
                                .multilineTextAlignment(.center)
                                .padding(.top, 30)
                                .padding()
                
                Spacer(minLength: 120)
                
                Text("Created by Maksim Leontiy, Roberto Perez, Hunter Williams, and Charles Laxa.")
                    .padding(30)
            }
        }
    }
}

#Preview {
    AboutView()
}
