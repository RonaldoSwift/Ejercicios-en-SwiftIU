//
//  Pantalla10View.swift
//  EjercisiosEnSwiftUI
//
//  Created by Ronaldo Andre Vargas Huaman on 18/02/21.
//

import SwiftUI

struct Pantalla10View: View {
    var body: some View {
        VStack{
            Charmander()
            Bulbasaur()
            Pikachu()
            Squirtle()
        }
    }
}
struct Charmander: View {
    var body: some View {
        VStack{
            Image("Charmander")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipped()
                .frame(width: 200, height: 200, alignment: .center)
                .padding(.bottom, 20)
            Text("Fire")
                .foregroundColor(Color.red)
            Spacer()
        }.navigationBarTitle("Charmander", displayMode: .inline)
    }
}

struct Bulbasaur: View {
    var body: some View {
        VStack{
            Image("Bulbasaur")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150, alignment: .center)
                .clipped()
                .padding(.bottom, 20)
            Text("Grass")
                .foregroundColor(Color.green)
            Spacer()
        }.navigationBarTitle("Bulbasaur", displayMode: .inline)
    }
}

struct Pikachu: View {
    var body: some View{
        VStack{
            Image("Pikachu")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 200, alignment: .center)
                .clipped()
                .padding(.bottom, 20)
            Text("Electric")
                .foregroundColor(Color.yellow)
            Spacer()
        }.navigationBarTitle("Pikachu", displayMode: .inline)
    }
}

struct Squirtle: View {
    var body: some View{
        VStack{
        Image("Squirtle")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 200, height: 200, alignment: .center)
            .clipped()
            .padding(.bottom, 20)
        Text("Water")
            .foregroundColor(Color.blue)
        Spacer()
        }.navigationBarTitle("Squirtle", displayMode: .inline)
    }
}

struct Pantalla10View_Previews: PreviewProvider {
    static var previews: some View {
        Pantalla10View()
    }
}
