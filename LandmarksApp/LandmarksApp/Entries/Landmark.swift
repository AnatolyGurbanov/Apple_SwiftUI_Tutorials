//
//  Landmark.swift
//  LandmarksApp
//
//  Created by Anatoly Gurbanov on 03.09.2021.
//

import Foundation

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
}
