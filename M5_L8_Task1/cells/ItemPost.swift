//
//  ItemPost.swift
//  M5_L8_Task1
//
//  Created by Bekhruz Hakmirzaev on 29/11/22.
//

import SwiftUI

struct ItemPost: View {
    var img_url1 = "image1"
    var img_url2 = "image1"
    var body: some View {
        VStack(alignment: .leading){
            //header
            HStack{
                Image("profile")
                    .resizable()
                    .frame(width: 50, height: 50)
                Text("bekhruz").font(.system(size: 14))
                    .fontWeight(.bold)
                Button(action: {}, label: {Text("follow").font(.system(size: 13)).fontWeight(.bold)})
                Spacer()
                Button(action: {}, label: {Image(systemName: "location").foregroundColor(.black)})
            }
            
            //Image post
            HStack(spacing: 3){
                Image(img_url1)
                    .resizable()
                    .frame(width: UIScreen.main.bounds.size.width/2, height: 200)
                    .aspectRatio(contentMode: .fit)
                    .padding(.leading, -20)
                Image(img_url2)
                    .resizable()
                    .frame(width: UIScreen.main.bounds.size.width/2, height: 200)
                    .aspectRatio(contentMode: .fit)
                    .padding(.trailing, -20)
            }
            //Horizontal Bar
            HStack{
                Button(action: {}, label: {Image(systemName: "heart").foregroundColor(.black)})
                Button(action: {}, label: {Image("ic_comment").foregroundColor(.black)})
                Button(action: {}, label: {Image(systemName: "paperplane").foregroundColor(.black)})
                Spacer()
                Button(action: {}, label: {Image(systemName: "bookmark").foregroundColor(.black)})
            }.padding(.bottom, 5)
            
            //description
            Text("Liked by Bobur and 101 others").font(.system(size: 13.5)).padding(.bottom, 5)
            Text("Thanks for sharing this post, Thanks for sharing this post")
                .lineLimit(4)
                .font(.system(size: 13.5))
                .foregroundColor(.init(white: 0.2))
        }
    }
}

struct ItemPost_Previews: PreviewProvider {
    static var previews: some View {
        ItemPost()
    }
}
