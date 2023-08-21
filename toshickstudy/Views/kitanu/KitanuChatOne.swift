//
//  KitanuChatOne.swift
//  toshickstudy
//
//  Created by せかいのとしっく on 2023/08/17.
//

import SwiftUI

struct KitanuChatOne: View {
  @State var chat: MyChat

  var body: some View {
    ZStack(alignment: .leading) {
      VStack(alignment: .leading) {
        HStack {
          AsyncImage(url: URL(string: chat.image)) { image in
            image.resizable()
              .scaledToFill()
              .frame(width: 40, height: 40)
              .clipShape(Circle())

          } placeholder: {
            Text("image")
          }
          Text("\(chat.username)")
            .frame(alignment: .leading)
            .foregroundColor(.brown)
            .font(Font.system(size: 14))
          // .padding(.top, 8)
          Spacer()
          Text("♡")
            .frame(alignment: .leading)
            .foregroundColor(.brown)
            .font(Font.system(size: 18))

        }.padding(.horizontal, 16).padding(.bottom, -16).zIndex(1)
        Text("\(chat.msg)")
          .foregroundColor(.gray)
          .frame(width: .infinity)
          .padding(.vertical, 16)
          .padding(.horizontal, 16)
          // .background(.white)
          .cornerRadius(6)
          .padding(.horizontal, 16)

        // Spacer().frame(width: .infinity, height: 30)
        HStack {
          Text("\(chat.dateDisp)")
            .frame(maxWidth: .infinity, alignment: .trailing)
            .font(Font.system(size: 14))
            .foregroundColor(.brown)
            .padding(.horizontal, 20)
        }
      }
    }
    .padding(.bottom, 16)
  }
}

// struct KitanuChatOne_Previews: PreviewProvider {
//   static var previews: some View {
//     KitanuChatOne()
//   }
// }
