//
//  LandmarkRow.swift
//  Project
//
//  Created by apple on 09/06/24.
//

import Foundation
import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack{
            landmark.image.resizable().frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}
//#Preview("Chilkoot Trail"){
//    LandmarkRow(landmark: landmarks[2])
//}
//
//#Preview("St. Mary's Lake") {
//    LandmarkRow(landmark: landmarks[3])
//}
//
//#Preview("Silver Salmon") {
//    LandmarkRow(landmark: landmarks[1])
//}

#Preview {
    Group{
        LandmarkRow(landmark: landmarks[2])
        LandmarkRow(landmark: landmarks[4])
    }
}

//Previ
