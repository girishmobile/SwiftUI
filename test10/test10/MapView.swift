//
//  MapView.swift
//  test10
//
//  Created by Girish Chauhan on 12/07/22.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
   
    func makeUIView(context:  UIViewRepresentableContext<MapView>) ->
    
        MKMapView{
        MKMapView()
    }
    func updateUIView(_ uiView: MapView.UIViewType, context: UIViewRepresentableContext<MapView>) {
        
        // Put the code to update the uikit view
         let coordinate = CLLocationCoordinate2D(
            latitude: 34.011286, longitude: -116.166868)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
