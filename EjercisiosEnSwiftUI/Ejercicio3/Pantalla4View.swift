//
//  Pantalla4View.swift
//  EjercisiosEnSwiftUI
//
//  Created by Ronaldo Andre Vargas Huaman on 2/4/21.
//

import SwiftUI

struct Pantalla4View: View {
    var body: some View {
        ZStack{
        Image("PaisajeDeMontañas1")
         
            VStack{
                Text("WELCOME")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                Spacer()
                Image("Familia")
                    .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 210.0, height: 250.0, alignment: .center)
                        .clipShape(Circle())
                Spacer()
                
                Button(action: {
                    print("Hola!!!")
                }) {
                    HStack {
                        Image(systemName: "bookmark.fill")
                        Text("Bookmark")
                        Image(systemName: "bookmark.fill")
                    }
                    .foregroundColor(Color.white)
                    .padding(20.0)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10.0)
                            .stroke(lineWidth: 2.0))
                }
                Spacer()
                    }
                }
            }
        }

struct Pantalla4View_Previews: PreviewProvider {
    static var previews: some View {
        Pantalla4View()
    }
}
