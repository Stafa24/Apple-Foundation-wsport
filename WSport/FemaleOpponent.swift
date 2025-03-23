//
//  FemalePlayersModel.swift
//  W-Sport
//
//  Created by Apprenant 47 on 12/03/2025.
//

import SwiftUI

struct FemaleOpponent : Identifiable {
    var id = UUID ()
    var playerProfil: String
    var playerName: String
    var lastPlayerName: String
    var playerPosition: String
    var team2: String
}

var teams = [
    FemaleOpponent (playerProfil: "ferrat-A", playerName: "MAËVA", lastPlayerName: "FERRAT", playerPosition: "Attaquante", team2: "OM"),
    FemaleOpponent (playerProfil: "diop-A", playerName: "MAMA", lastPlayerName: "DIOP", playerPosition: "Attaquante", team2: "OM"),
    FemaleOpponent (playerProfil: "leger-A", playerName: "MARIE-CHARLOTTE", lastPlayerName: "LEGER", playerPosition: "Attaquante", team2: "OM"),
    FemaleOpponent (playerProfil: "domond-A", playerName: "CHELSEA", lastPlayerName: "DOMOND", playerPosition: "Attaquante", team2: "OM"),
    FemaleOpponent (playerProfil: "Dona-A", playerName: "DONA", lastPlayerName: "SCANNAPIECO", playerPosition: "Attaquante", team2: "OM"),
    FemaleOpponent (playerProfil: "Djoseph-A", playerName: "DARLINA", lastPlayerName: "JOSEPH", playerPosition: "Attaquante", team2: "OM"),
    
    FemaleOpponent (playerProfil: "mazza-M", playerName: "GRAZZIELLA", lastPlayerName: "MAZZA", playerPosition: "Millieu", team2: "OM"),
    FemaleOpponent (playerProfil: "moryl-M", playerName: "MAUDELINE", lastPlayerName: "MORYL", playerPosition: "Millieu", team2: "OM"),
    FemaleOpponent (playerProfil: "paprzycki-M", playerName: "AURORE", lastPlayerName: "PAPRZYCKI", playerPosition: "Millieu", team2: "OM"),
    FemaleOpponent (playerProfil: "aplacette-M", playerName: "TESS", lastPlayerName: "LAPLACETTE", playerPosition: "Millieu", team2: "OM"),
    FemaleOpponent (playerProfil: "diakhate-M", playerName: "NDEYE AWA", lastPlayerName: "DIAKHATE", playerPosition: "Millieu", team2: "OM"),
    FemaleOpponent (playerProfil: "perret-M", playerName: "JENNY", lastPlayerName: "PERRET", playerPosition: "Millieu", team2: "OM"),
    FemaleOpponent (playerProfil: "bourgouin-M", playerName: "LAURA", lastPlayerName: "BOURGOUIN", playerPosition: "Millieu", team2: "OM"),
    FemaleOpponent (playerProfil: "kbida-M", playerName: "INES", lastPlayerName: "KBIDA", playerPosition: "Millieu", team2: "OM"),
    
    FemaleOpponent (playerProfil: "gobert-D", playerName: "VIOLETTE", lastPlayerName: "GOBERT", playerPosition: "Défenseur", team2: "OM"),
    FemaleOpponent (playerProfil: "lobato-D", playerName: "LUCIA", lastPlayerName: "LOBATO", playerPosition: "Défenseur", team2: "OM"),
    FemaleOpponent (playerProfil: "Tjoseph-D", playerName: "TABITA", lastPlayerName: "JOSEPH", playerPosition: "Défenseur", team2: "OM"),
    FemaleOpponent (playerProfil: "khezami-D", playerName: "ROSELÈNE", lastPlayerName: "KHEZAMI", playerPosition: "Défenseur", team2: "OM"),
    FemaleOpponent (playerProfil: "blanchard-D", playerName: "NINON", lastPlayerName: "BLANCHARD", playerPosition: "Défenseur", team2: "OM"),
    FemaleOpponent (playerProfil: "couasnon-D", playerName: "ROXANE", lastPlayerName: "COUASNON", playerPosition: "Défenseur", team2: "OM"),
    FemaleOpponent (playerProfil: "giaimo-D", playerName: "CARLA", lastPlayerName: "GIAIMO", playerPosition: "Défenseur", team2: "OM"),
    
    FemaleOpponent (playerProfil: "gautier-G", playerName: "ELISA", lastPlayerName: "GAUTIER", playerPosition: "Gardien", team2: "OM"),
    FemaleOpponent (playerProfil: "verdier-G", playerName: "CHARLOTTE", lastPlayerName: "VERDIER", playerPosition: "Gardien", team2: "OM"),
    FemaleOpponent (playerProfil: "ngazi-G", playerName: "CHLOÉ", lastPlayerName: "N'GAZI", playerPosition: "Gardien", team2: "OM"),
]
