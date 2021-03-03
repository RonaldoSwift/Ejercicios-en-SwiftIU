//
//  SS-43View.swift
//  EjercisiosEnSwiftUI
//
//  Created by Ronaldo Andre Vargas Huaman on 1/03/21.
//

import SwiftUI

struct SS_43View: View {
    var opciones: [Opcion] = [
        Opcion(id: 0, imagen: "list.dash", texto: "Current List", color: Color.blue),
        Opcion(id: 1, imagen: "text.badge.plus", texto: "My Lists", color: Color.yellow),
        Opcion(id: 2, imagen: "magnifyingglass", texto: "Search Products", color: Color.black),
        Opcion(id: 3, imagen: "message", texto: "Feed Back", color: Color.init("CustonGreen"))]
    var body: some View {
        VStack{
            Section(header: headerView(), footer: footerView()) {
                contentView()
            }
        }
    }
    
    private func headerView() -> some View {
        return
            ZStack{
                Image("Lista-De-Compras")
                    .resizable()
                    .border(Color.blue, width: 3.0)
                HStack{
                    VStack(alignment: .leading){
                        Spacer()
                        Image("Login")
                            .resizable()
                            .frame(width: 40, height: 40)
                        Spacer()
                        Text("Soriana")
                            .font(.title2)
                            .bold()
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color.white)
                        
                        Text("Av.Eugenio Garza Sada 745")
                            .font(.title2)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                .padding(10)
            }
            .frame(height: 200)
    }
    
    private func contentView() -> some View{
        return List{
            ForEach(opciones, id: \.id){ opcion in
                    
                    HStack{
                        Image(systemName: opcion.imagen)
                        Text(opcion.texto)
                            .bold()
                            .font(.title2)
                            .padding()
                    }
                    .foregroundColor(opcion.color)
               
            }
        }
    }
    
    private func footerView() -> some View {
        return
            HStack{
                Image("Persona1")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .leading)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.black, lineWidth: 2.0))
                Text("Sign Out")
                    .font(.title2)
                    .bold()
                    .font(.headline)
                    .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30))
                Spacer()
            }
            .padding(10)
    }
}

struct Opcion: Identifiable {
    var id: Int
    var imagen: String
    var texto: String
    var color: Color
    
}

struct SS_43View_Previews: PreviewProvider {
    static var previews: some View {
        SS_43View()
    }
}
