//
//  SwiftUIClass1App.swift
//  SwiftUIClass1
//
//  Created by Ramyasri Kontham on 2/18/24.
//

import SwiftUI

@main
struct SwiftUIClass1App: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView().environment(modelData)
        }
    }
}
