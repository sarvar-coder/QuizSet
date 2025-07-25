//
//  DynamicTheme.swift
//  QuizSet
//
//  Created by Sarvar Boltaboyev on 24/07/25.
//

import Foundation
import SwiftUI

class DynamicTheme: Theme, ObservableObject {
    
    private let darkTheme: Theme = DarkTheme()
    private let lightTheme: Theme = LightTheme()
    
    var succesGreen: Color {
        makeDynamic(dark: darkTheme.succesGreen, light: lightTheme.succesGreen)
    }
    
    var mistakeRed: Color {
        makeDynamic(dark: darkTheme.mistakeRed, light: lightTheme.mistakeRed)
    }
    
    var primaryText: Color {
        makeDynamic(dark: darkTheme.primaryText, light: lightTheme.primaryText)
    }
    
    var secondaryText: Color {
        makeDynamic(dark: darkTheme.secondaryText, light: lightTheme.secondaryText)
    }
    
    var backGround: Color {
        makeDynamic(dark: darkTheme.backGround, light: lightTheme.backGround)
    }
    
    var backGroundSecondary: Color {
        makeDynamic(dark: darkTheme.backGroundSecondary, light: lightTheme.backGroundSecondary)
    }
    
    private func makeDynamic(dark: Color, light: Color) -> Color {
        if  UserDefaults.standard.bool(forKey: "isDarkMode")  {
           return dark
        } else {
           return light
        }
    }
}
