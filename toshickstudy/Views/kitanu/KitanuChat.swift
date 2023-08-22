//
//  KitanuChat.swift
//  toshickstudy
//
//  Created by せかいのとしっく on 2023/08/17.
//

import SwiftUI

struct KitanuChat: View {
  @ObservedObject var chatstore = KTNStore()
  @State private var inputext = ""

  var body: some View {
    ZStack {
      Image("bg-pat-3").resizable(resizingMode: .tile)
      VStack(spacing: 0) {
        ZStack(alignment: .bottom) {
          Image("bg-pat-1").resizable(resizingMode: .tile)
          HStack {
            Button(action: {
              // action?()
            }) {
              Image("attachment_24px_outlined")
            }
            TextField("はなすヌ", text: $inputext)
              .textFieldStyle(RoundedBorderTextFieldStyle())
              .onSubmit {
                chatstore.submit()
              }

            Button(action: {
              // action?()
            }) {
              Image("arrow_upward_24px_outlined")
            }

          }.padding()
        }
        .frame(maxWidth: .infinity, maxHeight: 70)
        // .background(.white)
//        .background(Color.keyColor)
        ScrollView {
          VStack(spacing: 0) {
            Spacer().frame(width: .infinity, height: 100)

            ForEach(0 ..< chatstore.chats.count, id: \.self) { index in
              KitanuChatOne(chat: chatstore.chats[index])
            } // Foreach
          }
        }

        ZStack {
          Image("bg-pat-1").resizable(resizingMode: .tile)
          HStack(spacing: 0) {
            Text("ぼとむ")
          }
        }
        .frame(maxWidth: .infinity, maxHeight: 60)
      }
    }
    .ignoresSafeArea()
  }
}

struct KitanuChat_Previews: PreviewProvider {
  static var previews: some View {
    KitanuChat()
  }
}
