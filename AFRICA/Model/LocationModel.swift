//
//  LocationModel.swift
//  AFRICA
//
//  Created by Abdelrahman Shehab on 08/04/2023.
//

import Foundation
import MapKit

struct NAtionalParkLocation: Codable, Identifiable {
    
    var id: String
    var name: String
    var image: String
    var latitude: Double
    var longitude: Double
    
    var location: CLLocationCoordinate2D {
        
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
