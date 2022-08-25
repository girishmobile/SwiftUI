//
//  ContentView.swift
//  Landmarks
//
//  Created by Girish Chauhan on 14/07/22.
//

import SwiftUI

struct ContentView: View {
    @State private var selection : Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
