//
//  MapView.swift
//  AirSensev2
//
//  Created by areeba shahid on 02/04/2023.
//

import SwiftUI
import MapKit
//import MapboxMaps

struct MapView: UIViewRepresentable {
    
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
           // .edgesIgnoringSafeArea(.top)
    }

    func updateUIView(_ view: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 25.2048, longitude: 55.2708)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
       // mapView.mapType = .satellite
        
    }
}

#if DEBUG
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
            .ignoresSafeArea()
    }
}
#endif
