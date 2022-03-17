//
//  bookingTableApp.swift
//  bookingTable
//
//  Created by Admin on 24.02.2022.
//

import SwiftUI

@main
struct bookingTableApp: App {
    @StateObject var dataBaseController = DataBaseController()
    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext,dataBaseController.container.viewContext )
        }
    }
}
