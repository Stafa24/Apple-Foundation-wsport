//
//  FavoriteView.swift
//  WSport
//
//  Created by Apprenant 67 on 19/03/2025.
//

import SwiftUI

struct FavoriteView: View {
    var body: some View {
        NavigationStack {
            ScrollView{
                VStack {
                    Text("Favoris")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    NavigationLink {
                        PlayersList()
                    } label: {
                        ZStack(alignment: .leading) {
                            RoundedRectangle(cornerRadius: 15)
                                .fill(.purple.tertiary)
                                .frame(width: 370, height: 100)
                                
                            
                            HStack {
                                Image("TFC")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 70, height: 70)
                                    .padding(.leading, 10)
                                VStack(alignment: .leading) {
                                    Text("Toulouse Football Club")
                                        .font(.headline)
                                        .foregroundColor(.black)
                                        .padding(.top, 10)
                                }
                            }
                            .padding(10)
                        }
                    }
                    .padding(.bottom, 20)
                    
                    
                    NavigationLink {
                        OpponentList()
                    } label: {
                        ZStack(alignment: .leading) {
                            RoundedRectangle(cornerRadius: 15)
                                .fill(.purple.quaternary)
                                .frame(width: 370, height: 100)
                            
                            HStack {
                                Image("OM")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 70, height: 70)
                                    .padding(.leading, 10)
                                
                                VStack(alignment: .leading) {
                                    Text("Olympique de Marseille")
                                        .font(.headline)
                                        .foregroundColor(.black)
                                        .padding(.top, 10)
                                }
                            }
                            .padding(10)
                        }
                    }
                }  .padding(.horizontal)
            }
            .toolbar {
                // Ajouter l'icône d'inscription à droite
     
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: ProfileView()) {
                        Image(systemName: "person.circle")
                            .font(.title)
                            .foregroundColor(.purple)
                    }
                }
            }
            .padding()
        }
        .foregroundStyle(.black)
    }
}

#Preview {
    FavoriteView()
}

