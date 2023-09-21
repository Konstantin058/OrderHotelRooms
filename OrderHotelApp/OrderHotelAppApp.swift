//
//  OrderHotelAppApp.swift
//  OrderHotelApp
//
//  Created by Константин Евсюков on 31.08.2023.
//

import SwiftUI

@main
struct OrderHotelAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
