//
//  SS-35View.swift
//  EjercisiosEnSwiftUI
//
//  Created by Ronaldo Andre Vargas Huaman on 25/02/21.
//

import SwiftUI

struct SS_35View: View {
    @State var myInteger = 1
    
    var body: some View {
        VStack {
            Text("\(myInteger)")
            OutsourcedButtonView(myInteger: $myInteger)
        }
    }
}

struct OutsourcedButtonView: View {
    
    @Binding var myInteger: Int
    
    var body: some View {
        Button(action: {self.myInteger += 1}) {
            Text("Tap me!")
        }
    }
}

struct SS_35View_Previews: PreviewProvider {
    static var previews: some View {
        SS_35View()
    }
}
