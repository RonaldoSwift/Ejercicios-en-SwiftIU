//
//  EjercisiosEnSwiftUIApp.swift
//  EjercisiosEnSwiftUI
//
//  Created by Ronaldo Andre Vargas Huaman on 1/29/21.
//

import SwiftUI

@main
struct EjercisiosEnSwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            SS_34View()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
