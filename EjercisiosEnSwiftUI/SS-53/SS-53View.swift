//
//  SS-53View.swift
//  EjercisiosEnSwiftUI
//
//  Created by Ronaldo Andre Vargas Huaman on 2/03/21.
//

import SwiftUI

struct SS_53View: View {
    var tarjetas: [Tarjetas] = [
        Tarjetas(id: 0, nombre: "Anxiety", descripcion: "Turn down the stress volume", image: "Apple", fecha: "7 sep", hora: "/ 5 - 11 min", color: Color.blue),
        Tarjetas(id: 1, nombre: "Ronaldo", descripcion: "Turn down the stress volume", image: "Apple", fecha: "19 ago", hora: "/7- 10 min", color: Color.green),
        Tarjetas(id: 2, nombre: "Eduard", descripcion: "Turn down the stress volume", image: "Apple", fecha: "27 mar", hora: "/8 - 9 min", color: Color.orange),
        Tarjetas(id: 3, nombre: "Juan", descripcion: "Turn down the stress volume", image: "Apple", fecha: "31 jun", hora: "/ 4 - 6 min", color: Color.red)]
    
    var body: some View {
        moverTarjetas()
    }
    
    func moverTarjetas() -> some View {
        return
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(tarjetas, id: \.id){ tarjeta in
                        VStack(alignment: .leading){
                            
                            Text(tarjeta.nombre)
                                .font(.title)
                                .bold()
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
                                
                                Image(tarjeta.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 120, height: 100, alignment: .center)
                                    .clipShape(Circle())
                                    .overlay(Circle().stroke(Color.black, lineWidth: 6))
                            }
                            
                        }.padding(20)
                        .foregroundColor(Color.white)
                        .background(Color.blue)
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
    var color: Color
}

struct SS_53View_Previews: PreviewProvider {
    static var previews: some View {
        SS_53View()
    }
}
