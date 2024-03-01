//
//  AAudioHandler.swift
//  BeatFit
//
//  Created by Andrés Harisa Duvvuri on 2/29/24.
//

import Foundation
import AVFoundation
import AVFAudio

class AAudioHandler{
    func requestMicrophonePermission() {
        AVAudioApplication.requestRecordPermission { granted in
            DispatchQueue.main.async {
                if granted {
                    print("Permission granted")
                } else {
                    print("Permission denied")
                }
            }
        }
    }
}
