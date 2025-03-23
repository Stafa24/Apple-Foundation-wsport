import SwiftUI

// Définir une structure pour le Match
struct Match: Identifiable {
    var id = UUID()
    var team1Name: String
    var team2Name: String
    var team1Logo: String
    var team2Logo: String
    var matchTime: String
    var matchDate: Date
    var matchLocation: String
    
}

/*enum MatchStatus: String {
    case scheduled = "Programmé"
    case completed = "Terminé"
    case postponed = "Reporté"
}*/

struct InteractiveCalendarView: View {
    @State private var selectedDate: Date? = nil
    @State private var currentDate = Date()
    
    let calendar = Calendar.current
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM yyyy"
        formatter.locale = Locale(identifier: "fr_FR") // Pour afficher en français
        return formatter
    }()
    
    // Liste des matchs programmés
    let matches: [Match] = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy HH:mm"
        
        return [
            Match(team1Name: "Toulouse", team2Name: "Marseille", team1Logo: "TFC", team2Logo: "OM", matchTime: "18:30", matchDate: formatter.date(from: "18/03/2025 18:30")!, matchLocation: "Stade de France"),
            Match(team1Name: "tarbes", team2Name: "lyon", team1Logo: "tarbe", team2Logo: "lyon", matchTime: "20:00", matchDate: formatter.date(from: "24/03/2025 20:00")!, matchLocation: "Parc des Princes")
        ]
    }()
    
    // Fonction pour obtenir les jours du mois actuel
    private func getDaysInMonth() -> [Date] {
        let currentMonth = calendar.component(.month, from: currentDate)
        let currentYear = calendar.component(.year, from: currentDate)
        
        // Calculer le premier jour du mois
        var components = DateComponents()
        components.year = currentYear
        components.month = currentMonth
        components.day = 1
        _ = calendar.date(from: components)!
        
        // Obtenir la plage de jours du mois
        let range = calendar.range(of: .day, in: .month, for: currentDate)!
        let daysInMonth = range.lowerBound..<range.upperBound
        
        // Créer une liste des dates du mois
        var days: [Date] = []
        for day in daysInMonth {
            components.day = day
            if let date = calendar.date(from: components) {
                days.append(date)
            }
        }
        
        return days
    }
    
    // Fonction pour naviguer vers le mois suivant
    
    private func nextMonth() {
        currentDate = calendar.date(byAdding: .month, value: 1, to: currentDate)!
    }
    
    // Fonction pour naviguer vers le mois précédent
    
    private func previousMonth() {
        currentDate = calendar.date(byAdding: .month, value: -1, to: currentDate)!
    }
    
    // Vérifier si la date est réservée par un match
    
    private func isDateReserved(_ date: Date) -> Bool {
        return matches.contains { calendar.isDate($0.matchDate, inSameDayAs: date) }
    }
    
    // Fonction pour formater la date sélectionnée
    
    private func formattedDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.locale = Locale(identifier: "fr_FR")
        return formatter.string(from: date)
    }
    
    var body: some View {
        NavigationStack{
                VStack{
                    HStack {
                        // Bouton pour naviguer vers le mois précédent
                        Button(action: previousMonth) {
                            Image(systemName: "arrow.left.circle.fill")
                                .font(.title)
                                .foregroundColor(.violet)
                        }
                        
                        // Affichage du mois et de l'année
                        Text(dateFormatter.string(from: currentDate))
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.horizontal)
                        
                        // Bouton pour naviguer vers le mois suivant
                        Button(action: nextMonth) {
                            Image(systemName: "arrow.right.circle.fill")
                                .font(.title)
                                .foregroundColor(.violet)
                        }
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                    
                    
                }
                
                
                VStack {
                    
                    // Affichage du calendrier
                    
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 7), spacing: 10) {
                        // Affichage des noms des jours de la semaine en français
                        ForEach(["Dim", "Lun", "Mar", "Mer", "Jeu", "Ven", "Sa"], id: \.self) { weekday in
                            Text(weekday)
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity)
                                .padding(.vertical)
                                .foregroundColor(.violet)
                        }
                        
                        // Affichage des jours du mois
                        
                        ForEach(getDaysInMonth(), id: \.self) { date in
                            Button(action: {
                                selectDate(date)
                            }) {
                                Text("\(calendar.component(.day, from: date))")
                                    .frame(width: 45, height: 45)
                                    .background(self.isDateReserved(date) ? Color.violet: Color.clear)
                                    .foregroundColor(self.selectedDate == date ? .white : self.isDateReserved(date) ? .white : .black)
                                    .cornerRadius(25)
                                    .padding(2)
                                    .font(.headline)
                                    .animation(.spring(), value: selectedDate)
                            }
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.bottom, 20)
                    
                    // Affichage des matchs pour la date sélectionnée
                    
                    
                    if let selectedDate = selectedDate {
                        
                        VStack {
                            Text("Détails pour \(formattedDate(selectedDate))")
                                .font(.headline)
                                .padding(.top)
                                .padding(.horizontal)
                            
                            // Afficher les matchs programmés ce jour-là
                            
                            
                            ForEach(matches.filter { calendar.isDate($0.matchDate, inSameDayAs: selectedDate) }) { match in
                                NavigationLink{
                                    MatchResultView()
                                }
                                label: {
                                    VStack {
                                        HStack {
                                            // Colonne pour l'équipe 1
                                            
                                            VStack {
                                                // Affichage du logo de l'équipe 1
                                                Image(match.team1Logo)
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width: 80, height: 80)
                                                Text(match.team1Name)
                                                    .font(.body)
                                                    .fontWeight(.bold)
                                                    .frame(maxWidth: .infinity, alignment: .center)
                                            }
                                            
                                            
                                            Text("\(match.matchTime)")
                                            // .font(.title3)
                                                .fontWeight(.bold)
                                                .padding(.horizontal)
                                            
                                            
                                            
                                            VStack {
                                                // Affichage du logo de l'équipe 2
                                                Image(match.team2Logo)
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width: 80, height: 80) // Augmenter la taille du logo
                                                
                                                // Affichage du nom de l'équipe 2
                                                Text(match.team2Name)
                                                    .font(.body)
                                                    .fontWeight(.bold)
                                                    .frame(maxWidth: .infinity, alignment: .center)
                                            }
                                        }
                                        .frame(maxWidth: .infinity) // Centrer horizontalement
                                        
                                        Text("Lieu: \(match.matchLocation)")
                                            .font(.subheadline)
                                            .padding(.top, 5)
                                        
                                        /* Text("Statut: \(match.matchStatus.rawValue)")
                                         .font(.subheadline)
                                         .padding(.top, 5)*/
                                    }
                                }
                                
                                
                            }
                            
                            
                            
                            
                            
                            .padding()
                            .background(Color.pink.opacity(0.1))
                            .cornerRadius(15)
                            .padding(.top, 10) // Espacement entre les matchs
                        }
                        
                        
                        
                        
                        
                        .padding(.bottom, 20)
                        .padding(.horizontal) // Augmenter les marges horizontales
                        .background(Color.white)
                        .cornerRadius(15)
                        .shadow(radius: 5) // Ajouter une ombre pour une meilleure visibilité
                    }
                    
                    
                }
                .background(Color.white) // Fond blanc pour le calendrier
                .cornerRadius(20)
                .shadow(radius: 10)
                .padding()
        }
    }
    
    // Fonction pour sélectionner une date et afficher les détails
    private func selectDate(_ date: Date) {
        selectedDate = date
    }
}

struct InteractiveCalendarView_Previews: PreviewProvider {
    static var previews: some View {
        InteractiveCalendarView()
            .previewLayout(.sizeThatFits)
    }
}
