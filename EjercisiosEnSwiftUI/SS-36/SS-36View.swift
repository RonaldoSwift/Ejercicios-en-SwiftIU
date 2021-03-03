//
//  SS-36View.swift
//  EjercisiosEnSwiftUI
//
//  Created by Ronaldo Andre Vargas Huaman on 25/02/21.
//

import SwiftUI

struct SS_36View: View {
    var emojis: [Emoji] = [
        Emoji(id: 0, name: "Amanecer", imageName: "Amanecer"),
        Emoji(id: 1, name: "Balon Futbol", imageName: "BalonFutbol"),
        Emoji(id: 2, name: "Camaron", imageName: "Camaron"),
        Emoji(id: 3, name: "Carrito de Compras", imageName: "CarritoDeCompras"),
        Emoji(id: 4, name: "Castillo", imageName: "Castillo"),
        Emoji(id: 5, name: "Helado", imageName: "Helado"),
        Emoji(id: 6, name: "Lentes Negros", imageName: "LentesNegros"),
        Emoji(id: 7, name: "Mando", imageName: "Mando"),
        Emoji(id: 8, name: "Manzana", imageName: "Manzana"),
        Emoji(id: 9, name: "Ojos", imageName: "Ojos"),
        Emoji(id: 10, name: "PC", imageName: "PC"),
        Emoji(id: 11, name: "Sopa", imageName: "Sopa"),
    ]
    
    var body: some View {
        NavigationView{
            List {
                ForEach(emojis, id: \.id){ emoji in
                    NavigationLink(
                        destination: SS_36_2_View(emoji: emoji),
                        label: {
                            emojisView(emoji)
                        })
                }
            }.navigationBarTitle("Emojis")
        }
    }
    
    private func emojisView(_ emoji: Emoji) -> some View{
        return HStack{
            Image(emoji.imageName)
                .resizable()
                .frame(width: 60, height: 60, alignment: .center)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.blue, lineWidth: 2.0))
            VStack(alignment: .leading){
                Text(emoji.name)
                    .font(.headline)
                    .font(.subheadline)
            }
        }
    }
}

struct Emoji: Identifiable{
    var id: Int
    var name: String
    var imageName: String
}


struct SS_36View_Previews: PreviewProvider {
    static var previews: some View {
        SS_36View()
    }
}
