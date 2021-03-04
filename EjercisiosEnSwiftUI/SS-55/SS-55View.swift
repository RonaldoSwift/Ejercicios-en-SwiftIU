//
//  SS-55View.swift
//  EjercisiosEnSwiftUI
//
//  Created by Ronaldo Andre Vargas Huaman on 4/03/21.
//

import SwiftUI

struct SS_55View: View {
    @State private var seleccionDeTab = 0
    var body: some View {
       
        TabView(selection: $seleccionDeTab){
            Text("Pantalla1")
                .onTapGesture {
                    self.seleccionDeTab = 1
                }
                .tabItem { Image(systemName: "house")
                    Text("one")
                }
                .tag(0)
            Text("Pantalla2")
                .tabItem { Image(systemName: "book")
                    Text("libro")
                }
                .tag(1)
            Text("Pantalla3")
                .tabItem { Image(systemName: "macpro.gen3")
                    Text("Mac")
                }
                .tag(2)
            Text("Pantalla4")
                .tabItem { Image(systemName: "person")
                    Text("Usuario")
                }
                .tag(3)
        }
    }
}

struct SS_55View_Previews: PreviewProvider {
    static var previews: some View {
        SS_55View()
    }
}
