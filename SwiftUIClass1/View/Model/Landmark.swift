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
    
    private var coordinates: Coordinates
    struct Coordinates: Hashable, Codable {
        var longitude : Double
        var latitude : Double
    }
       var locationCoordinate: CLLocationCoordinate2D {
           CLLocationCoordinate2D(
               latitude: coordinates.latitude,
               longitude: coordinates.longitude)
       }
   

    
}


