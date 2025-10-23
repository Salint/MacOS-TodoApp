//
//  TodoAppApp.swift
//  TodoApp
//
//  Created by Mohamed Eldahtoury on 23/10/2025.
//

import SwiftUI

@main
struct TodoAppApp: App {
    @StateObject private var store = TodoStore()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(store)
        }
    }
}
