//
//  MainView.swift
//  BeatFit
//
//  Created by Andrés Harisa Duvvuri on 2/29/24.
//

import SwiftUI

struct MainView: View {
    @State private var isShowingSecondView = false

    var body: some View {
        NavigationView {
            VStack {
                if isShowingSecondView {
                    PlaybackView()
                } else {
                    RecordingView()
                }
            }
            .gesture(DragGesture().onEnded { value in
                if value.translation.width < 0 {
                    // Swipe Left - Show Second View
                    withAnimation(.easeInOut(duration: 0.5)) {
                        isShowingSecondView = true
                    }
                } else if value.translation.width > 0 {
                    // Swipe Right - Show First View
                    withAnimation {
                        isShowingSecondView = false
                    }
                }
            })
        }
    }
}

#Preview {
    MainView()
}
