//
//  LearnView.swift
//  ADHD Learning
//
//  Created by Ben Cuello-Wolffe on 1/29/24.
//

import SwiftUI
import AVKit

struct LearnView: View {
    
    let task: TaskModel
    
    let url = Bundle.main.url(forResource: "test", withExtension: "mp4")!
//    @State var player = AVPlayer(url: Bundle.main.url(forResource: "test", withExtension: "mp4")!)
//    @State var isPlaying: Bool = false
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                Color(.background2)
                    .ignoresSafeArea()
                
                VStack {
                    NavigationLink {
                        VideoPlayerView(videoURL: url)
                    } label: {
                        VideoIconView(lesson: task, videoURL: url)
                    }
                }
                
            }
            .navigationTitle(task.title)
        }
    }
}

#Preview {
    LearnView(task: TaskModel(title: "Lesson 1", type: "Lesson", isCompleted: false))
}
