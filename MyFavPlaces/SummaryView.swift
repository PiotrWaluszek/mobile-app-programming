//
//  SummaryView.swift
//  MyFavPlaces
//
//  Created by Piotr Waluszek on 15/10/2025.
//

import SwiftUI

struct SummaryView: View {
    var body: some View {
        ZStack {
            // Gradient w tle - szybsze przejście
            LinearGradient(
                colors: [Color("GradientStart"), Color("GradientEnd")],
                startPoint: .top,
                endPoint: .center
            )
            .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 0) {
                Text("Podsumowanie")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.leading, 20)
                    .padding(.top, 60)
                
                // Ramki ze statystykami - bliżej tytułu
                VStack(spacing: 12) {
                    StatCard(
                        icon: "list.bullet.clipboard",
                        label: "Skatalogowanych miejsc: 21",
                        iconColor: .blue
                    )
                    
                    StatCard(
                        icon: "star.fill",
                        label: "Ulubionych: 3",
                        iconColor: Color("FavouriteColor")
                    )
                    
                    StatCard(
                        icon: "mappin.and.ellipse",
                        label: "Odwiedzonych: 7",
                        iconColor: Color("VisitedColor")
                    )
                }
                .padding(.horizontal, 20)
                .padding(.top, 20)
                
                Spacer()
            }
        }
    }
}

struct StatCard: View {
    var icon: String
    var label: String
    var iconColor: Color
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .font(.title2)
                .foregroundColor(iconColor)
            
            Text(label)
                .font(.body)
            
            Spacer()
        }
        .padding()
        .background(.white)
        .cornerRadius(12)
    }
}

#Preview {
    SummaryView()
}
