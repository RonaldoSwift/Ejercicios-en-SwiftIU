//
//  SS-37View.swift
//  EjercisiosEnSwiftUI
//
//  Created by Ronaldo Andre Vargas Huaman on 24/02/21.
//

import SwiftUI

struct SS_37View: View {
    var users: [User] = [
        User(id: 0, texto: "Teeria", impricion: "Teeria"),
        User(id: 1, texto: "Bio & Equo", impricion: "Bio & Equo"),
        User(id: 2, texto: "Alimentari", impricion: "Alimentari")
    ]
    
    var body: some View {
        ZStack{
            HStack{
                bolitaRojaView()
                VStack{
                    Text("II Giardino del Tè")
                        .font(.title)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color.white)
                    
                    Text("Via del Boschetto 107")
                        .font(.title2)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color.white)
                    
                    Label("Roma", systemImage: "mappin")
                        .font(.system(size: 20.0))
                        .multilineTextAlignment(.leading)
                        .font(.title3)
                        .foregroundColor(Color.white)
                    
                    categoriasView(user: User(id: 0, texto: "", impricion: ""))
                }
            }.padding(15)
            .background(Color.black)
            .cornerRadius(15)
        }.padding(10)
    }
    
    private func bolitaRojaView() -> some View {
        return VStack{
            Text("0.9")
                .font(.title)
                .bold()
            Text("Km")
        }
        .padding(10)
        .foregroundColor(Color.white)
        .background(Color.red)
        .clipShape(Circle())
    }
    
    private func categoriasView(user: User) -> some View {
        return
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(users, id: \.id){ user in
                        Button(action: {print(user.impricion)}, label: {
                        Text(user.texto)
                    }).padding(15)
                    .foregroundColor(Color.white)
                    .background(Color.green)
                    .frame(height: 40)
                    .cornerRadius(13)
                    }
                }
            }
    }
}

struct User: Identifiable{
    var id:  Int
    var texto: String
    var impricion: String
}

struct SS_37View_Previews: PreviewProvider {
    static var previews: some View {
        SS_37View()
    }
}
