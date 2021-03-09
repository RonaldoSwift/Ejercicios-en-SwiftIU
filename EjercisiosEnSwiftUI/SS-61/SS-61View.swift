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
        ZStack(alignment: .topTrailing){
        TabView{
            Text("Home Tab")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            Text("Bookmark Tab")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image(systemName: "bookmark.circle.fill")
                    Text("Bookmark")
                }
            Text("Video Tab")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image(systemName: "video.circle.fill")
                    Text("Video")
                }
            Text("Profile Tab")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Profile")
                }
        }
        .onAppear(){
            UITabBar.appearance().barTintColor = .white
        }
        .accentColor(Color.red)
            
            Button(action: {
                selection = (selection + 1) % 4
            }, label: {
                Text("Next")
                    .padding()
                    .background(Color.red)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
                    .padding()
            })
        }
    }
}

struct SS_61View_Previews: PreviewProvider {
    static var previews: some View {
        SS_61View()
    }
}
