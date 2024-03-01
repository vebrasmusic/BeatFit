//
//  AAudioProgressBar.swift
//  BeatFit
//
//  Created by Andrés Harisa Duvvuri on 2/29/24.
//

import Foundation
import SwiftUI

struct AAudioProgressBar: View {
    var audio_progress: CGFloat  // Assume a value between 0 and 1
    
    var body: some View {
        GeometryReader { geometry in
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.black)  // Background color of the progress bar
                .frame(height: 10)
                .overlay(
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.white)  // Foreground color representing progress
                        .frame(width: (geometry.size.width - 30) * self.audio_progress, height: 10)
                )
        }
    }
}

