//
//  LandmarkList.swift
//  SwiftUIClass1
//
//  Created by Ramyasri Kontham on 2/19/24.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = false
    var filteredLandmarks : [Landmark] {
        modelData.landmarks.filter { l in
            (!showFavoritesOnly || l.isFavorite)
        }
    }
    
    var body: some View {
    
//Setup Naviaiton link, navigationSplitView, Foreach loop, Toggle
        NavigationSplitView {
            //Make - dynamic list
            
            List {
                Toggle(isOn: $showFavoritesOnly, label: {
                    Text("Favorites Only")
                })
                ForEach(filteredLandmarks) { landmark in
                    
                    //Navigaiton link
                    NavigationLink {
                        //On cell for row at index path
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        //Every row should have this
                        LandmarkRow(landmark: landmark)
                    }

                }.animation(.default, value: filteredLandmarks)
                    .navigationTitle("Lanndmarks")
            }
        } detail: {
            Text("Select a Landmark")
        }

        //        //It displays only 2 rows - static
        //        List {
        //            LandmarkRow(landmark: landmarks[0])
        //            LandmarkRow(landmark: landmarks[1])
        //        }
            

        //Setting navigation splitview iwth details and add title
        //        NavigationSplitView {
        //            //Make - dynamic list
        //            List(landmarks, id: \.id) { landmark in
        //                LandmarkRow(landmark: landmark)
        //            }.navigationTitle("Lanndmarks")
        //        } detail: {
        //            Text("Select a Landmark")
        //        }
        
    }
}

#Preview {
    LandmarkList()
}
