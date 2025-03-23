//
//  FemalePlayersModel.swift
//  W-Sport
//
//  Created by Apprenant 47 on 12/03/2025.
//

import SwiftUI

struct FemalePlayers : Identifiable {
    var id = UUID ()
    var profilPicture: String
    var name: String
    var lastName: String
    var position: String
    var team1: String
}

var players = [
    FemalePlayers (profilPicture: "sonia-A 2", name: "SONIA", lastName: "ROUMIGA", position: "Attaquante", team1: "TFC"),
    FemalePlayers (profilPicture: "selen-Altunkulak-A", name: "SELEN", lastName: "ALTUNKULAK", position: "Attaquante", team1: "TFC"),
    FemalePlayers (profilPicture: "nivine-Ali-Abdallah-A", name: "NIVINE", lastName: "ALI ABDALLAH", position: "Attaquante", team1: "TFC"),
    FemalePlayers (profilPicture: "lapasousse-A", name: "LOUNA", lastName: "LAPASSOUSE", position: "Attaquante", team1: "TFC"),
    FemalePlayers (profilPicture: "marty-A", name: "CHLOÉ", lastName: "MARTY", position: "Attaquante", team1: "TFC"),
    
    FemalePlayers (profilPicture: "solanet-M", name: "TATIANA", lastName: "SOLANET", position: "Millieu", team1: "TFC"),
    FemalePlayers (profilPicture: "lambert-M", name: "SARAH", lastName: "LAMBERT", position: "Millieu", team1: "TFC"),
    FemalePlayers (profilPicture: "grinfan-M", name: "ROMA", lastName: "GRINFAN", position: "Millieu", team1: "TFC"),
    FemalePlayers (profilPicture: "ettien-M", name: "KRYSTAL", lastName: "ETTIEN", position: "Millieu", team1: "TFC"),
    FemalePlayers (profilPicture: "yacob-M", name: "ILANA", lastName: "YACOB", position: "Millieu", team1: "TFC"),
    FemalePlayers (profilPicture: "garcia-carrette-M", name: "HORTENSE", lastName: "GARCIA-CARRETTE", position: "Milieu", team1: "TFC"),
    FemalePlayers (profilPicture: "lecocq-M", name: "ANAËLLE", lastName: "LECOCQ", position: "Millieu", team1: "TFC"),
    FemalePlayers (profilPicture: "atamaniuk-M", name: "ALEXANDRA", lastName: "ATAMANIUK", position: "Millieu", team1: "TFC"),
    
    FemalePlayers (profilPicture: "rouland-D", name: "PRUNE", lastName: "ROULAND", position: "Défenseur", team1: "TFC"),
    FemalePlayers (profilPicture: "pardon-D", name: "PAULINE", lastName: "PARDON", position: "Défenseur", team1: "TFC"),
    FemalePlayers (profilPicture: "monadier-D", name: "PAULINE", lastName: "MONADIER", position: "Défenseur", team1: "TFC"),
    FemalePlayers (profilPicture: "genet-D", name: "MARINE", lastName: "GENET", position: "Défenseur", team1: "TFC"),
    FemalePlayers (profilPicture: "jumere-D", name: "LOU", lastName: "JUMERE", position: "Défenseur", team1: "TFC"),
    FemalePlayers (profilPicture: "anglais-D", name: "ANNAËLLE", lastName: "ANGLAIS", position: "Défenseur", team1: "TFC"),
    
    FemalePlayers (profilPicture: "priaulet-G", name: "ANAÏS", lastName: "PRIAULET", position: "Gardien", team1: "TFC"),
    FemalePlayers (profilPicture: "grillion-G", name: "GAËLLE", lastName: "GRILLON", position: "Gardien", team1: "TFC"),
    FemalePlayers (profilPicture: "cimatti-G", name: "MARIE", lastName: "CIMATTI", position: "Gardien", team1: "TFC"),
]
