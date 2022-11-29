//
//  StarterScreen.swift
//  M5_L8_Task1
//
//  Created by Bekhruz Hakmirzaev on 29/11/22.
//

import SwiftUI

struct StarterScreen: View {
    @EnvironmentObject var status: Status
    var body: some View {
        VStack{
            if self.status.userid != nil {
                HomeScreen()
            } else {
                SignInScreen()
            }
        }
        .onAppear{
            status.listen()
        }
    }
}

struct StarterScreen_Previews: PreviewProvider {
    static var previews: some View {
        StarterScreen()
    }
}
