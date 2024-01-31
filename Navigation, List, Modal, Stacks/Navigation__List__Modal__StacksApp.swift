//
//  Navigation__List__Modal__StacksApp.swift
//  Navigation, List, Modal, Stacks
//
//  Created by User on 31/01/24.
//

import SwiftUI
import SwiftData

@main
struct Navigation__List__Modal__StacksApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
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
