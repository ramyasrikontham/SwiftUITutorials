//
//  CircleImage.swift
//  SwiftUIClass1
//
//  Created by Ramyasri Kontham on 2/18/24.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("nature").clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage()
}
