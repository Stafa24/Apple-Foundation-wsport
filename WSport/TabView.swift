//
//  TabView.swift
//  User Page
//
//  Created by Apprenant 55 on 14/03/2025.
//

import SwiftUI

struct LandingPage: View {
    var body: some View {
       
            TabView {
                Tab("Actualité", systemImage: "newspaper") {
                    ContentPageView()
                }
                Tab("Calendrier", systemImage: "calendar") {
                    InteractiveCalendarView()
                }
                Tab("Favoris", systemImage: "star") {
                    FavoriteView()
                }
            }
            
            .accentColor(.violet)
        
    }
}

#Preview {
    LandingPage()
}
