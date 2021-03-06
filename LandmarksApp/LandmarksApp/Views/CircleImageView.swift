//
//  CircleImageView.swift
//  LandmarksApp
//
//  Created by Anatoly Gurbanov on 01.09.2021.
//

import SwiftUI

struct CircleImageView: View {
    var image: Image

    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView(image: Image("turtlerock"))
    }
}
