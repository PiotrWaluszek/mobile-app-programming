//
//  ContentView.swift
//  MyFavPlaces
//
//  Created by Piotr Waluszek on 13/10/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack(spacing: 0) {
                    ZStack(alignment: .bottom) {
                        BackgroundImage()
                            .frame(height: 300)
                            .clipped()
                        
                        CircleImage()
                            .offset(y: 130)
                    }
                    .frame(width: geometry.size.width)
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Klub Studio")
                            .font(.title)
                            .padding(.top, 140)
                        
                        HStack {
                            Text("Brzmi dobrze!")
                            Spacer()
                            Text("Krowodrza")
                        }
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                        
                        Divider()
                            .padding(.vertical, 8)
                        
                        Text("O miejscu")
                            .font(.title2)
                        
                        Text("ACK Klub Studio to legendarne miejsce na muzycznej mapie Krakowa, a także nowoczesna przestrzeń eventowa. Koncerty, konferencje, wydarzenia kulturalne – tu wszystko brzmi dobrze, gdy jesteś z nami!")
                            .font(.body)
                            .fixedSize(horizontal: false, vertical: true)
                    }
                    .frame(width: geometry.size.width - 40)
                    .padding(.bottom, 20)
                }
            }
            .scrollIndicators(.hidden)
        }
    }
}

#Preview {
    ContentView()
}
