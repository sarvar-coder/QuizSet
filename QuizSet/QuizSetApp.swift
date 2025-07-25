//
//  QuizSetApp.swift
//  QuizSet
//
//  Created by Sarvar Boltaboyev on 24/07/25.
//

import SwiftUI

@main
struct QuizSetApp: App {
    
    @StateObject private var dynamicTheme = DynamicTheme()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(dynamicTheme)
        }
    }
}
