//
//  MapView.swift
//  TripWay IOS Playground
//
//  Created by Loup RUSAK on 09/06/2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    //    @State private var region = MapCameraPosition.region(
    //        MKCoordinateRegion(
    //            center: CLLocationCoordinate2D(latitude: 37.787994, longitude: -122.407437),
    //            span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    //    )
    
    @State private var region = MapCameraPosition.automatic
    
    
    @State private var selectedMarker: MKMapItem?
    
    var body: some View {
        
        Map(initialPosition: region, selection: $selectedMarker) {
            ForEach(cities){city in
                Marker(city.name, coordinate: CLLocationCoordinate2D(latitude: city.latitude, longitude: city.longitude))
            }
        }
//        .safeAreaInset(edge: .bottom) {
//            if let selectedMarker {
//                DetailView(imageName: "noimage", cityName: selectedMarker.name ?? "", cityDescription: selectedMarker.description)
//            }
//        }
        
    }
}

#Preview {
    MapView()
}
