import SwiftUI

struct QuestionBoxView: View {
    
    let question: QuestionModel
    @State var selectedAnswer = [""]
    
    var body: some View {
        
        ZStack {
            
            VStack {
                
                if question.questionType == QuestionType.dropdown {
                    
                    Picker("Pick One", selection: $selectedAnswer[0]) {
                        ForEach(question.options ?? [""], id: \.self) {
                            Text($0)
                        }
                    }
                    
                } else if question.questionType == QuestionType.text {
                    
                    TextField("Answer Here", text: $selectedAnswer[0])
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                } else if question.questionType == QuestionType.number {
                    
                    TextField("Answer Here", text: $selectedAnswer[0])
                        .keyboardType(.numberPad)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                } else if question.questionType == QuestionType.singleChoice {
                    
                    ForEach(question.options ?? [""], id: \.self) { option in
                        QuestionChoiceView(option: option)
                    }
                    
                } else if question.questionType == QuestionType.multipleChoice {
                    
                    
                    
                } else {
                    
                    Text("Something went wrong.")
                    
                }
                
                
                
                
                
                
                Button("hi") {
                    
                }
            }
            
        }
        
    }
}

#Preview {
    QuestionBoxView(question: QuestionModel(question: "Didja know that my name is ben?", answer: "That's cool man", hints: ["It's true, my name is ben"], hasBeenAsked: false, questionType: QuestionType.singleChoice, options: ["That's cool man", "Who gives a grap", "Are you sure that's true?"]))
}
