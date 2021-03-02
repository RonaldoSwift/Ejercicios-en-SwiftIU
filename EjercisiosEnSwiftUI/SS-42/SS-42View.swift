//
//  SS-42View.swift
//  EjercisiosEnSwiftUI
//
//  Created by Ronaldo Andre Vargas Huaman on 28/02/21.
//

import SwiftUI

struct SS_42View: View {
    let europeCars: [String] = ["Audi","Renault","Ferrari"]
    let asianCars: [String] = ["Honda","Nissan","Suzuki"]
    
    var body: some View {
        NavigationView{
            List{
                Section(header: Text("European Cars")) {
                    ForEach(0..<europeCars.count){
                        Text(self.europeCars[$0])
                    }
                }
                
                Section(header: HStack{
                    Image(systemName: "car")
                    Text("Asians Cars")
                }, footer: Text("This is a example list of a few car brands").font(.footnote)) {
                    ForEach(0..<asianCars.count) {
                        Text(self.europeCars[$0])
                    }
                }
            }.navigationBarTitle("Cars")
        }
    }
}

struct SS_42View_Previews: PreviewProvider {
    static var previews: some View {
        SS_42View()
    }
}
