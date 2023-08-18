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
      VStack(spacing: 0) {
        HStack {
          Text("ヘッド")
        }
        .frame(maxWidth: .infinity, maxHeight: 60)
        .background(.white)
        ScrollView {
          VStack(spacing: 0) {
            Spacer().frame(width: .infinity, height: 100)
            KitanuChatOne()
            KitanuChatOne()
            KitanuChatOne()
            KitanuChatOne()
            KitanuChatOne()
            KitanuChatOne()
          }
        }
        HStack(spacing: 0) {
          Text("ぼとむ")
        }
        .frame(maxWidth: .infinity, maxHeight: 60)
        .background(.white)
      }
    }
    // .ignoresSafeArea()
  }
}

struct KitanuChat_Previews: PreviewProvider {
  static var previews: some View {
    KitanuChat()
  }
}
