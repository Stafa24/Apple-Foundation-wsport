import SwiftUI
struct AccountCreationView : View {
    @State var account : AccountStruct
  //  @State var path = NavigationPath()
    @State private var navigateToError = false
    @State private var navigateToLanding = false
    @State private var showLandingView = false
    
    var body: some View {
        NavigationStack{
            VStack(alignment : .center, spacing: 15){
                Image("Logo WSport")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                Text("Créer un compte")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.ultraThinMaterial)
                        TextField("Email", text: $account.email)
                            .padding()
                    }.frame(width: 350, height: 50)
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.ultraThinMaterial)
                    TextField("Confirmer l'email", text: $account.confirmEmail)
                        .padding()
                }.frame(width: 350, height: 50)
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.ultraThinMaterial)
                    SecureField("Mot de passe", text: $account.password)
                        .padding()
                }.frame(width: 350, height: 50)
            
                        
          Button {
                                    if account.email != account.confirmEmail {
                                      navigateToError = true
                                    } else {
                                        navigateToLanding = true
                                        showLandingView = true
                                   }
              
                               } label: {
                                   ZStack {
                                      Capsule()
                                          .fill(Color.purple)                                            .frame(width: 200, height: 55)
                                       Text("S'inscrire")
                                           .foregroundStyle(.white)
                                           .font(.title)
                                            .fontWeight(.bold)
                                    }
                                }

                NavigationLink(destination: LandingPage().navigationBarBackButtonHidden(true), isActive: $navigateToLanding) {

                                }
                               
                                NavigationLink(destination: ErrorView(), isActive: $navigateToError) {

                                }
                    
                Text("Déjà un compte ?")
                        .font(.title)
                        .fontWeight(.bold)
                    NavigationLink{
                        LoginView()
                    }label: {
                        Text("Se connecter")
                            .foregroundStyle(.purple.secondary)
                            .underline()
                    }
                    NavigationLink{
                        LandingPage()
                            .navigationBarBackButtonHidden(true)
                    }label: {
                        Text("Continuer en invité")
                            .foregroundStyle(.purple.secondary)
                            .underline()
                    }
                }
            }
        .fullScreenCover(isPresented: $showLandingView){
            LandingPage()
        }
        }
    }
#Preview {
    AccountCreationView(account: AccountStruct(email: "", confirmEmail: "", password: ""))
       
}
