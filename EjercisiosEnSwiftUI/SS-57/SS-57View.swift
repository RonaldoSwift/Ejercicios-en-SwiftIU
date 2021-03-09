//
//  SS-57View.swift
//  EjercisiosEnSwiftUI
//
//  Created by Ronaldo Andre Vargas Huaman on 8/03/21.
//

import SwiftUI

struct SS_57View: View {
    var body: some View {
        TabView{
        Text("Home Tab")
            .font(.system(size: 30, weight: .bold, design: .rounded))
            .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
        
            }
    }
    }
}

struct SS_57View_Previews: PreviewProvider {
    static var previews: some View {
        SS_57View()
    }
}
