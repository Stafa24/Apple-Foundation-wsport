//
//  RecompenseView.swift
//  WSport
//
//  Created by Apprenant 67 on 18/03/2025.
//

import SwiftUI

struct RecompenseView: View{
    @State var enterCode: String = ""
    @State var code = false
    @State var promo = false
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack {
                        Text("Donna")
                            .font(.title)
                            .bold()
                            .padding()
                        ZStack {
                            Image("pp")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 150, height: 150)
                                .clipShape(Circle())
                                .padding()
                        }
                        Spacer()
                    ProgressView()
                        .padding()
                    ZStack {
                            RoundedRectangle(cornerRadius: 12)
                            .fill(Color.white)
                                .frame(width: 340, height: 250)
                                .padding(.top)
                                .padding(.bottom)
                                .shadow(radius: 10)
                        VStack{
                            Text("Parrainez vos amis")
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundStyle(.violet)
                            Text("Obtenez plus de récompenses en invitant vos amis grâce à votre code parrainage")
                                .font(.body)
                                .foregroundColor(.secondary)
                                .padding()
                            ZStack {
                                Button
                                {
                                    code=true
                                }label: {
                                    ZStack{
                                        Capsule()
                                            .fill(Color.violet)
                                        Text("Partager votre code parrainage")
                                            .foregroundStyle(.white)
                                            .bold()
                                    }.frame(width: 290, height: 50)
                                }
                            }
                        }
                        .frame(width: 340, height: 250)
                    }
                    .alert("Votre code", isPresented: $code) {
                        Button("OK", role: .cancel) { }
                    } message: {
                        Text("WSP10")
                    }
                    VStack{
                        ZStack {
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color.white)
                                .frame(width: 340, height: 150)
                                .padding(.top)
                                .padding(.bottom)
                                .shadow(radius: 10)
                           
                            VStack {
                                Text("Entrez un code 👇")
                                    .font(.title2)
                                    .fontWeight(.semibold)
                                    .padding(.top)
                                ZStack{
                                    RoundedRectangle(cornerRadius: 40)
                                        .fill(.ultraThinMaterial)
                                        .frame(width: 300, height: 50)
                                    TextField("Code", text: $enterCode)
                                        .frame(width: 250, height: 50)
                                        .padding()
                                }
                            }
                        }
                       
                    }
                    }
                ZStack {
                        Button
                    {
                            promo = true
                    }label:{ZStack{
                        Capsule()
                            .fill(Color.violetfoncé)
                        Text("Récupérez votre récompense ")
                            .foregroundStyle(.white)
                            .bold()
                    }.frame(width: 310, height: 50)}
                    }
                    .alert("Réduction chez Nike", isPresented: $promo) {
                        Button("OK", role: .cancel) { }
                    } message: {
                        Text("Code promo -10% avec le code : Nike10")
                    }
//                ZStack {
//                        RoundedRectangle(cornerRadius: 12)
//                        .fill(Color.white)
//                            .frame(width: 340, height: 250)
//                            .padding(.top)
//                            .padding(.bottom)
//                            .shadow(radius: 10)
//                    VStack{
//                        Text("Récupérer votre récompense : 💰")
//                            .font(.title)
//                            .fontWeight(.semibold)
//                            .foregroundStyle(.violet)
//                        Text("Obtenez -10% de réduction chez Nike")
//                            .font(.body)
//                            .foregroundColor(.secondary)
//                            .padding()
//                        ZStack {
//                            Button
//                            {
//                                promo=true
//                            }label: {
//                                ZStack{
//                                    Capsule()
//                                        .fill(Color.violet)
//                                    Text("Récupérer ici")
//                                        .foregroundStyle(.white)
//                                        .bold()
//                                }.frame(width: 290, height: 50)
//                            }
//                        }
//                    }
//                    .frame(width: 340, height: 250)
//                }
//                .alert("Votre code", isPresented: $code) {
//                    Button("OK", role: .cancel) { }
//                } message: {
//                    Text("WSP10")
//                }
                
                    }
//            
//            .frame(maxWidth: .infinity, alignment: .leading)
//            .navigationTitle("Récompenses 🎁")
//            .font(.system(size: 20))
//            .padding()
                }
            }
        }


#Preview {
    RecompenseView()
}
