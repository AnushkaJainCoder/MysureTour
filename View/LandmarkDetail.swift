//
//  LandmarkDetail.swift
//  Project
//
//  Created by apple on 09/06/24.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.location).frame(height: 300)
            CircleImage(image: landmark.imageName).offset(y: -130).padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                
                
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                    
                }.font(.subheadline).foregroundStyle(.secondary)
                Divider()
                Text("About \(landmark.name)")
                                   .font(.title2)
                Text(landmark.description).foregroundStyle(.secondary)
            }
            .padding()
                   
        }
        .navigationTitle(landmark.name).navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[0])
}
