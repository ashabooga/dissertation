//
//  PracticeView.swift
//  ADHD Learning
//
//  Created by Ben Cuello-Wolffe on 2/4/24.
//

import SwiftUI

struct PracticeView: View {
    
    let task: TaskModel
    let questions: [QuestionModel] = [QuestionModel(question: "Didja know that my name is ben?", answer: "That's cool man", hints: ["It's true, my name is ben"], hasBeenAsked: false, questionType: QuestionType.singleChoice, options: ["That's cool man", "Who gives a grap", "Are you sure that's true?"])]
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.background3)
                    .ignoresSafeArea()
                
                VStack {
                    Text(questions[0].question)
                        .titleText(color: Color.black)
                    
                    
                    
                    
                }
                
            }
            .navigationTitle(task.title)
        }
    }
}

#Preview {
    PracticeView(task: TaskModel(title: "Lesson 1", type: "Lesson", isCompleted: false))
}
