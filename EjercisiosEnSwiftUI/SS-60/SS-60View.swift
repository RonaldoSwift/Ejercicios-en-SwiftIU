//
//  SS-60View.swift
//  EjercisiosEnSwiftUI
//
//  Created by Ronaldo Andre Vargas Huaman on 9/03/21.
//

import SwiftUI

struct SS_60View: View {
    @State private var selection = 0
    var body: some View {
        ZStack(alignment: .topTrailing){
        TabView(selection: $selection){
            Text("Home Tab")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            
            Text("Bookmark Tab")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image(systemName: "bookmark.circle.fill")
                    Text("Bookmrak")
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
        .onAppear(){
            UITabBar.appearance().barTintColor = .white
        }
        .accentColor(Color.red)
            
            Button(action: {
                selection = (selection + 1) % 4
            }, label: {
                Text("Next")
                    .font(.system(.headline, design: .rounded))
                    .padding()
                    .foregroundColor(Color.white)
                    .background(Color.red)
                    .cornerRadius(10.0)
                    .padding()
            })
        }
    }
}

struct SS_60View_Previews: PreviewProvider {
    static var previews: some View {
        SS_60View()
    }
}
