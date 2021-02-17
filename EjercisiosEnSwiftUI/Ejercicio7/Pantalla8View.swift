//
//  Pantalla8View.swift
//  EjercisiosEnSwiftUI
//
//  Created by Ronaldo Andre Vargas Huaman on 17/02/21.
//

import SwiftUI

let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

struct Pantalla8View: View {
    @State var username: String = ""
    @State var password: String = ""
    var body: some View {
        ZStack{
            Color("CustonGreen")
                .edgesIgnoringSafeArea(.all)
            VStack{
                WelcomeText()
                UserImage()
                TextField("Username", text:$username)
                    .padding()
                    .background(lightGreyColor)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                SecureField("Pasword", text:$password)
                    .padding()
                    .background(lightGreyColor)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                
                Button(action: {print("Button tapped")}) {
                    LoginButtonContent()
                    
                }
            }
            .padding(.bottom, 150)
        }
    }
}


struct WelcomeText: View {
    var body: some View {
        return Text("Welcome!")
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
            .padding(.bottom, 100)
    }
    
}

struct LoginButtonContent : View {
    var body: some View {
        return Text("LOGIN")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color.blue)
            .cornerRadius(15.0)
    }
}

struct Pantalla8View_Previews: PreviewProvider {
    static var previews: some View {
        Pantalla8View()
    }
}

