//
//  Pantalla8View.swift
//  EjercisiosEnSwiftUI
//
//  Created by Ronaldo Andre Vargas Huaman on 17/02/21.
//

import SwiftUI

struct Pantalla8View: View {
    @State var username: String = ""
    @State var password: String = ""
    var body: some View {
        VStack{
            WelcomeView()
            UserImage()
            TextField("Username", text:$username)
                .padding()
                .background(Color.gray)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            
            SecureField("Pasword", text:$password)
                .padding()
                .background(Color.gray)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            
            Button(action: {print("Button tapped")}) {
                Text("LOGIN")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 220, height: 60, alignment: .center)
                    .background(Color.green)
                    .cornerRadius(20.0)
            }
        }
        .padding()
    }
}

struct Pantalla8View_Previews: PreviewProvider {
    static var previews: some View {
        Pantalla8View()
    }
}

struct WelcomeText: View {
    var body: some View {
        return Text("Welcome")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
    }
}

struct UserImage: View {
    var body: some View {
        return Image("Viaje")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 150, alignment: .center)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom, 75)
    }
}



