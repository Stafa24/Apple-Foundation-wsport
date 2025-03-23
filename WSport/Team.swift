import SwiftUI


struct FavTeamStruct: Identifiable {
        var id = UUID()
        var imageName: String
        var teamName: String
        var favorit = false
    }

var favTeams = [
    FavTeamStruct(imageName: "TFC", teamName: "TFC"),
    FavTeamStruct(imageName: "psg", teamName: "PSG"),
    FavTeamStruct(imageName: "logobarca", teamName: "FC Barcelone"),
    FavTeamStruct(imageName: "nicelogo", teamName: "OGC Nice"),
    FavTeamStruct(imageName: "footbordeaux", teamName: "Stade Bordelais"),
    FavTeamStruct(imageName: "losc", teamName: "Lille"),
    FavTeamStruct(imageName: "manchester", teamName: "Manchester United"),
    FavTeamStruct(imageName: "OM", teamName: "OM"),
]
