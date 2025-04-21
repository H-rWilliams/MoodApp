
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
        List {
            ForEach(Mood.allCases) { mood in
                HStack {
                    Text(mood.emoji)
                    Text(mood.rawValue)
                    Spacer()
                    if mood == selectedMood {
                        Image(systemName: "checkmark")
                            .foregroundColor(.blue)
                    }
                }
                .contentShape(Rectangle())
                .onTapGesture {
                    selectedMood = mood
                    dismiss()
                }
            }
        }
        .navigationTitle("Pick Your Mood")
    }
}

struct MoodPickerView_Previews: PreviewProvider {
    @State static var previewMood: Mood = .happy

    static var previews: some View {
        NavigationView {
            MoodPickerView(selectedMood: $previewMood)
        }
    }
}

