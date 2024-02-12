//
//  QuestionChoiceBox.swift
//  ADHD Learning
//
//  Created by Ben Cuello-Wolffe on 2/5/24.
//

import SwiftUI

struct QuestionChoiceBox: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(.black)
                .frame(width: 50, height: 50)
                .onTapGesture {
                    withAnimation(.linear(duration: 0.1)) {
                        isSelected = !isSelected
                    }
                }
            
            RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(isSelected ? .white : .black)
                .frame(width: 40, height: 40)
        }
    }
}

#Preview {
    QuestionChoiceBox(isSelected: true)
}
