//
//  KitanuChat.swift
//  toshickstudy
//
//  Created by せかいのとしっく on 2023/08/17.
//

import SwiftUI

struct KitanuChat: View {
  var body: some View {
    ZStack {
      Image("bg-pat-1").resizable(resizingMode: .tile)
      ScrollView {
        VStack {
          Spacer().frame(width: .infinity, height: 100)
          KitanuChatOne()
          KitanuChatOne()
          KitanuChatOne()
          KitanuChatOne()
        }
      }
    }.ignoresSafeArea()
  }
}

struct KitanuChat_Previews: PreviewProvider {
  static var previews: some View {
    KitanuChat()
  }
}
