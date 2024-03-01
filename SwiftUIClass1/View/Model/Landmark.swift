//
//  Landmark.swift
//  SwiftUIClass1
//
//  Created by Ramyasri Kontham on 2/18/24.
//


import Foundation
import SwiftUI
import MapKit

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool

    private var imageName : String
    var image : Image {
        Image(imageName)
    }
    
    struct Coordinates: Hashable, Codable {
        var longitude : Float
        var latitude : Float
    }
    private var coordinates: Coordinates

    
}


