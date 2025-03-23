//
//  FavSportView.swift
//  WSport
//
//  Created by Apprenant 55 on 14/03/2025.
//

import SwiftUI

struct FavSportView: View {
    let columns: [GridItem] = [
        GridItem(.fixed(150)),
        GridItem(.fixed(150))
    ]

    @State private var favSportState = favSports
    var body: some View {
        VStack{
            NavigationStack{
                Text("Sélectionne tes sports préférés")
                    .font(.title2)
                    .bold()
                    .padding(.vertical)
                LazyVGrid(columns: columns, spacing: 20){
                    ForEach($favSportState) { $sport in
                        Button {
                            sport.favorit.toggle()
                        } label : {
                            VStack {
                                Image(systemName:sport.imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 120)
                                    //.padding(5)
                                    .padding(.horizontal, 15)
                                    .foregroundColor(.violet)
                                
                                Text(sport.sportName)
                                    .foregroundStyle(.violet)
                                    .bold()
                                    .padding(.bottom)
                            }
                            .overlay(
                                sport.favorit
                                ? RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.purple.secondary, lineWidth: 3)
                                : nil
                            )
                    }
                }
            }
                NavigationLink {
                    FavTeamView()
                } label: {
                    ZStack {
                        Capsule()
                            .fill(Color.violet)
                            .frame(width: 150, height: 50)
                        Text("SUIVANT")
                            .foregroundStyle(.white)
                            .bold()
                    }.padding()
                }
            }
        }
    }
}

#Preview {
    FavSportView()
}
