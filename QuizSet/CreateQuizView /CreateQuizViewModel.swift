//
//  CreateQuizViewModel.swift
//  QuizSet
//
//  Created by Sarvar Boltaboyev on 24/07/25.
//

import Foundation


class CreateQuizViewModel: ObservableObject {
    @Published var quizSet = [Quiz]()
    
    
    init() {
        quizSet
    }
    
    func append() {
        
    }
    
    func fisrtInitial() {
        let quiz = Quiz(question: "", first: Option(name: "A", answer: false), second: "", third: "", fourth: "", timer: <#T##TimeInterval#>)
    }
}
