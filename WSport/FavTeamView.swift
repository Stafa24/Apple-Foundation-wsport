import SwiftUI

struct FavTeamView: View {

    let columns: [GridItem] = [
        GridItem(.fixed(150)),
        GridItem(.fixed(150))
    ]

    @State var favTeamsState = favTeams

    var body: some View {
        NavigationStack {
            VStack {
                Text("Sélectionne tes clubs préférés")
                    .font(.title2)
                    .bold()
                    .padding(.vertical)

                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach($favTeamsState) { $team in
                        Button {
                            team.favorit.toggle()
                        } label: {
                            Image(team.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 120, height: 120)
                                .padding(3)
                                .overlay(
                                    team.favorit
                                    ? RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.purple.secondary, lineWidth: 3)
                                    : nil
                                )
                        }
                    }
                }

                NavigationLink {
                    AccountCreationView(account: AccountStruct(email: "", confirmEmail: "", password: ""))
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
            .padding()
        }
    }
}

#Preview {
    FavTeamView()
}
