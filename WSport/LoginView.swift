import SwiftUI


struct LoginView : View {
    @State var email : String = ""
    @State var password : String = ""
    var body: some View {
        VStack{
            Image("Logo WSport")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
            Text("Connexion")
                .font(.largeTitle)
                .fontWeight(.bold)
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .fill(.ultraThinMaterial)
                TextField("email", text: $email)
                    .padding()
            }.frame(width: 350, height: 50)
                .padding(5)
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .fill(.ultraThinMaterial)
                SecureField("password", text: $password)
                    .padding()
            }.frame(width: 350, height: 50)
        }
    }
}
#Preview {
    LoginView(email: "", password: "")
}
