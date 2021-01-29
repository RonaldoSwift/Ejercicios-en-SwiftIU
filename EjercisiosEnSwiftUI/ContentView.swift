//
//  ContentView.swift
//  EjercisiosEnSwiftUI
//
//  Created by Ronaldo Andre Vargas Huaman on 1/29/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @State private var addLoyaltyDetails = false
    @State private var loyaltyNumber = ""
    var body: some View{
        VStack{
            Text("Welcome")
                .font(.largeTitle)
                .foregroundColor(Color.yellow)
                .background(Color.black)
                .multilineTextAlignment(.center)
            Spacer()
            
            Image("Paisaje3")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(Color.red)
                .font(.largeTitle)
            
            Spacer()
            
            TextField("Ingrese nombre: ", text: $loyaltyNumber)
            Spacer()
            
            Button(action: { print("Ingresar")
            }) { Text("Ingresar")
                .frame(minWidth: 100, maxWidth: 100, minHeight: 100, maxHeight: 100)
            }
            .foregroundColor(Color.yellow)
            .background(Color.black)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
