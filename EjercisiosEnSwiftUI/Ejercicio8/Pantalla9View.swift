//
//  Pantalla9View.swift
//  EjercisiosEnSwiftUI
//
//  Created by Ronaldo Andre Vargas Huaman on 17/02/21.
//

import SwiftUI

struct Pantalla9View: View {
    @State private var user : String = ""
    @State private var password : String = ""
    var body: some View {
        VStack{
            Image("Login")
            TextField("User", text: $user)
                .textFieldLogin()
            SecureField("Password", text: $password)
                .textFieldLogin()
            Button("Login"){
                print("Do login")
            }
            .padding(.top,30)
            .foregroundColor((user.isEmpty || password.isEmpty) ? Color.black.opacity(0.6) : Color.black)
            .disabled(user.isEmpty || password.isEmpty)
        }
        .padding(10)
        .background(Color.init(UIColor(red: 31/255, green: 155/255, blue: 222/225, alpha: 1)))
        .navigationBarTitle("", displayMode: .inline)
    }
}

extension View {
    public func textFieldLogin() -> some View {
        return self
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .background(Color.white)
            .frame(height: 40, alignment: .center)
            .cornerRadius(3.0)
    }
}

struct LoginEmbedView : View{
    var body: some View {
        ScrollView{
            VStack{
                Image("Apple")
                    .resizable()
                    .frame(height:200)
                    .scaledToFit()
                Text("Un iPhone plegable de 7,3 o 7,6 pulgadas con soporte para Apple Pencil puede aparecer en 2023, según nuevos datos")
                    .font(.title2)
                    .padding([.leading, .trailing],10)
                Text("iPhone in Canada ha sido el primer medio en percatarse de los datos que ha aportado la empresa analista EqualOcean, reflejando un estudio de la organización Omdia que predice la llegada de un iPhone plegable para el año 2023")
                Divider()
                Text("Para leer mas identificate")
                    .padding([.all], 10)
                Pantalla9View()
                    .padding([.leading, .trailing, .top], 10)
                    .background(Color.init(UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1)))
                Spacer()
            }
        }
        .background(Color.gray.opacity(0.1))
        .navigationBarTitle("", displayMode: .inline)
        
    }
}

struct Pantalla9View_Previews: PreviewProvider {
    static var previews: some View {
        Pantalla9View()
            .background(Color.init(UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1)))
            .navigationBarTitle("", displayMode: .inline)
    }
}
