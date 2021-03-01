//
//  SS-43View.swift
//  EjercisiosEnSwiftUI
//
//  Created by Ronaldo Andre Vargas Huaman on 1/03/21.
//

import SwiftUI

struct SS_43View: View {
    var body: some View {
        ZStack{
            Image("Lista-De-Compras")
            VStack{
                Text("Header")
                    .foregroundColor(Color.red)
                    .bold()
                Text("Soriana")
                    .foregroundColor(Color.white)
                Text("Av.Eugenio Garza Sada 745")
                    .foregroundColor(Color.white)
                
            }
        }
    }
}

struct List: View {
    var body: some View {
        return NavigationView{
            List{
                Section(header: VStack{
                    Image(systemName: "")
                    Text("")
                }){
                    
                }
                Section(header: VStack{
                    Image(systemName: "")
                    Text("")
                }){
                    
                }
                Section(header: VStack{
                    Image(systemName: "")
                    Text("")
                }){
                    
                }
                Section(header: VStack{
                    Image(systemName: "")
                    Text("")
                }, footer: Image(systemName: "")){
                    
                }
            }
            
        }
    }
}

struct SS_43View_Previews: PreviewProvider {
    static var previews: some View {
        SS_43View()
    }
}
