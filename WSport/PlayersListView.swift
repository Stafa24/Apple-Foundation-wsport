import SwiftUI

struct PlayersList: View {
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
                        Text("Toulouse FC")
                            .fontWeight(.bold)
                            .font(.title3)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                            .padding([.top, .leading])
                        Spacer()
                        Image("TFC")  // Remplacer "OM" par l'image souhaitée dans les assets
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 120, height: 70)
                            .padding(.trailing)
                    }
                    .padding(.horizontal)
                } .padding(.top, 10)
                ScrollView {
                ZStack {
                    
                    Rectangle()
                        .foregroundStyle(.purple.secondary)
                        .frame(width: 400, height: 2100)
                        .cornerRadius(30)
                        .shadow(radius: 10)
                    
                        VStack(alignment: .leading, spacing: 15) {
                            ForEach(players) { women in
                                NavigationLink {
                                    PlayersView(women: women)                                } label: {
                                   
                                    HStack {
                                        ZStack (alignment: .leading){
                                            
                                            Circle()
                                                .fill(.white)
                                                .frame(width: 70, height: 70)
                                                .shadow(radius: 5)
                                            Image(women.profilPicture)
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 70, height: 70)
                                                .clipShape(Circle())
                                        }
                                        VStack(alignment: .leading, spacing: 5) {
                                            Text(women.name)
                                                .foregroundColor(.black)
                                                .fontWeight(.bold)
                                                .font(.body)
                                            Text(women.lastName)
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
            .padding(.top, 20)
            /*.background(
                LinearGradient(gradient: Gradient(colors: [Color(hex: "#AF52BD"), Color(hex: "#FF86F3")]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)  // Fond dégradé
            )*/
        }
    }
}

#Preview {
    PlayersList()
}

