//
//  navactu.swift
//  wsport1
//
//  Created by Apprenant 48 on 12/03/2025.
//

import SwiftUI



struct navactu: View {
    
    var navactu : actu
    
    
    var body: some View {
        NavigationStack{
            ScrollView{
                    VStack(spacing: 30) {
                        
                        Image(navactu.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .cornerRadius(10)
                            .frame(width: 200, height: 200)
                            .padding()
                        
                        
                        Text(navactu.name)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        
                        Text(navactu.description)
                            .font(.title2)
                            .foregroundColor(.black)
                    }
                
            }.toolbar {
                // Ajouter l'icône d'inscription à droite
     
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: ProfileView()) {
                        Image(systemName: "person.circle")
                            .font(.title)
                            .foregroundColor(.violet)
                    }
                }
            }
            .navigationTitle("Article")
        }
        
            
            
            .padding()
            
        
            
    }
}

#Preview {
    navactu(navactu: actu(image: "foot", name: "Foot (F) : les candidatures pour l'Euro 2029 féminin sont ouvertes", description: "L'UEFA a lancé mardi l'appel à candidatures pour l'Euro 2029 féminin de football, pour lequel les associations intéressées ont jusqu'au 24 septembre pour se déclarer candidates, avant la désignation du ou des pays hôtes en décembre 2025. L'UEFA a lancé mardi l'appel à candidatures pour l'Euro 2029 féminin de football, pour lequel les associations intéressées ont jusqu'au 24 septembre pour se déclarer candidates, avant la désignation du ou des pays hôtes en décembre 2025."))
}
