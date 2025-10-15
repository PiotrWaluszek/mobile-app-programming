//
//  PlaceCardView.swift
//  MyFavPlaces
//
//  Created by Piotr Waluszek on 15/10/2025.
//

import SwiftUI

struct PlaceCardView: View {
    var place: FavouritePlace
    
    var body: some View {
        HStack(spacing: 12) {
            Group {
                if let url = place.logoURL {
                    AsyncImage(url: url) { phase in
                        switch phase {
                        case .empty:
                            ProgressView()
                        case .success(let image):
                            image
                                .resizable()
                                .scaledToFit()
                        case .failure:
                            Image(place.type.defaultIcon)
                                .resizable()
                                .scaledToFit()
                        @unknown default:
                            Image(place.type.defaultIcon)
                                .resizable()
                                .scaledToFit()
                        }
                    }
                } else {
                    Image(place.type.defaultIcon)
                        .resizable()
                        .scaledToFit()
                }
            }
            .frame(width: 60, height: 60)
            .clipShape(Circle())
            
            // Informacje o miejscu
            VStack(alignment: .leading, spacing: 4) {
                Text(place.name)
                    .font(.headline)
                
                HStack(spacing: 4) {
                    Text(place.type.rawValue)
                    Text("•")
                    Text(place.location)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
            }
            
            Spacer()
            
            // Ikony (checkboxy - na razie tylko ikony)
            HStack(spacing: 16) {
                Image(systemName: place.isVisited ? "mappin.and.ellipse" : "mappin.slash")
                    .foregroundColor(place.isVisited ? Color("VisitedColor") : .gray)
                
                Image(systemName: place.isFavourite ? "star.fill" : "star")
                    .foregroundColor(place.isFavourite ? Color("FavouriteColor") : .gray)
            }
            .font(.title3)
        }
        .padding()
        .background(Color(UIColor.systemBackground))
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 30)
                .stroke(Color.gray.opacity(0.2), lineWidth: 1)
        )
        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 2)
    }
}

#Preview {
    VStack {
        PlaceCardView(place: FavouritePlace(
            name: "Klub Studio",
            type: .pub,
            location: "Krowodrza",
            description: "ACK Klub Studio to legendarne miejsce na muzycznej mapie Krakowa.",
            logoURL: URL(string: "https://home.agh.edu.pl/~psokolow/pum/klub-studio-logo.png"),
            backgroundURL: URL(string: "https://home.agh.edu.pl/~psokolow/pum/klub-studio-bg.jpg"),
            isFavourite: false,
            isVisited: false
        ))
        .padding()
        
        Spacer()
    }
}
