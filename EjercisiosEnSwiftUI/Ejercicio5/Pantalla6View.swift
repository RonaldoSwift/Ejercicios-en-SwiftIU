//
//  Pantalla6View.swift
//  EjercisiosEnSwiftUI
//
//  Created by Ronaldo Andre Vargas Huaman on 2/5/21.
//

import SwiftUI

struct CircleHumanView: View {
    var body: some View {
        ZStack{
            VStack {
                Text("BODY HUMAN")
                    .font(.body)
                    .foregroundColor(.black)
                
                Image("Human")
                    .resizable()
                    .frame(width: 210.0, height: 250.0, alignment: .center)
                    .clipShape(Circle())
            }
        }
        
    }
}

private struct WelcomeView: View{
    var body: some View {
        ZStack{
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

struct Pantalla6View: View {
    var body: some View {
        VStack{
            CircleHumanView()
            WelcomeView()
        }
    }
}

struct Pantalla6View_Previews: PreviewProvider {
    static var previews: some View {
        Pantalla6View()
    }
}
