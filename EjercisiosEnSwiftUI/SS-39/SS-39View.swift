//
//  SS-39View.swift
//  EjercisiosEnSwiftUI
//
//  Created by Ronaldo Andre Vargas Huaman on 22/02/21.
//

import SwiftUI

struct SS_39View: View {
    var users: [User] = [
        .init(id: 0, title: "Juan", value: "Ingeniero", imageName: "Hombre-Lentes"),
        .init(id: 1, title: "Maria", value: "Economista", imageName: "Mujer"),
        .init(id: 2, title: "Sandra", value: "Diseñadora", imageName: "Mujer2"),
        .init(id: 3, title: "Julio", value: "Profesor", imageName: "Profesor")]
    var body: some View {
        List {
            ForEach(users, id: \.id){ user in
                HStack{
                    Image(user.imageName)
                        .resizable()
                        .frame(width: 50, height: 50, alignment: .center)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.black, lineWidth: 2.0))
                    
                    VStack(alignment: .leading){
                        Text(user.title).font(.headline)
                        Text(user.value).font(.subheadline)
                    }
                }
            }
        }
    }
}

struct User: Identifiable {
    var id: Int
    let title: String
    let value: String
    let imageName: String
}

struct SS_39View_Previews: PreviewProvider {
    static var previews: some View {
        SS_39View()
    }
}
