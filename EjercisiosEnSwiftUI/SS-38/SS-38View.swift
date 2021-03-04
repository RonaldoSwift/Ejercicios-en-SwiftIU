//
//  SS-38View.swift
//  EjercisiosEnSwiftUI
//
//  Created by Ronaldo Andre Vargas Huaman on 22/02/21.
//

import SwiftUI

struct SS_38View: View {
    //    USANDO LIST Y FOREACH
    
    var row: [Int] = []
    var body: some View {
        List {
            ForEach(1...5, id: \.self){ row in
                Text("Row \(row)")
            }
        }
    }
}

struct SS_38View_Previews: PreviewProvider {
    static var previews: some View {
        SS_38View()
    }
}
