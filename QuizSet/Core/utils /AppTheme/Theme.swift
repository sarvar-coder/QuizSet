//
//  Theme.swift
//  QuizSet
//
//  Created by Sarvar Boltaboyev on 24/07/25.
//

import SwiftUI

protocol Theme {
    var backGround: Color { get }
    var backGroundSecondary: Color { get }
    var primaryText: Color { get }
    var secondaryText: Color { get }
    var succesGreen: Color { get }
    var mistakeRed: Color { get }
    
}
