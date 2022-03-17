//
//  DataBaseController.swift
//  bookingTable
//
//  Created by Admin on 24.02.2022.
//

import CoreData
import Foundation

class DataBaseController: ObservableObject{
    let container = NSPersistentContainer(name: "BookingDataBase")
    
    init(){
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Failed to load: \(error.localizedDescription)")
            }
        }
    }
}
