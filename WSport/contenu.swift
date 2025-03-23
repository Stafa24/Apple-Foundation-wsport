//
//  contenu.swift
//  wsport1
//
//  Created by Apprenant 48 on 12/03/2025.
//

import SwiftUI

struct ContentPageView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    Text("Les actualités")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    ForEach(actus) { actu in
                        NavigationLink {
                            
                            navactu(navactu: actu)
                        } label: {
                            VStack(alignment: .leading, spacing: 10) {
                                
                                HStack(alignment: .top, spacing: 15) {
                                    
                                    Image(actu.image)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 150, height: 200)
                                        .cornerRadius(10)
                                        .clipped()
                                        .padding()

                                    // Informations sur l'article à droite de l'image
                                    VStack(alignment: .leading, spacing: 5) {
                                        Text(actu.name)
                                            .font(.title3)
                                            .fontWeight(.bold)
                                            .foregroundColor(.black)
                                            .multilineTextAlignment(.leading)
                                        // Affichage partiel de la description
                                        Text(actu.description)
                                            .font(.body)
                                            .foregroundColor(.gray)
                                            .multilineTextAlignment(.leading)
                                            .lineLimit(3)  // Limiter la description à 3 lignes
                                            .truncationMode(.tail)
                                        // Afficher "..." à la fin

                                        // Bouton pour afficher/masquer la description complète
                                        NavigationLink(destination: navactu(navactu: actu)) {
                                            Text("Lire la suite")
                                                .font(.subheadline)
                                                .foregroundColor(.blue)
                                            
                                        }
                                    }
                                    .padding(.vertical, 5)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                }
                                .padding(.horizontal)
                                .background(Color.white) // Arrière-plan blanc pour chaque cellule
                                .cornerRadius(15)
                                .shadow(radius: 5) // Ombre légère pour les articles
                            }
                            .background(Color.white) // Fond pour chaque article
                            .cornerRadius(15)
                            .shadow(radius: 5) // Ombre pour les articles
                        }
                    }
                }
                .padding()
            }
            .background(Color.violet.opacity(0.1)) // couleur d'arrière-plan
            .toolbar {
                // Ajouter l'icône d'inscription à droite
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: ProfileView()) {
                        Image(systemName: "person.circle")
                            .font(.title)
                            .foregroundColor(.violet)
                    }
                }
            }
        }
        }
    
    }


struct ContentPageView_Previews: PreviewProvider {
    static var previews: some View {
        ContentPageView()
    }
}

