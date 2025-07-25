//
//  CreateQuizView.swift
//  QuizSet
//
//  Created by Sarvar Boltaboyev on 24/07/25.
//

import Foundation
import SwiftUI


struct QuizState {
    @State var question = ""
    @State var first = ""
    @State var second = ""
    @State var third = ""
    @State var fourth = ""
}

struct CreateQuizView: View {
    
    @EnvironmentObject var dynamicTheme: DynamicTheme
    @State private var count: Int = 1
//    @State private var quizState = QuizState()
    @StateObject private var vm = CreateQuizViewModel()
    
    @State var question = ""
    @State var first = ""
    @State var second = ""
    @State var third = ""
    @State var fourth = ""
    
    
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach($vm.quizSet) { $quiz in
                    QuizView(question: $quiz.question, first: $first, second: $second, third: $third, fourth: $fourth).padding()
                    
                }
                
                Button {
                    withAnimation(.easeInOut(duration: 0.5)) {
                        count += 1
                    }
                    
                } label: {
                    HStack {
                        Image(systemName: "plus.circle")
                            .resizable()
                            .frame(width: 32, height: 32)
                            .foregroundStyle(dynamicTheme.primaryText)
                        
                        Text("Add one more")
                            .font(.system(size: 21, weight: .black, design: .rounded))
                            .foregroundStyle(dynamicTheme.primaryText)
                    }
                }
            }
        }
        .background(dynamicTheme.backGroundSecondary)
    }
}


#Preview {
    CreateQuizView()
        .environmentObject(DynamicTheme())
}

struct QuizView: View {
    
    @EnvironmentObject var dynamicTheme: DynamicTheme
    
//    @Binding var quizState: QuizState
    
    @Binding var question: String
    @Binding var first: String
    @Binding var second: String
    @Binding var third: String
    @Binding var fourth: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Quiz")
                .font(.system(size: 20, weight: .bold))
            HStack {
                TextField("Quiz", text: $question)
                    .autocorrectionDisabled(true)
                    .font(.system(size: 21))
            }
            .padding(10)
            .border(.black)
            
            
            Group {
                TextField("Option A", text: $first)
                TextField("Option B", text: $second)
                TextField("Option C", text: $third)
                TextField("Option D", text: $fourth)
            }
            .autocorrectionDisabled(true)
            .textFieldStyle(.roundedBorder)
            .padding(10)
            
        }
        .padding()
        .background(dynamicTheme.backGround)
        .clipShape(.rect(cornerRadius: 10))
    }
}
