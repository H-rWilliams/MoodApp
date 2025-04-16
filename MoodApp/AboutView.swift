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
                
                Text("Mood Board App")
                    .font(.subheadline)
                
                Divider()
                    .frame(height: 3)
                    .overlay(.black)
                
                Spacer()
                
                Text("This app is created to help you choose your mood for today")
                    .padding(30)
                
            }
        }
    }
}

#Preview {
    AboutView()
}
