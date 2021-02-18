//
//  ContentView.swift
//  EjercisiosEnSwiftUI
//
//  Created by Ronaldo Andre Vargas Huaman on 1/29/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        NavigationView{
            List{
                NavigationLink("Full Screen", destination: Pantalla9View())
                NavigationLink("Embed", destination:LoginEmbedView())
            }
        }.navigationBarTitle("Login Option", displayMode: .inline)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}

