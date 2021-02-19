//
//  Pantalla10View.swift
//  EjercisiosEnSwiftUI
//
//  Created by Ronaldo Andre Vargas Huaman on 18/02/21.
//

import SwiftUI


struct Pantalla10View: View {
    
    var body: some View {
        NavigationView{
            List{
                NavigationLink("Charmander", destination: Pokemon(imagen: "Charmander", poder: "Fire", color: Color.red))
                NavigationLink("Bulbasaur", destination:Pokemon(imagen: "Bulbasaur", poder: "Grass", color: Color.green))
                NavigationLink("Pikachu", destination:Pokemon(imagen: "Pikachu", poder: "Electric", color: Color.yellow))
                NavigationLink("Squirtle", destination:Pokemon(imagen: "Squirtle", poder: "Water", color: Color.blue))
            }.navigationBarTitle(
                Text("Pokemon"), displayMode: .inline)
        }
    }
}


struct Pokemon: View{
    var imagen: String = ""
    var poder: String = ""
    var color: Color = Color.black
    var body: some View {
        VStack{
            Image(imagen)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipped()
                .frame(width: 200, height: 200, alignment: .center)
                .padding(.bottom, 20)
            Text(poder)
                .foregroundColor(color)
            Spacer()
        }.navigationBarTitle(imagen, displayMode: .inline)
    }
}


struct Pantalla10View_Previews: PreviewProvider {
    static var previews: some View {
        Pantalla10View()
    }
}
