//
//  StrudelApp.swift
//  Strudel
//
//  Created by Brandon Hollins on 5/22/24.
//

import SwiftUI

@main
struct StrudelApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
