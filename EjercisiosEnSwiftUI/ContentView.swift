//
//  ContentView.swift
//  EjercisiosEnSwiftUI
//
//  Created by Ronaldo Andre Vargas Huaman on 1/29/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State var showDetails = true
    var body: some View {
        NavigationView{
            List{
                NavigationLink("Charmander", destination: Charmander())
                NavigationLink("Bulbasaur", destination:Bulbasaur())
                NavigationLink("Pikachu", destination:Pikachu())
                NavigationLink("Squirtle", destination:Squirtle())
            }.navigationBarTitle(
                Text("Pokemon"), displayMode: .inline)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}

