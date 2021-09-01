//
//  MapView.swift
//  LandmarksApp
//
//  Created by Anatoly Gurbanov on 02.09.2021.
//

import MapKit
import SwiftUI

// CLLocationCoordinate2D(latitude: 51.481_686, longitude: -0.191_035)
// CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868)

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 51.481_686, longitude: -0.191_035),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )

    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
