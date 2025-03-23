//
//  FavSport.swift
//  WSport
//
//  Created by Apprenant 55 on 14/03/2025.
//

import Foundation


struct FavSportStruct: Identifiable {
        var id = UUID()
        var imageName: String
        var sportName: String
        var favorit = false
    }

var favSports = [
    FavSportStruct(imageName: "soccerball", sportName: "Football"),
    FavSportStruct(imageName: "basketball", sportName: "Basketball"),
    FavSportStruct(imageName: "tennisball", sportName: "Tennis"),
    FavSportStruct(imageName: "rugbyball", sportName: "Rugby"),
    FavSportStruct(imageName: "volleyball", sportName: "Volleyball"),
    FavSportStruct(imageName: "skis", sportName: "Ski"),
]
