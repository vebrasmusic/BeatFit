//
//  Recording.swift
//  BeatFit
//
//  Created by Andrés Harisa Duvvuri on 2/26/24.
//

import Foundation


class ARecording{
    
    var is_recording = false
    var recording_length = 0.0
    let timer = ATimer()

    
//    init(){
//    }
    
    func start_recording(){
        is_recording = true
        timer.startCountingTime()
        print("recording started!")
        
    }
    
    func stop_recording(){
        recording_length = timer.stopCountingTime()
        is_recording = false
        print("stopped recording :)")
    }
    
}
