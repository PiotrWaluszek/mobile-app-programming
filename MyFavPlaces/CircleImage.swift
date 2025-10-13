//
//  CircleImage.swift
//  MyFavPlaces
//
//  Created by Piotr Waluszek on 13/10/2025.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("logo")
            .resizable()
            .scaledToFit()
            .frame(height: 260)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4)
            )
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage()
}
