//
//  Quiz.swift
//  QuizSet
//
//  Created by Sarvar Boltaboyev on 24/07/25.
//

import Foundation
import SwiftUI
import UIKit

struct Quiz: Codable, Identifiable {
    
    let id: UUID = .init()
    var question: String
    
    var first: Option
    var second: Option
    var third: Option
    var fourth: Option
    
    let timer: TimeInterval
}


struct Option: Codable {
    var name: String
    var answer: Bool
}

enum Answer {
    case right(color: Color = Color(UIColor.systemGreen))
    case wrong(color: Color = Color(UIColor.systemRed))
}

