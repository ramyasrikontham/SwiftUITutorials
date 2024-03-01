//
//  ContentView.swift
//  MacLandmarks
//
//  Created by Ramyasri Kontham on 2/29/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
                   .frame(minWidth: 700, minHeight: 300)
    }
}

#Preview {
    ContentView().environment(ModelData())
}
