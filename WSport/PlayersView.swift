//
//  ContentView.swift
//  W-Sport
//
//  Created by Apprenant 47 on 12/03/2025.
//

import SwiftUI

struct PlayersView: View {
    var women : FemalePlayers
    var body: some View {
      
            NavigationStack{
                ScrollView{
                    ZStack {
                        VStack {
                            Image(women.profilPicture)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 200, height: 300)
                                .cornerRadius(30)
                            Text(women.name)
                                .fontWeight(.bold)
                                .font(.title)
                            Text(women.lastName)
                                .fontWeight(.bold)
                                .font(.title)
                            Text(women.position)
                        }
                    }.padding(50)
                }.background(Color.violet.opacity(0.1).frame(width: 500, height: 1200))
                    .navigationTitle("Joueuses")
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
            }.background(Color.violet.opacity(0.1).frame(width: 500, height: 1200))
        
        .padding()
    }
}

struct PlayersView_Previews: PreviewProvider {
    static var previews: some View {
        PlayersView(women: FemalePlayers (profilPicture: "sonia-A 2", name: "SONIA", lastName: "ROUMIGA", position: "Attaquante", team1: "TFC"))
    }
}
