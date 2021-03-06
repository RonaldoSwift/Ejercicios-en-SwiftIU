//
//  Pantalla7View.swift
//  EjercisiosEnSwiftUI
//
//  Created by Ronaldo Andre Vargas Huaman on 2/5/21.
//

import SwiftUI

struct Pantalla7View: View {
    var body: some View {
        VStack {
            crearImagenCircular()
            Spacer()
            crearButtonWelcome()
        }
    }
    
    func crearImagenCircular() -> some View {
        return ZStack{
            VStack {
                Text("BODY HUMAN")
                    .font(.body)
                    .foregroundColor(.black)
                
                Image("Human")
                    .resizable()
                    .frame(width: 210.0, height: 250.0, alignment: .center)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.black, lineWidth: 6))
                    .shadow(color: .blue, radius: 20, x: 1, y: 1)
            }
        }
    }
    func crearButtonWelcome() -> some View {
        return ZStack{
            VStack {
                Button(action: {
                        print("WELCOMEEE!!!")}){
                    HStack{
                        Text("WELCOME")
                    }
                    .foregroundColor(Color.black)
                    .padding(30.0)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20.0)
                            .stroke(lineWidth: 3.0))
                }
                .foregroundColor(Color.black)
                Spacer()
            }
        }
    }
}

struct Pantalla7View_Previews: PreviewProvider {
    static var previews: some View {
        Pantalla7View()
    }
}
