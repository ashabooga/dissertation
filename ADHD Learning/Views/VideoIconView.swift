//
//  VideoPlayerView.swift
//  ADHD Learning
//
//  Created by Ben Cuello-Wolffe on 2/3/24.
//

import SwiftUI
import AVFoundation

struct VideoIconView: View {
    
    let lesson: TaskModel
    let videoURL: URL
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(Color.black)
                .frame(height: 250)
            Image("test")
                .resizable()
                .scaledToFit()
            Image(systemName: "play.circle.fill")
                .resizable()
                .foregroundStyle(Color("Background5"))
                .frame(width: 60, height: 60)
        }
        .padding()
    }
}

#Preview {
    VideoIconView(lesson: TaskModel(title: "hi", type: "hi", isCompleted: false), videoURL: Bundle.main.url(forResource: "test", withExtension: "mp4")!)
}
