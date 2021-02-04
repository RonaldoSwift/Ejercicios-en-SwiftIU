//
//  Pantalla3View.swift
//  EjercisiosEnSwiftUI
//
//  Created by Ronaldo Andre Vargas Huaman on 2/4/21.
//

import SwiftUI

struct Pantalla3View: View {
    var body: some View {
        ZStack {
            Image("EstadioDeFutbol")
                .resizable()
                .frame(width: 400, height: 600, alignment: .center)
            
            VStack(alignment: .leading){
                HStack{
                    Image("BalonDeFutbol")
                        .padding(1.0)
                        .frame(width: 300.0)
                    Text("MESSI")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .padding(.leading, -140.0)
                        .frame(width: 90, height: 0, alignment: .center)
                }
                
                Text("El FC Barcelona inició la temporada 2008-2009 con un nuevo proyecto que generó un cierto escepticismo entre los culés. El presidente Laporta había confiado el banquillo a un hombre de la casa, Josep Guardiola, con buenos resultados en el filial pero sin experiencia en primera. Los más optimistas auguraban buenos resultados a largo plazo. Pero la historia fue otra. Los chicos de Guardiola, con Messi convertido en crack indiscutible, pergeñaron la campaña futbolística más apasionante en décadas. Con un fútbol de libro, alabado en Europa y en el mundo, encadenaron victorias y resultados que pulverizaron todos los récords y consiguieron lo que parecía imposible: ganar en una misma temporada la Copa del Rey, la Liga y la Liga de Campeones, un triplete histórico que nunca antes había logrado ningún equipo español.")
                    .foregroundColor(.white)
                    .padding()
                    .truncationMode(.middle)
                    .padding()
                    .multilineTextAlignment(.center)
                    .padding()
            }
        }
    }
    
    struct Pantalla3View_Previews: PreviewProvider {
        static var previews: some View {
            Pantalla3View()
        }
    }
}
