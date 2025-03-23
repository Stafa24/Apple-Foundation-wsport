//
//  actus.swift
//  wsport1
//
//  Created by Apprenant 48 on 12/03/2025.
//

import SwiftUI

struct actu: Identifiable {
    let id = UUID()
    let image: String
    let name: String
    let description: String
    
    
    
    
}

let actus = [
    actu(image: "foot", name: "Foot (F) : les candidatures pour l'Euro 2029 féminin sont ouvertes", description: "L'UEFA a lancé mardi l'appel à candidatures pour l'Euro 2029 féminin de football, pour lequel les associations intéressées ont jusqu'au 24 septembre pour se déclarer candidates, avant la désignation du ou des pays hôtes en décembre 2025. Le gouvernement européen du football précise que deux pays maximum peuvent concourir ensemble, à condition d'être voisins, et spécifie qu'il faut disposer d'au moins un stade de 50 000 places et au moins trois de 30 000 places pour recevoir la compétition."),
    actu(image: "basket", name: "Basket. N1F : Cherbourg a subi la loi du leader", description: "Cherbourg a connu un sacré coup d’arrêt, hier, chez le leader. Pleines de confiance, les Manchoises pressaient Reims, les locales, sous la pression, accumulaient les déchets. Résultat, sous l’impulsion de l’efficace Diawara qui inscrivait tous les points de son équipe, l’USLG menait 8-2 (5’). Pas de quoi néanmoins troubler le CBF qui ne s’affolait pas pour recoller tranquillement à 10-10 (7’). Mieux, via l’adresse extérieure de Ounounou et Kessler, les locales atteignaient la mini-pause à 16-13."),
    actu(image: "tennis", name: "Indian Wells. Accrochée, Madison Keys s’en sort en 2h52 contre Elise Mertens au 3e tour", description: "Ce lundi 10 mars, l’Américaine Madison Keys s’est défaite de la Belge Elise Mertens en trois sets. Une rencontre accrochée entre les deux joueuses, qui ont fini par se départager en 2h52. malgré un tie-break remporté dans le deuxième set, Mertens n’a pu que s’incliner face à la numéro 5 mondiale."),
    actu(image: "volley", name: "Les Bleues pour un exploit historique", description: "Opposée ce mardi soir à l'Italie, tenant du titre européen et qui joue l'Euro à domicile, l'équipe de France devra créer un exploit monumental pour se qualifier pour les demi-finales. Opposée ce mardi soir à l'Italie, tenant du titre européen et qui joue l'Euro à domicile, l'équipe de France devra créer un exploit monumental pour se qualifier pour les demi-finales."),
    actu(image: "foot1", name: " une plateforme pour donner la parole aux footballeuses", description: "L'UEFA a annoncé ce week-end le lancement de sa plateforme « Off Mute », qui doit permettre aux joueuses de partager leurs expériences. La campagne a été soutenue par plusieurs stars, dont Ada Hegerberg. L'UEFA a annoncé ce week-end le lancement de sa plateforme « Off Mute », qui doit permettre aux joueuses de partager leurs expériences. La campagne a été soutenue par plusieurs stars, dont Ada Hegerberg.")
    
]
