//
//  AboutView.swift
//  MoodApp
//
//  Created by LEONTIY, MAKSIM M. on 4/16/25.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        
        ZStack{
            
            VStack{
                
                Text("About")
                    .font(.system(size: 50, weight: .heavy, design: .serif))
                
                Spacer()
                
                Text("This app is created to help you choose your mood for today")
                    .padding(30)
                    .padding(.bottom, 400)
                
            }
        }
    }
}

#Preview {
    AboutView()
}
