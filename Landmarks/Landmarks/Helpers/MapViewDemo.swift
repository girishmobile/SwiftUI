//
//  MapViewDemo.swift
//  Landmarks
//
//  Created by Girish Chauhan on 15/07/22.
//

import SwiftUI
import MapKit

struct MapViewDemo: View {
    var coordinate:CLLocationCoordinate2D

    @State private var region = MKCoordinateRegion(
        center:CLLocationCoordinate2D(latitude: 34.011286, longitude:-116.166868),
        span:MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    var body: some View {
       
        Map(coordinateRegion: $region)
            .onAppear{
             setRegion(coordinate)
            }
    }
    private func setRegion(_ coordinate:CLLocationCoordinate2D){
        
        region = MKCoordinateRegion(
            center: coordinate, span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
    
}

struct MapViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        
        MapViewDemo(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))

    }
}
