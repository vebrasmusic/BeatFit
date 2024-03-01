//
//  AAudioPlayer.swift
//  BeatFit
//
//  Created by Andrés Harisa Duvvuri on 2/29/24.
//

import Foundation

class AAudioPlayer{
    var is_playing = false
    var audio_progress:CGFloat = 0.5
    
    func handle_play_pause(){
        if (!is_playing){
            play_audio()
        }
        else {
            pause_audio()
        }
    }
    
    func play_audio(){
        is_playing = true
        print("iomagine the audio is playing :)")
    }
    
    func pause_audio(){
        is_playing = false
        print("pausing audio")
    }
    
    func skip_forward(){
        print("skipping forward 10 seconds!")
    }
    
    func skip_backward(){
        print("skipping backward by 10 secssss!!")
    }
}
