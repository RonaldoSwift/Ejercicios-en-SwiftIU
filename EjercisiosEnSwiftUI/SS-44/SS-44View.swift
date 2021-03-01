//
//  SS-44View.swift
//  EjercisiosEnSwiftUI
//
//  Created by Ronaldo Andre Vargas Huaman on 26/02/21.
//

import SwiftUI

struct TaskRow: View {
    var body: some View {
        Text("Task data goes here")
    }
}

struct SS_44View: View {
    var body: some View {
        List {
            Section(header: Text("Important tasks")) {
                TaskRow()
                TaskRow()
                TaskRow()
            }
            
            Section(header: Text("Other tasks"), footer:Text("End")) {
                Text("Row 1")
                Text("Row 1")
                Text("Row 1")
            }
        }
    }
}

struct SS_44View_Previews: PreviewProvider {
    static var previews: some View {
        SS_44View()
    }
}
