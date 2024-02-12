//
//  ContentView.swift
//  ADHD Learning
//
//  Created by Ben Cuello-Wolffe on 12/10/23.
//

import SwiftUI

struct TaskView: View {
    var body: some View {
        
        let task1 = TaskModel(title: "HI", type: "lesson", isCompleted: true)
        
        NavigationStack {
            ZStack {
                Color(.background1)
                    .ignoresSafeArea()
                
                ScrollView(.vertical, showsIndicators: true) {
                    ForEach(0..<10) {_ in
                        
                        NavigationLink {
                            LearnView(task: task1)
                        } label: {
                            TaskRowView(task: task1)
                                .padding(.horizontal, 20)
                        }
                    }
                }
                .padding(.top, 10)
            }
            .navigationTitle("Lessons")
            .overlay (
                Text("1 of 10")
                    .titleText(color: Color.white)
                    .padding(.trailing, 20)
                    .offset(x: 0, y: -45)
            , alignment: .topTrailing)
        }
    }
}

#Preview {
    NavigationStack{
        TaskView()
    }
}
