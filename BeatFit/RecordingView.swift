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
    
    var body: some View {
        VStack{
            Button(action:{
                if recording.is_recording == false{
                    recording.start_recording()
                }
                else {
                    recording.stop_recording()
                }
            }) 
            {
                Circle()
                    .fill(.black)
                    .frame(width: 300, height: 300)
                    .overlay(
                        Image(systemName: "waveform")
                            .font(.system(size: 144))
                            .foregroundColor(.white)
                    )
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
