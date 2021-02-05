//
//  Pantalla5View.swift
//  EjercisiosEnSwiftUI
//
//  Created by Ronaldo Andre Vargas Huaman on 2/4/21.
//

import SwiftUI

struct Pantalla5View: View {
    var body: some View {
        ZStack{
                Color("CustonGreen")
                .edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                Label("", systemImage: "book.fill")
                    .font(.system(size: 40.0))
                Text("¡VENTA DE LIBRO!")
                Image("Libros")
                    .frame(width: 270.0, height: 350.0, alignment: .center)
                    .clipShape(Circle())
                Spacer()
                Button(action: {
                    print("Libros!!!")
                }) {
                    HStack{
                        Image(systemName: "person.fill")
                        Text("Ingresar->")
                    }
                    .padding(20.0)
                    .overlay(RoundedRectangle(cornerRadius: 10.0)
                            .stroke(lineWidth: 3.0))
                    .foregroundColor(Color.black)
                }
            }
        }
    }
}

struct Pantalla5View_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Pantalla5View()
        }
    }
}
