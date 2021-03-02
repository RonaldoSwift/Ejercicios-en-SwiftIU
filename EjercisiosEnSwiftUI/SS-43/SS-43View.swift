//
//  SS-43View.swift
//  EjercisiosEnSwiftUI
//
//  Created by Ronaldo Andre Vargas Huaman on 1/03/21.
//

import SwiftUI

struct SS_43View: View {
    var body: some View {
        VStack{
            cabezeraView()
            nombreList()
        }
    }
    
    func cabezeraView() -> some View {
        return ZStack{
            Image("Lista-De-Compras")
            VStack{
                Text("Header")
                    .font(.title)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color.red)
                    .frame(width: 100, height: 50, alignment: .center)
                Text("Soriana")
                    .font(.title2)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color.white)
                    .frame(width: 400, height: 50, alignment: .leading)
                Text("Av.Eugenio Garza Sada 745")
                    .font(.title2)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color.white)
                    .frame(width: 400, height: 50, alignment: .leading)
            }
        }
    }
    
    func nombreList() -> some View{ 
        return NavigationView{
            List{
                Section(header: HStack{
                    Image(systemName: "list.dash")
                    Text("Current List")
                        .font(.headline)
                        .foregroundColor(Color.blue)
                        .frame(width: 100, height: 80, alignment: .center)
                }){
                    
                }
                Section(header: HStack{
                    Image(systemName: "text.badge.plus")
                    Text("My Lists")
                        .font(.headline)
                        .frame(width: 100, height: 80, alignment: .center)
                }){
                    
                }
                Section(header: HStack{
                    Image(systemName: "magnifyingglass")
                    Text("Search Products")
                        .font(.headline)
                        .frame(width: 100, height: 80, alignment: .center)
                }){
                    
                }
                Section(header: HStack{
                    Image(systemName: "message")
                    Text("Feed Back")
                        .font(.headline)
                        .frame(width: 100, height: 80
                               , alignment: .center)
                }){
                    
                }
                Section(footer: HStack{
                    Image("Persona1")
                        .resizable()
                        .frame(width: 50, height: 80, alignment: .center)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.black, lineWidth: 2.0))
                    HStack{
                        Text("Sign Out")
                            .font(.headline)
                        Text("footer")
                            .foregroundColor(Color.red)
                    }
                }){
                }
            }
        }
    }
}

struct SS_43View_Previews: PreviewProvider {
    static var previews: some View {
        SS_43View()
    }
}
