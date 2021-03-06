//
//  Landmark.swift
//  LandmarksApp
//
//  Created by Anatoly Gurbanov on 03.09.2021.
//

import CoreLocation
import Foundation
import SwiftUI

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool

    private var coordinates: Coordinates
    private var imageName: String

    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    var image: Image {
        Image(imageName)
    }
}
