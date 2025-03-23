//
//  landingpage.swift
//  wsport1
//
//  Created by Apprenant 48 on 12/03/2025.
//

import SwiftUI

struct LoadingScreenView: View {
    @State private var isLoading = true
    @State private var navigateToNextPage = false
    
    // Délai de 3 secondes avant de naviguer
    
    private let loadingDuration: Double = 3
    @State private var scale: CGFloat = 1.0
    
    var body: some View {
        ZStack {
            // Fond avec un dégradé entre AF52BD et FF86F3
          /*  LinearGradient(gradient: Gradient(colors: [Color(hex: "#AF52BD"), Color(hex: "#FF86F3")]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)*/
            
            
            VStack {
                Image("Logo WSport")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 200)
                    .cornerRadius(200)
                    .foregroundColor(.white)
                    .padding(.bottom, 20)
                    .scaleEffect(scale) // Applique l'effet de mise à l'échelle
                
                Text("Bienvenue sur W-SPORT")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.violet)
                    .padding(.top, 54.0)
                
                
                if isLoading {
                    /*Text("Chargement en cours...")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.top, 20)*/
                }
            }
        }
        .onAppear {
            // Animation d'agrandissement
            
            withAnimation(.easeInOut(duration: loadingDuration)) {
                self.scale = 2
            }
            
            // Délai pour changer de vue après 3 secondes
            DispatchQueue.main.asyncAfter(deadline: .now() + loadingDuration) {
                withAnimation {
                    self.isLoading = false
                    self.navigateToNextPage = true
                }
            }
        }
        .fullScreenCover(isPresented: $navigateToNextPage) {
            FavSportView()
        }
    }
}

struct LoadingScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingScreenView()
    }
}


