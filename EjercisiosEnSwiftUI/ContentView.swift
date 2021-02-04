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
        VStack{
            Text("Hola3")
        }
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
}
