//
//  SS-56View.swift
//  EjercisiosEnSwiftUI
//
//  Created by Ronaldo Andre Vargas Huaman on 4/03/21.
//

import SwiftUI

struct SS_56View: View {
    var servicios: [Servicio] = [
        Servicio(id: 0, nombre: "All"),
        Servicio(id: 1, nombre: "Overview"),
        Servicio(id: 2, nombre: "Hotels"),
        Servicio(id: 3, nombre: "Food"),
        Servicio(id: 4, nombre: "Me"),
        Servicio(id: 5, nombre: "House")]
    
    var body: some View {
        VStack{
        kdView()
        scrollesView()
        informacionView()
        }
    }
    
    func kdView() -> some View{
        return ZStack{
            Image("PIC")
                .resizable()
                .scaledToFit()
            VStack(alignment: .leading){
                Button(action: {}, label: {
                    Image(systemName: "arrowshape.turn.up.left")
                        .foregroundColor(Color.black)
                        .padding(1)
                    Text("Back")
                        .foregroundColor(Color.black)
                        .frame(width: 40, height: 100)
                })
                .font(.headline)
                .padding()
                .frame(width: 100, height: 60)
                .background(Color.white)
                .cornerRadius(20.0)
                Text("Travel in West Asia")
                    .font(.title)
                    .bold()
                    .foregroundColor(Color.white)
                Text("My trip to China in Beijin, where I stayed in a beatifull hotel called")
                    .font(.title2)
                    .foregroundColor(Color.white)
                    .truncationMode(.tail)
                    .lineLimit(2)
                HStack{
                    
                    Image("Mujer")
                        .resizable()
                        .frame(width: 30, height: 30, alignment: .leading)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.black, lineWidth: 2.0))
                    
                    Text("Leslie Alexander")
                        .foregroundColor(Color.white)
                        .bold()
                        .font(.headline)
                        .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 100))
                    Button(action: { print("<3")}, label: {
                        Image(systemName: "heart.circle.fill")
                            .font(.headline)
                            .padding()
                            .frame(width: 100, height: 60)
                            .background(Color.white)
                            .clipShape(Circle())
                    })
                }
            }
            .padding(13)
        }
    }
    
    func scrollesView() -> some View {
        return
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack{
                    ForEach(servicios, id: \.id){ servicio in
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text(servicio.nombre)
                                .font(.title)
                                .foregroundColor(Color.black)
                                .padding()
                                .frame(width: 150, height: 50)
                                .background(Color.white)
                                .cornerRadius(20.0)
                                .overlay(RoundedRectangle(cornerRadius: 15.0)
                                            .stroke(lineWidth: 3.0))
                        })
                        
                        
                    }
                }
            })
            .padding(10)
    }
    
    func informacionView() -> some View {
        return VStack(alignment: .leading){
            Text("At First")
                .font(.title)
                .bold()
                .padding()
            Text("Lets figure out how much I spent on this trip of money and time, and then the story begins")
                .font(.title2)
                .padding()
            HStack{
                Image(systemName: "mappin")
                Text("China")
    
                Image(systemName: "heart.fill")
                Text("2200 likes")
                
                Image(systemName: "eye.fill")
                Text("1123 view")
            }
            .padding()
            
        }
    }
}

struct Servicio: Identifiable{
    var id: Int
    var nombre: String
}

struct SS_56View_Previews: PreviewProvider {
    static var previews: some View {
        SS_56View()
    }
}
