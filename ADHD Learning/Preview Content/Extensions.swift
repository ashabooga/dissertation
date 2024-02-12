//
//  Extensions.swift
//  ADHD Learning
//
//  Created by Ben Cuello-Wolffe on 1/28/24.
//

import Foundation
import SwiftUI

extension Text {

    func titleText(color: Color) -> some View {
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundStyle(color)
    }
}
