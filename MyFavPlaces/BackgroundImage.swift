//  BackgroundImage.swift
//  MyFavPlaces
//
//  Created by Piotr Waluszek on 13/10/2025.
//

import SwiftUI

struct BackgroundImage: View {
    var imageURL: URL?
    var defaultImage: String = "background-default"
    
    var body: some View {
        Group {
            if let url = imageURL {
                AsyncImage(url: url) { phase in
                    switch phase {
                    case .empty:
                        ProgressView()
                    case .success(let image):
                        image
                            .resizable()
                            .scaledToFill()
                    case .failure:
                        Image(defaultImage)
                            .resizable()
                            .scaledToFill()
                    @unknown default:
                        Image(defaultImage)
                            .resizable()
                            .scaledToFill()
                    }
                }
            } else {
                Image(defaultImage)
                    .resizable()
                    .scaledToFill()
            }
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    BackgroundImage(
        imageURL: URL(string: "https://home.agh.edu.pl/~psokolow/pum/klub-studio-bg.jpg")
    )
}
