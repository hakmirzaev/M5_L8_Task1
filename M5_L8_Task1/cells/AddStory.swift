//
//  AddStory.swift
//  M5_L8_Task1
//
//  Created by Bekhruz Hakmirzaev on 29/11/22.
//

import SwiftUI

struct AddStory: View {
    var body: some View {
        VStack{
            ZStack(alignment: .bottomTrailing){
                Image("profile").resizable().frame(width: 70, height: 70)
                    .cornerRadius(25)
                Image("ic_add")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .cornerRadius(30)
            }
            Text("bekhruz").font(.system(size: 13.5))
        }.padding(.trailing, 10).frame(height: 100)
    }
}

struct AddStory_Previews: PreviewProvider {
    static var previews: some View {
        AddStory()
    }
}
