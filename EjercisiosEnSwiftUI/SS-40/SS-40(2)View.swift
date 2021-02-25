//
//  SS-40(2)View.swift
//  EjercisiosEnSwiftUI
//
//  Created by Ronaldo Andre Vargas Huaman on 25/02/21.
//

import SwiftUI

struct SS_40_2_View: View {
    var grupo: TextGrupo
    var body: some View {
        gruposDeBandas(componente: TextGrupo(id: grupo.id, nombre: grupo.nombre, imagen: grupo.imagen))
        
    }
    
    func gruposDeBandas(componente: TextGrupo) -> some View {
        return VStack{
            Image(componente.imagen)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150.0, height: 150.0, alignment: .center)
                .border(Color.blue, width: 3.0)
                .clipped()
            
            Text(componente.nombre)
                .font(.headline)
        }
    }
}

struct TextGrupo: Identifiable{
    var id: Int
    var nombre: String
    var imagen: String
}

struct SS_40_2_View_Previews: PreviewProvider {
    static var previews: some View {
        SS_40_2_View(grupo: TextGrupo(id: 0, nombre: "", imagen: ""))
    }
}
