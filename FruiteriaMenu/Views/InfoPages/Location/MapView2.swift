//
//  MapView2.swift
//  FruiteriaMenu
//
//  Created by Cody Burgess on 10/17/23.
//

import SwiftUI
import MapKit


struct MapView2: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194),
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )
    
    struct Marker: Identifiable {
        var id = UUID()
        var coordinate: CLLocationCoordinate2D
    }
    
    let markerCoordinate = Marker(coordinate: CLLocationCoordinate2D(latitude: 40.2499126, longitude: -111.698208))
    
    var body: some View {
        Map(coordinateRegion: $region, showsUserLocation: true, userTrackingMode: .constant(.none), annotationItems: [markerCoordinate]) { item in
            MapPin(coordinate: item.coordinate, tint: .red)
        }
        .onAppear {
            region.center = markerCoordinate.coordinate
        }
    }
}

#Preview {
    MapView2()
}
