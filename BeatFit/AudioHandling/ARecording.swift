//
//  Recording.swift
//  BeatFit
//
//  Created by Andrés Harisa Duvvuri on 2/26/24.
//

import Foundation
import AVFoundation
import AVFAudio


class ARecording{
    
    var is_recording = false
    var recording_length = 0.0
    let timer = ATimer()
    var audio_recorder: AVAudioRecorder?
    let audio_handler = AAudioHandler()
    
    func handle_recording() {
        if is_recording == false{
            start_recording()
        }
        else {
            stop_recording()
        }
    }

    
//    init(){
//    }
    
    func start_recording() {
            audio_handler.requestMicrophonePermission() // get mic permission before initializing, only for phone
            let fileURL = getDocumentsDirectory().appendingPathComponent("recording.m4a")
            let settings = [
                AVFormatIDKey: Int(kAudioFormatMPEG4AAC),
                AVSampleRateKey: 12000,
                AVNumberOfChannelsKey: 1,
                AVEncoderAudioQualityKey: AVAudioQuality.high.rawValue
            ]
            
            do {
                let audioSession = AVAudioSession.sharedInstance()
                        try audioSession.setCategory(.playAndRecord, mode: .default)
                        try audioSession.setActive(true)
                audio_recorder = try AVAudioRecorder(url: fileURL, settings: settings)
                audio_recorder?.prepareToRecord()
                audio_recorder?.record()
                is_recording = true
                timer.startCountingTime()
                print("recording started!")
            } catch {
                print("Failed to start recording: \(error)")
            }
        }
    
    func stop_recording() {
            audio_recorder?.stop()
            let audioSession = AVAudioSession.sharedInstance()
            try? audioSession.setActive(false)
            recording_length = timer.stopCountingTime()
            is_recording = false
            print("stopped recording :0")
            // Here you can handle the saved file, e.g., updating the UI or preparing for playback
        }
        
        private func getDocumentsDirectory() -> URL {
            let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
            return paths[0]
        }
}
