//
//  Landmark.swift
//  Project
//
//  Created by apple on 07/06/24.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Codable, Hashable, Identifiable{
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var imageName: String
    var image: Image {
        Image(imageName)
    }
    var coordinates: Coordinates
    var location: CLLocationCoordinate2D{
        CLLocationCoordinate2D(
            latitude: coordinates.latitude, longitude: coordinates.longitude
        )
    }
    
    struct Coordinates: Hashable, Codable{
        var latitude: Double
        var longitude: Double
        
    }
}
