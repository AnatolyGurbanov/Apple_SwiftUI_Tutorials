//
//  LandmarkDetail.swift
//  LandmarksApp
//
//  Created by Anatoly Gurbanov on 13.09.2021.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark

    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }

    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)

            CircleImageView(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
				HStack {
					Text(landmark.name)
						.font(.title)
					FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
				}

                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()

                Text("About \(landmark.name)")
                    .font(.title2)
                Spacer()
                Text(landmark.description)
            }
            .padding()
        }
        .ignoresSafeArea(edges: .top)
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
	static let modelData = ModelData()
	
	static var previews: some View {
		LandmarkDetail(landmark: modelData.landmarks[0])
			.environmentObject(modelData)
	}
}
