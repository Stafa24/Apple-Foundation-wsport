import SwiftUI

struct PlayersOpponentView: View {
    var womenopponent : FemaleOpponent
    var body : some View {
      
            NavigationStack{
                ScrollView{
                    ZStack {
                        VStack {
                            Image(womenopponent.playerProfil)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 200, height: 300)
                                .cornerRadius(30)
                            Text(womenopponent.playerName)
                                .fontWeight(.bold)
                                .font(.title)
                            Text(womenopponent.lastPlayerName)
                                .fontWeight(.bold)
                                .font(.title)
                            Text(womenopponent.playerPosition)
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

struct PlayersOpponentView_Previews: PreviewProvider {
    static var previews: some View {
        PlayersOpponentView(womenopponent:  FemaleOpponent (playerProfil: "ferrat-A", playerName: "MAËVA", lastPlayerName: "FERRAT", playerPosition: "Attaquante", team2: "OM"))
    }
}
