//
//  CircleImage.swift
//  SwiftUIClass1
//
//  Created by Ramyasri Kontham on 2/18/24.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        image.clipShape(Circle())
                   .overlay {
                       Circle().stroke(.white, lineWidth: 4)
                   }
                   .shadow(radius: 7)
    }
}

#Preview {
    CircleImage(image: Image("nature"))
}
