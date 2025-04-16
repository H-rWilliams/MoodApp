
//
//  MoodPickerView.swift
//  MoodApp
//
//  Created by LAXA, CHARLES A. on 4/16/25.
//

import SwiftUI

struct MoodPickerView: View {
    
    @Binding var selectedMood: Mood
    @Environment(\.dismiss) var dismiss

    var body: some View {
        List(Mood.allCases, id: \.self) { mood in
            HStack {
                Text(mood.emoji)
                    .font(.largeTitle)
                Text(mood.message)                       .padding(.leading, 10)
            }
            .padding()
            .onTapGesture {
                selectedMood = mood
                dismiss()
            }
        }
        .navigationTitle("Pick Your Mood")
    }
}

#Preview {
    MoodPickerView()
}

