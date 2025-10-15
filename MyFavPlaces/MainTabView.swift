//
//  MainTabView.swift
//  MyFavPlaces
//
//  Created by Piotr Waluszek on 15/10/2025.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            // Zakładka 1: Podsumowanie
            SummaryView()
                .tabItem {
                    Label("Podsumowanie", systemImage: "text.line.3.summary")
                }
            
            // Zakładka 2: Wszystkie (Katalog)
            Text("Wszystkie miejsca")
                .font(.largeTitle)
                .tabItem {
                    Label("Wszystkie", systemImage: "list.clipboard")
                }
            
            // Zakładka 3: Odwiedzone
            Text("Odwiedzone miejsca")
                .font(.largeTitle)
                .tabItem {
                    Label("Odwiedzone", systemImage: "mappin")
                }
            
            // Zakładka 4: Ulubione (z badge)
            Text("Ulubione miejsca")
                .font(.largeTitle)
                .tabItem {
                    Label("Ulubione", systemImage: "star.fill")
                }
                .badge(3)
        }
    }
}

#Preview {
    MainTabView()
}
