//
//  CircleImage.swift
//  Project
//
//  Created by apple on 06/06/24.
//

import SwiftUI

struct CircleImage: View {
    var image: String
    var body: some View {
        Image(image).resizable(capInsets: EdgeInsets(top: 2.0, leading: 1.0, bottom: 0.0, trailing: 0.0), resizingMode: .stretch).padding(2.0).frame(width: 202.0, height: 200.0).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).overlay{Circle().stroke(.white, lineWidth: 4)
        }.shadow(radius: 7)
    }
}

//#Preview {
//    CircleImage()
//}
