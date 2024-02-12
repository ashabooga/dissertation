//
//  QuestionChoiceView.swift
//  ADHD Learning
//
//  Created by Ben Cuello-Wolffe on 2/5/24.
//

import SwiftUI

struct QuestionChoiceView: View {
    
    let option: String
    @State var isSelected: Bool = false
    
    var body: some View {
        HStack {
            QuestionChoiceBox(isSelected: isSelected)
            
            Spacer()
            
            Text(option)
        }
        .padding(20)
    }
}

#Preview {
    QuestionChoiceView(option: "ME !!!", isSelected: false)
}
