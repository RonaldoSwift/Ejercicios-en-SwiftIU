//
//  SS-40View.swift
//  EjercisiosEnSwiftUI
//
//  Created by Ronaldo Andre Vargas Huaman on 25/02/21.
//

import SwiftUI

struct SS_40View: View {
    var componentes: [TextGrupo] = [
        TextGrupo(id: 0, nombre: "A HA", imagen: "a-ha"),
        TextGrupo(id: 1, nombre: "Grupo Naranja", imagen: "Grupo-Naranja"),
        TextGrupo(id: 2, nombre: "The Outfield", imagen: "The-Outfield")]
    
    var body: some View {
        NavigationView{
            List{
                ForEach(componentes, id: \.id){ componente in
                    NavigationLink(destination: SS_40_2_View(grupo: TextGrupo(id: componente.id, nombre: componente.nombre, imagen: componente.imagen))) {
                        implementar(componente: TextGrupo(id: 0, nombre: componente.nombre, imagen: componente.imagen))
                    }
                }
            }.navigationBarTitle("SwiftUI Team")
        }
    }
    
    private func implementar(componente: TextGrupo) -> some View{
        return HStack{
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


struct SS_40View_Previews: PreviewProvider {
    static var previews: some View {
        SS_40View()
    }
}
