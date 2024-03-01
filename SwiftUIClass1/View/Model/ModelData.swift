//
//  ModelData.swift
//  SwiftUIClass1
//
//  Created by Ramyasri Kontham on 2/18/24.
//

import Foundation

//Created an observable object - Observable Objects in SwiftUI are part of the data flow. They are used to notify views when there's a change in the data they're observing. To declare an Observable Object, we use the @Published and @ObservedObject property wrappers. n this example, ContentView will automatically update whenever user.name changes.

@Observable
class ModelData {
    var landmarks: [Landmark] = load(filename: "landmarkData.json")
}


//Global vairable can access anywhere
//var landmarks: [Landmark] = load(filename: "landmarkData.json")
func load<T: Decodable>(filename: String) -> T {
    
    let data: Data
    
    //Check for the file
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("no file found")
    }
    
    //Get file data
    do {
        data = try Data(contentsOf:file)
    } catch {
        fatalError()
    }
    
    do {
       
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Could not parse")
    }
    
}
