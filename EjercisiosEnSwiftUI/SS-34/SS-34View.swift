//
//  SS-34View.swift
//  EjercisiosEnSwiftUI
//
//  Created by Ronaldo Andre Vargas Huaman on 19/02/21.
//

import SwiftUI

struct SS_34View: View {
    @State var movies = [
        Movie(title: "Episode IV - A New Hope", period: .original),
        Movie(title: "Episode V - The empire Strike Back", period: .original),
        Movie(title: "Episode VI - Return of the Jedy", period: .original),
        Movie(title: "Episode I - The Phantom Menace", period: .original),
        Movie(title: "Episode II - Attac of the Clones", period: .prequel),
        Movie(title: "Episode III - Revenge of the Sitch ", period: .sequel),
        Movie(title: "Episode VII - The Force Awakens", period: .standalone),
        Movie(title: "Episode VIII - The Last Jedi", period: .standalone),
        Movie(title: "Episode IX - The Rise of Skywalker", period: .standalone)
    ]
    var body: some View {
        List {
            ForEach(Period.allCases, id: \.rawValue) { period in
                Section(header: Text(period.rawValue)) {
                    ForEach(movies.filter { $0.period == period }) { movie in
                        VStack {
                            Text(movie.title)
                            Text(movie.period.rawValue)
                        }
                    }
                }
            }
        }
    }
}

enum Period: String, CaseIterable {
    case original = "Oryginal Trilogy"
    case prequel = "Prequel trilogy"
    case sequel = "Sequel trilogy"
    case standalone = "Standalone"
}

struct Movie: Identifiable{
    var id = UUID()
    var title : String
    var period: Period
}

struct SS_34View_Previews: PreviewProvider {
    static var previews: some View {
        SS_34View()
    }
}
