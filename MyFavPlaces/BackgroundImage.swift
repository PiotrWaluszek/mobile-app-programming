//
//  BackgroundImage.swift
//  MyFavPlaces
//
//  Created by Piotr Waluszek on 13/10/2025.
//


import SwiftUI

struct BackgroundImage: View {
    var body: some View {
        Image("background")
            .resizable()
            .scaledToFill()
            .frame(maxWidth: .infinity)
    }
}

#Preview {
    BackgroundImage()
}
