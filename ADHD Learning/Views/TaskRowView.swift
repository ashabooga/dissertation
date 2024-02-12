//
//  TaskRowView.swift
//  ADHD Learning
//
//  Created by Ben Cuello-Wolffe on 12/12/23.
//

import SwiftUI

struct TaskRowView: View {
    let task: TaskModel
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .foregroundStyle(task.isCompleted ? Color("CompletedViewColor") : Color(.white))
            
            HStack {
                Text(task.title).bold()
                    .foregroundStyle(Color.black)
                Spacer()
                TaskCompletionIconView(isCompleted: task.isCompleted)
            }
            .padding(.horizontal, 40)
            .font(.title)
            
        }
    }
}

struct TaskRowView_Previews: PreviewProvider {
    static var task1 = TaskModel(title: "Lesson 1", type: "Lesson", isCompleted: true)
    
    static var previews: some View {
        TaskRowView(task: task1)
    }
}
