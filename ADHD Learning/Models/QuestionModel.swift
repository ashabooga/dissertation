//
//  QuestionModel.swift
//  ADHD Learning
//
//  Created by Ben Cuello-Wolffe on 2/4/24.
//

import Foundation
import SwiftUI

enum QuestionType {
    case number
    case dropdown
    case text
    case multipleChoice
    case singleChoice
}

struct QuestionModel {
    var question: String
    var answer: String
    var hints: [String]
    var hasBeenAsked: Bool
    var questionType: QuestionType
    var options: [String]?
    var image: Image?
    
    
    init(question: String = "", answer: String = "", hints: [String] = [""], hasBeenAsked: Bool = false, questionType: QuestionType = QuestionType.number, options: [String]? = nil, image: Image? = nil) {
        self.question = question
        self.answer = answer
        self.hints = hints
        self.hasBeenAsked = hasBeenAsked
        self.questionType = questionType
        self.options = options
        self.image = image
    }
    
    
    func updateTask() -> QuestionModel {
        return(QuestionModel(question: question, answer: answer, hints: hints, hasBeenAsked: true, questionType: questionType, options: options, image: image))
    }
}
