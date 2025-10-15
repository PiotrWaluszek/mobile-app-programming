//
//  ContentView.swift
//  MyFavPlaces
//
//  Created by Piotr Waluszek on 13/10/2025.
//

import SwiftUI

struct ContentView: View {
    var place: FavouritePlace
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack(spacing: 0) {
                    ZStack(alignment: .bottom) {
                        BackgroundImage(
                            imageURL: place.backgroundURL,
                            defaultImage: "background-default"
                        )
                        .frame(height: 300)
                        
                        CircleImage(
                            imageURL: place.logoURL,
                            defaultImage: place.type.defaultIcon
                        )
                        .offset(y: 130)
                    }
                    .frame(width: geometry.size.width)
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text(place.name)
                            .font(.title)
                            .padding(.top, 140)
                        
                        HStack {
                            Text(place.type.rawValue)
                            Spacer()
                            Text(place.location)
                        }
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                        
                        Divider()
                            .padding(.vertical, 8)
                        
                        Text("O miejscu")
                            .font(.title2)
                        
                        Text(place.description)
                            .font(.body)
                            .fixedSize(horizontal: false, vertical: true)
                    }
                    .frame(width: geometry.size.width - 40)
                    .padding(.bottom, 20)
                }
            }
            .scrollIndicators(.hidden)
            .ignoresSafeArea(edges: .top)
        }
    }
}

#Preview {
    ContentView(place: FavouritePlace(
        name: "Klub Studio",
        type: .pub,
        location: "Krowodrza",
        description: "ACK Klub Studio to legendarne miejsce na muzycznej mapie Krakowa, a także nowoczesna przestrzeń eventowa. Koncerty, konferencje, wydarzenia kulturalne – tu wszystko brzmi dobrze, gdy jesteś z nami!",
        logoURL: URL(string: "https://home.agh.edu.pl/~psokolow/pum/klub-studio-logo.png"),
        backgroundURL: URL(string: "https://home.agh.edu.pl/~psokolow/pum/klub-studio-bg.jpg"),
        isFavourite: false,
        isVisited: false
    ))
}
