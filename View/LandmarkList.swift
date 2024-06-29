//
//  LandmarkList.swift
//  Project
//
//  Created by apple on 09/06/24.
//

import Foundation
import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView{
            
            List(landmarks){ landmark in
                NavigationLink{
                    LandmarkDetail(landmark: landmark)
                }label:{
                    LandmarkRow(landmark: landmark)
                }
                
                
            }.navigationTitle("Famous Places")
        }detail: {
            LandmarkDetail(landmark: landmarks[0])
        }
    }
}   

#Preview{
    LandmarkList()
}
