//
//  SS-53View.swift
//  EjercisiosEnSwiftUI
//
//  Created by Ronaldo Andre Vargas Huaman on 7/03/21.
//

import SwiftUI

struct SS_53View: View {
    var pantallasFondo: [PantallaFondo] = [
        PantallaFondo(id: 0, titulo: "Anxiety", text: "Turn dow the strees volume", imagen: "arbol", fecha: "7 sept", hora: "| 5 - 11 min"),
        PantallaFondo(id: 1, titulo: "Anxiety", text: "Turn dow the strees volume", imagen: "arbol", fecha: "7 sept", hora: "| 5 - 11 min"),
        PantallaFondo(id: 2, titulo: "Anxiety", text: "Turn dow the strees volume", imagen: "arbol", fecha: "7 sept", hora: "| 5 - 11 min")]
    
    var body: some View {
        List{
            ForEach(1...5, id: \.self){ row in
                Section(header: headerView()) {
                    contentView()
                }
            }
        }
        
    }
    
    func headerView() -> some View {
        return HStack{
            Text("Popular")
                .font(.title)
            Spacer()
            Button(action: {print("clik")}, label: {
                Text("See All")
                    .font(.title3)
            })
            
        }.padding()
        
        
    }
    
    func contentView() -> some View {
        return ScrollView(.horizontal, showsIndicators: false){
            HStack{
                
                ForEach(pantallasFondo, id: \.id){ pantallaFondo in
                    ZStack{
                        Color("AzulMar")
                        HStack{
                            VStack(alignment: .leading, spacing: 20){
                                Text(pantallaFondo.titulo)
                                    .font(.title)
                                    .bold()
                                
                                Text(pantallaFondo.text)
                                    .font(.title2)
                                    .lineLimit(2)
                                HStack{
                                    Text(pantallaFondo.fecha)
                                        .font(.system(size: 15))
                                    
                                    Text(pantallaFondo.hora)
                                        .font(.system(size: 15))
                                }
                            }.foregroundColor(Color.white)
                            
                            Image(pantallaFondo.imagen)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 120)
                            
                        }
                        .padding()
                    }
                    .cornerRadius(30)
                    .frame(width: 360, height: 220)
                    .padding(5)
                }
            }
        }
    }
    
}

struct PantallaFondo: Identifiable{
    
    var id: Int
    var titulo: String
    var text: String
    var imagen: String
    var fecha: String
    var hora: String
}

struct SS_53View_Previews: PreviewProvider {
    static var previews: some View {
        SS_53View()
    }
}
