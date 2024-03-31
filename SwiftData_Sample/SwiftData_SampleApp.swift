//
//  SwiftData_SampleApp.swift
//  SwiftData_Sample
//
//  Created by Ibrahim Hosseini on 4/1/24.
//

import SwiftUI
import SwiftData

@main
struct SwiftData_SampleApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Friend.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
