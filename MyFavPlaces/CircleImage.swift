//
//  CircleImage.swift
//  MyFavPlaces
//
//  Created by Piotr Waluszek on 13/10/2025.
//

import SwiftUI

struct CircleImage: View {
    var imageURL: URL?
    var defaultImage: String
    
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
                            .scaledToFit()
                    case .failure:
                        Image(defaultImage)
                            .resizable()
                            .scaledToFit()
                    @unknown default:
                        Image(defaultImage)
                            .resizable()
                            .scaledToFit()
                    }
                }
            } else {
                Image(defaultImage)
                    .resizable()
                    .scaledToFit()
            }
        }
        .frame(height: 260)
        .clipShape(Circle())
        .overlay(
            Circle().stroke(Color.white, lineWidth: 4)
        )
        .shadow(radius: 7)
    }
}

#Preview {
    CircleImage(
        imageURL: URL(string: "https://home.agh.edu.pl/~psokolow/pum/klub-studio-logo.png"),
        defaultImage: "pub-default"
    )
}
