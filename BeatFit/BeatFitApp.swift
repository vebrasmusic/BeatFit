//
//  BeatFitApp.swift
//  BeatFit
//
//  Created by Andrés Harisa Duvvuri on 2/25/24.
//

import SwiftUI

@main
struct BeatFitApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
