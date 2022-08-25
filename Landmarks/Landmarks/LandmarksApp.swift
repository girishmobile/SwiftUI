//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Girish Chauhan on 14/07/22.
//

import SwiftUI

@main
struct LandmarksApp: App {
    
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
           ContentView()
                .environmentObject(modelData)
            
        }
    }
}
