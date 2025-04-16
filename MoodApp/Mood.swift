//
//  MoodEnum.swift
//  MoodApp
//
//  Created by WILLIAMS, HUNTER R. on 4/16/25.
//

import Foundation

enum Mood: String, CaseIterable, Identifiable {
    var id: Mood { self }
    
    case happy = "Happy"
    case sad = "Sad"
    case angry = "Angry"
    case excited = "Excited"
    case bored = "Bored"
    case tired = "Tired"
    
    var emoji: String {
        switch self {
        case .happy:
            return "😊"
        case .sad:
            return "😢"
        case .angry:
            return "😡"
        case .excited:
            return "😄"
        case .bored:
            return "😒"
        case .tired:
            return "😴"
        }
    }
    
    var message: String {
        switch self {
        case .happy:
            return "I'm feeling Happy Today :D"
        case .sad:
            return "Feeling Sad Today D:"
        case .angry:
            return "I'm so angry today >:("
        case .excited:
            return "I'm FEELING SO EXCITED!!!"
        case .bored:
            return "I'm bored today :/"
        case .tired:
            return "ZZZzzzzz"
        }
    }
}
