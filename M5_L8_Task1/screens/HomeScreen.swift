//
//  HomeScreen.swift
//  M5_L8_Task1
//
//  Created by Bekhruz Hakmirzaev on 29/11/22.
//

import SwiftUI

struct HomeScreen: View {
    @EnvironmentObject var status: Status
    var body: some View {
        NavigationView{
            List{
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        AddStory()
                        ItemStory()
                        ItemStory()
                        ItemStory()
                        ItemStory()
                        ItemStory()
                        ItemStory()
                        ItemStory()
                        ItemStory()
                    }
                }.frame(height: 100)
                ItemPost(img_url1: "image1", img_url2: "image1")
                ItemPost(img_url1: "image2", img_url2: "image2")
                ItemPost(img_url1: "image3", img_url2: "image3")
                ItemPost(img_url1: "image4", img_url2: "image4")
            }
            .listStyle(PlainListStyle())
            .navigationBarItems(
                leading: Image(systemName: "camera").foregroundColor(.red),
                trailing: Button(action: {
                    UserDefaults.standard.removeObject(forKey: "userid")
                    status.listen()
                }, label: {
                    Image(systemName: "person").foregroundColor(.red)
                })
            )
            .navigationBarTitle("Instagram", displayMode: .inline)
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
