//
//  SS-56View.swift
//  EjercisiosEnSwiftUI
//
//  Created by Ronaldo Andre Vargas Huaman on 4/03/21.
//

import SwiftUI

struct SS_56View: View {
    var body: some View {
        kdView()
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
                    
                    Image(systemName: "heart.circle.fill")
                        .font(.headline)
                        .padding()
                        .frame(width: 100, height: 60)
                        .background(Color.white)
                        .clipShape(Circle())
                        
                }
            }
            .padding(13)
        }
    }
}



struct SS_56View_Previews: PreviewProvider {
    static var previews: some View {
        SS_56View()
    }
}
