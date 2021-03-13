//
//  SS-61View.swift
//  EjercisiosEnSwiftUI
//
//  Created by Ronaldo Andre Vargas Huaman on 9/03/21.
//

import SwiftUI

struct SS_61View: View {
    @State private var selection = 1
    var body: some View {
        NavigationView{
            TabView(selection: $selection){
                List(1...10, id: \.self){ index in
                    NavigationLink(
                        destination: Text("Item #\(index) Details"),
                        label: {
                            Text("Items \(index)")
                                .font(.system(size: 20, weight: .bold, design: .rounded))
                        })
                }
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
                
                Text("Bookmark Tab")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .tabItem {
                        Image(systemName: "bookmark.circle.fill")
                        Text("Bookmark")
                    }
                    .tag(1)
                Text("Video Tab")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .tabItem {
                        Image(systemName: "video.circle.fill")
                        Text("Video")
                    }
                    .tag(2)
                
                Text("Profile Tab")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .tabItem {
                        Image(systemName: "person.crop.circle")
                        Text("Profile")
                    }
                    .tag(3)
                
            }
            .accentColor(.red)
            .onAppear() {
                UITabBar.appearance().barTintColor = .white
            }
            .navigationTitle("TabView Demo")
        }
    }
}

struct SS_61View_Previews: PreviewProvider {
    static var previews: some View {
        SS_61View()
    }
}
