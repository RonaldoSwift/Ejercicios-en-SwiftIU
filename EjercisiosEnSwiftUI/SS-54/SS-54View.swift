//
//  SS-54View.swift
//  EjercisiosEnSwiftUI
//
//  Created by Ronaldo Andre Vargas Huaman on 4/03/21.
//

import SwiftUI

struct SS_54View: View {
    @State private var selectedTab = 0
    var body: some View {
        TabView(selection: $selectedTab) {
            Text("Tab 1")
                .onTapGesture {
                    self.selectedTab = 1
                }
                .tabItem { Image(systemName: "star")
                    Text("one")
                }
                .tag(0)
            Text("Tab 2")
                .onTapGesture {
                    self.selectedTab = 2
                }
                .tabItem { Image(systemName: "star.fill")
                    Text("Two")
                }
                .tag(1)
        }
    }
}



struct SS_54View_Previews: PreviewProvider {
    static var previews: some View {
        SS_54View()
    }
}
