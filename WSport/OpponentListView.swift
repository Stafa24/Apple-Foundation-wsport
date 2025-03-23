import SwiftUI

struct OpponentList: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 0) {
             
                ZStack {
                   
                    Rectangle()
                        .foregroundStyle(.white)
                        .frame(width: 350, height: 100)
                        .cornerRadius(20)
                        .shadow(radius: 5)
                    HStack {
                        Text("Olympique de Marseille")
                            .fontWeight(.bold)
                           // .font(.title3)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                            .padding([.top, .leading])
                        Spacer()
                        Image("OM")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 120, height: 70)
                            .padding(.trailing)
                    }
                    .padding(.horizontal)
                    //.padding(.top, 10)
                } .padding(.top, 10)
                
                ScrollView {
                ZStack {
                    
                    Rectangle()
                        .foregroundStyle(.purple.secondary)
                        .frame(width: 400, height: 2300)
                        .cornerRadius(30)
                        .shadow(radius: 10)
                    
                        VStack(alignment: .leading, spacing: 15) {
                            ForEach(teams) { womenopponent in
                                NavigationLink {
                                    PlayersOpponentView(womenopponent: womenopponent)
                                } label: {
                                   
                                    HStack {
                                        ZStack (alignment: .leading){
                                            
                                            Circle()
                                                .fill(.white)
                                                .frame(width: 70, height: 70)
                                                .shadow(radius: 5)
                                            Image(womenopponent.playerProfil)
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 70, height: 70)
                                                .clipShape(Circle())
                                        }
                                        VStack(alignment: .leading, spacing: 5) {
                                            Text(womenopponent.playerName)
                                                .foregroundColor(.black)
                                                .fontWeight(.bold)
                                                .font(.body)
                                            Text(womenopponent.lastPlayerName)
                                                .foregroundColor(.gray)
                                                .font(.subheadline)
                                        }
                                    }
                                    .padding(.horizontal)
                                    .padding(.vertical, 5)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .shadow(radius: 5)
                                }
                            }
                            .padding(.horizontal)
                        }
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

                    .padding(.top, 10)
                }
                .padding(.top)
            }
            .padding(.top, 10)
            /*.background(
                LinearGradient(gradient: Gradient(colors: [Color(hex: "#AF52BD"), Color(hex: "#FF86F3")]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)  // Fond dégradé
            )*/
        }
    }
}

#Preview {
    OpponentList()
}

