//
//  Utils.swift
//  BeatFit
//
//  Created by Andrés Harisa Duvvuri on 2/26/24.
//

import Foundation


class ATimer{
    
    var startTime: Date?
    
    func startCountingTime() {
        startTime = Date() // Capture the start time
    }

    func stopCountingTime() -> Double {
        guard let start = startTime else {
            print("Start time not set.")
            return 0.0
        }
        
        let stopTime = Date() // Capture the stop time
        let elapsedTime = stopTime.timeIntervalSince(start) // Calculate the elapsed time in seconds
        
        print("Elapsed Time: \(elapsedTime.rounded()) seconds")
        return elapsedTime
    }
}
