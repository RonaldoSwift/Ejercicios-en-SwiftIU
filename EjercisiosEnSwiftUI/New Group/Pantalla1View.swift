//
//  Pantalla1View.swift
//  EjercisiosEnSwiftUI
//
//  Created by Ronaldo Andre Vargas Huaman on 2/3/21.
//

import SwiftUI

struct Pantalla1View: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("TITLE")
                    .foregroundColor(.black)
                    .truncationMode(.middle)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                Spacer()
                
                Text("Traducción del inglés-El título de un libro, o cualquier otro texto u obra de arte publicada, es un nombre para la obra que generalmente elige el autor. Se puede utilizar un título para identificar el trabajo, ubicarlo en contexto, transmitir un resumen mínimo de su contenido y despertar la curiosidad del lector.")
                    .lineSpacing(20)
                    .multilineTextAlignment(.center)
                     Spacer()
        
               NavigationLink("Continuar", destination: Pantalla2View())
                .foregroundColor(Color.blue)
                .font(.largeTitle)
                Spacer()
            }
        }
    }
}

struct Pantalla1View_Previews: PreviewProvider {
    static var previews: some View {
        Pantalla1View()
    }
}
