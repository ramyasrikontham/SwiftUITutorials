//
//  ContentView.swift
//  SwiftUIClass1
//
//  Created by Ramyasri Kontham on 2/18/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView().environment(ModelData())
}
