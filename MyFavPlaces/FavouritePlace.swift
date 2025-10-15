//
//  FavouritePlace.swift
//  MyFavPlaces
//
//  Created by Piotr Waluszek on 15/10/2025.
//

import Foundation

enum PlaceType: String, CaseIterable {
    case restaurant = "Restauracja"
    case cafe = "Kawiarnia"
    case pub = "Pub"
    
    var defaultIcon: String {
        switch self {
        case .restaurant: return "restaurant-default"
        case .cafe: return "cafe-default"
        case .pub: return "pub-default"
        }
    }
}

struct FavouritePlace: Identifiable {
    let id = UUID()
    var name: String
    var type: PlaceType
    var location: String
    var description: String
    var logoURL: URL?
    var backgroundURL: URL?
    var isFavourite: Bool
    var isVisited: Bool
}
