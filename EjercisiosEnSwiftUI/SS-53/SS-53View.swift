//
//  SS-53View.swift
//  EjercisiosEnSwiftUI
//
//  Created by Ronaldo Andre Vargas Huaman on 2/03/21.
//

import SwiftUI

struct SS_53View: View {
    var tarjetas: [Tarjetas] = [
        Tarjetas(id: 0, nombre: "Anxiety", descripcion: "Turn down the stress volume", image: "Apple", fecha: "7 sep", hora: "5 - 11 min"),
        Tarjetas(id: 1, nombre: "Ronaldo", descripcion: "Turn down the stress volume", image: "Apple", fecha: "19 ago", hora: "7-10 min"),
        Tarjetas(id: 2, nombre: "Eduard", descripcion: "Turn down the stress volume", image: "Apple", fecha: "27 mar", hora: "8 - 9 min"),
        Tarjetas(id: 3, nombre: "Juan", descripcion: "Turn down the stress volume", image: "Apple", fecha: "31 jun", hora: "4 - 6 min")]
    
    var body: some View {
        moverTarjetas()
    }
    
    func moverTarjetas() -> some View {
        return
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(tarjetas, id: \.id){ tarjeta in
                        VStack{
                            Text(tarjeta.nombre)
                                .font(.title)
                                .foregroundColor(Color .white)
                            
                            Text(tarjeta.descripcion)
                                .font(.title2)
                                .foregroundColor(Color .white)
                            HStack{
                            Text(tarjeta.fecha)
                                .font(.title3)
                                .foregroundColor(Color .white)
                            
                            Text(tarjeta.hora)
                                .font(.title3)
                                .foregroundColor(Color .white)
                            }
                            HStack{
                                Image(tarjeta.image)
                                    .resizable().scaledToFit()
                                    .frame(width: 100, height: 100, alignment: .leading)
                                    .clipShape(Circle())
                                    .overlay(Circle().stroke(Color.black, lineWidth: 6))
                                    .shadow(color: .blue, radius: 20, x: 1, y: 1)
                            }
                            
                        }.padding(15)
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                        .frame(height: 250)
                        .cornerRadius(25)
                        
                    }
                }
            }.padding(10)
    }
}

struct Tarjetas: Identifiable{
    var id: Int
    var nombre: String
    var descripcion: String
    var image: String
    var fecha: String
    var hora: String
}

struct SS_53View_Previews: PreviewProvider {
    static var previews: some View {
        SS_53View()
    }
}
