//
//  ContentView.swift
//  User Page
//
//  Created by Apprenant 55 on 13/03/2025.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack {
                    ZStack {
                        Image("fond")
                            .imageScale(.large)
                            .foregroundStyle(.tint)
                        Image("pp")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 200, height: 200)
                            .clipShape(Circle())
                    }
                    Spacer()
                    HStack{
                        VStack {
                            Text("Parrainage")
                                .font(.body)
                                .foregroundColor(.secondary)
                                .padding()
                            Text("-")
                                .font(.body)
                                .padding(-10)
                        }
                        VStack {
                            Text("Points")
                                .font(.body)
                                .foregroundColor(.secondary)
                                .padding()
                            Text("22")
                                .font(.body)
                                .padding(-10)
                        }
                        VStack {
                            Text("Niveaux")
                                .font(.body)
                                .foregroundColor(.secondary)
                                .padding()
                            Text("1")
                                .font(.body)
                                .padding(-10)
                        }
                    }
                    Text("Aperçu du profil")
                        .bold()
                        .offset(x: -100, y: 10)
                        .padding()
                    HStack {
                        ZStack{
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color.rose)
                                .frame(width: 165, height: 200)
                                .padding(.leading)
                                .padding(.top)
                                .padding(.bottom)
                            ZStack{
                                Circle()
                                    .fill(Color.white)
                                    .frame(width: 50, height: 50)
                                    .shadow(radius: 10)
                                    .offset(x: -40, y: -55)
                                Image(systemName: "person.2.fill")
                                    .foregroundStyle(.violet)
                                    .offset(x: -40, y: -55)
                            }
                            Text("Mes parrainages")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .foregroundStyle(.white)
                                .offset(x: 9, y: -10)
                            Text("Plus que 2 parainnages avant la récompense !")
                                .foregroundStyle(.white)
                                .offset(x: 10, y: 30)
                                .font(.system(size: 15))
                                .padding(.top)
                                .padding(30)
                        }
                        ZStack{
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color.violet)
                                .frame(width: 165, height: 200)
                                .padding(.top)
                                .padding(.bottom)
                                .padding(.trailing)
                            ZStack{
                                Circle()
                                    .fill(Color.white)
                                    .frame(width: 50, height: 50)
                                    .shadow(radius: 10)
                                    .offset(x: -40, y: -55)
                                Image(systemName: "medal.fill")
                                    .foregroundStyle(.violet)
                                    .offset(x: -40, y: -55)
                            }
                            Text("Mes niveaux")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .foregroundStyle(.white)
                                .offset(x: -20, y: -10)
                            Text("Plus que 3 niveaux avant la récompense !")
                                .foregroundStyle(.white)
                                .offset(x: -5, y: 30)
                                .font(.system(size: 15))
                                .padding(.top)
                                .padding(30)
                        }
                    }
                    NavigationLink{
                        RecompenseView()
                    }label:{
                        VStack {
                            ZStack{
                                RoundedRectangle(cornerRadius: 40)
                                    .fill(.ultraThinMaterial)
                                    .frame(width: 300, height: 50)
                                .shadow(radius: 10)
                                Text("Voir mes récompenses 🎁")
                                    .foregroundStyle(.violetfoncé)
                                    .bold()
                            }
                            .padding(.leading, 40)
                            
                        }
                            
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .navigationTitle("Profil")
                    .font(.system(size: 20))
                    .padding()
                }
            }
            .padding()
            Spacer()
        }
    }
}
#Preview {
    ProfileView()
}
