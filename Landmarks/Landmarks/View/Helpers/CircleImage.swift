//
//  CircleImage.swift
//  Landmarks
//
//  Created by Kyohei Sakamoto on 2022/01/23.
//

import SwiftUI

struct CircleImage: View {
    var image: Image

    var body: some View {
        if #available(iOS 15.0, *) {
            image
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay {
                    Circle().stroke(.white, lineWidth: 4)
                }
                .shadow(radius: 7)
        } else {
            // Fallback on earlier versions
        }
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
