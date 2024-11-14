//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Kapil Shivhare on 9/6/24.
//

import SwiftUI

@main
struct AppetizersApp: App {
    var body: some Scene {
        
        let order = Order()
        
        WindowGroup {
            ContentView().environmentObject(order)
        }
    }
}
