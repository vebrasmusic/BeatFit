//
//  PlaybackView.swift
//  BeatFit
//
//  Created by Andrés Harisa Duvvuri on 2/29/24.
//

import SwiftUI

struct PlaybackView: View {
    var audio_player = AAudioPlayer()
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .fill(Color.white)
                    .frame(width:300, height: 175)
                    .overlay(
                        VStack(spacing: 0){ //holds the audio controls + progres bar
                            
                            Spacer()
                            
                            HStack{ // holds the 3 audio buttons
                                Button(action: audio_player.skip_backward)
                                {
                                    Image(systemName: "gobackward.10")
                                        .font(.system(size: 30))
                                        .foregroundColor(.black)
                                        .padding(10)
                                }
                                Button(action: audio_player.handle_play_pause)
                                {
                                    Image(systemName: "playpause.fill")
                                        .font(.system(size: 40))
                                        .foregroundColor(.black)
                                        .padding(10)
                                }
                                Button(action: audio_player.skip_forward)
                                {
                                    Image(systemName: "goforward.10")
                                        .font(.system(size: 30))
                                        .foregroundColor(.black)
                                        .padding(10)
                                }
                            }
                            .padding(35)
                            
                            
                            AAudioProgressBar(audio_progress: audio_player.audio_progress)
                            
                            Spacer()
                            
                        }
                        )
        }
        
    }
}

#Preview {
    PlaybackView()
}
