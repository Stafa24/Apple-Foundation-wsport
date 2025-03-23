import SwiftUI

struct MatchResultView: View {
    var body: some View {
        NavigationStack {
            ScrollView{
                VStack {
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(.white)
                            .frame(width: 370, height: 120)
                            .overlay {
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(lineWidth: 3)
                            }
                        HStack {
                            Image("TFC")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 70, height: 80)
                            Spacer()
                            Text("VS")
                                .font(.title)
                                .bold()
                            Spacer()
                            Image("OM")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 70, height: 80)
                        }
                        .padding(.horizontal, 20)
                    }
                    .padding(.bottom, 20)
                    
                    
                    NavigationLink {
                        PlayersList()
                    } label: {
                        ZStack(alignment: .leading) {
                            RoundedRectangle(cornerRadius: 15)
                                .fill(.purple.tertiary)
                                .frame(width: 370, height: 200)
                            
                            HStack {
                                Image("TFC")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                                    .padding(.leading, 10)
                                VStack(alignment: .leading) {
                                    Text("15' But d'Alexandra Atamani \n88' But de Selen Altunkulak \nBut d'Alexandra Atamaniuk")
                                        .font(.body)
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
                                .frame(width: 370, height: 200)
                            
                            HStack {
                                Image("OM")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                                    .padding(.leading, 10)
                                
                                VStack(alignment: .leading) {
                                    Text("35' But de Mama Diop Diop \nBut d'Alexandra Atamaniuk \nBut d'Alexandra Atamaniuk")
                                        .font(.body)
                                        .foregroundColor(.black)
                                        .padding(.top, 10)
                                }
                            }
                            .padding(10)
                        }
                    }
                }  .padding(.horizontal)
            }.navigationTitle("Match")
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
    MatchResultView()
}

