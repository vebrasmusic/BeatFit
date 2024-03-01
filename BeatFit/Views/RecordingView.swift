//
//  ContentView.swift
//  BeatFit
//
//  Created by Andrés Harisa Duvvuri on 2/25/24.
//

import SwiftUI
import CoreData

struct RecordingView: View {
    
    var recording = ARecording()

    let circle_size: CGFloat = 200 // scales the size up on the whole circle thing
    
    @State var circle_angle: Float = Float.pi / 2.0
    
    let xpos: CGFloat = 400
    let ypos: CGFloat = 400
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            Circle() // this is the outline circle
                .stroke(lineWidth: 15)
                .fill(.white)
                .frame(width: circle_size + 30, height: circle_size + 30)
            VStack{
                Button(action: recording.handle_recording)
                {
                    Circle()
                        .fill(.white)
                        .frame(width: circle_size, height: circle_size)
                        .overlay(
                            Image(systemName: "waveform")
                                .font(.system(size: 180-(250-circle_size)))
                                .foregroundColor(.black))
                }
                .sensoryFeedback(.start, trigger: recording.is_recording)
            }
        }
    }
}

struct RecordingView_Previews: PreviewProvider {
    static var previews: some View {
        RecordingView()
    }
}

// when you click, it should scale up the circle and the lil symbol and start recording. also, while its recording it should have a little ticker around it (circular progress) thatll fill up to max of 5 seconds or whatveer.
