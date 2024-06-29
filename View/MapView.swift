//
//  MapView.swift
//  Project
//
//  Created by apple on 06/06/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    var markerColor: Color = .red
    var body: some View {
        Map(coordinateRegion: .constant(region), annotationItems: [MapMarkerItem(coordinate: coordinate)]) { marker in
            MapMarker(coordinate: marker.coordinate, tint: markerColor)
        }
    }

    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

// Wrapper struct conforming to Identifiable
struct MapMarkerItem: Identifiable {
    var id = UUID()
    var coordinate: CLLocationCoordinate2D
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 12.305163, longitude: 76.655159))
    }
}
