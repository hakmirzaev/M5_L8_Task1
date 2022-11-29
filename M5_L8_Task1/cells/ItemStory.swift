//
//  ItemStory.swift
//  M5_L8_Task1
//
//  Created by Bekhruz Hakmirzaev on 29/11/22.
//

import SwiftUI

struct ItemStory: View {
    var body: some View {
        VStack{
            Image("profile").resizable().frame(width: 70, height: 70)
                .cornerRadius(25)
                .overlay(RoundedRectangle(cornerRadius: 35).stroke(Color.red, lineWidth: 2))
            Text("bekhruz").font(.system(size: 13.5))
        }.padding(.trailing, 10).frame(height: 100)
    }
}

struct ItemStory_Previews: PreviewProvider {
    static var previews: some View {
        ItemStory()
    }
}
