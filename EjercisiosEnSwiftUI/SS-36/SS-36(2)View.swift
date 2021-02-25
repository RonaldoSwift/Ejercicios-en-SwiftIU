//
//  SS-36(2)View.swift
//  EjercisiosEnSwiftUI
//
//  Created by Ronaldo Andre Vargas Huaman on 25/02/21.
//

import SwiftUI

struct SS_36_2_View: View {
    var emoji: Emoji
    
    var body: some View {
        emojis2(emoji: emoji)
    }
    
    func emojis2(emoji: Emoji) -> some View{
        return VStack{
            Image(emoji.imageName)
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
            VStack(alignment: .leading){
            Text(emoji.name)
                .font(.headline)
                .font(.subheadline)
            }
        }
    }
}

struct SS_36_2_View_Previews: PreviewProvider {
    static var previews: some View {
        SS_36_2_View(emoji: Emoji(id: 0, name: "", imageName: ""))
    }
}
