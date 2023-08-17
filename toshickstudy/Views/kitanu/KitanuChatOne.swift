//
//  KitanuChatOne.swift
//  toshickstudy
//
//  Created by せかいのとしっく on 2023/08/17.
//

import SwiftUI

struct KitanuChatOne: View {
  var body: some View {
    ZStack {
      VStack(alignment: .leading) {
        Text("初弾を手動で排莢していたな 、 考え方はおかしくない。 たが 、 聞きかじっただけの行為を実践で試すもんじゃない。 だからジャム（弾詰まり）など起こすんだ")
          .foregroundColor(.gray)
          .frame(width: .infinity)
          .padding(.vertical, 16)
          .padding(.horizontal, 16)
          .background(.white)
          .cornerRadius(12)
          .padding(.leading, 16)
          .padding(.trailing, 16)

        // Spacer().frame(width: .infinity, height: 30)
        VStack(alignment: .trailing) {
          Text("2023.01.23")
            .font(Font.system(size: 14))

            .border(Color.red, width: 1)
        }.frame(width: .infinity)
        // .position(x: 130, y: -10)
      }

      AsyncImage(url: URL(string: "https://pandanocoto.com/wp-content/uploads/2022/10/chameleon.jpg")) { image in
        image.resizable()
          .scaledToFill().frame(width: 40, height: 40).clipShape(Circle())
          .position(x: 30, y: -10)
      } placeholder: {
        Text("image")
      }
      Text("せかいのカマレオ")
        .border(Color.red, width: 1)
        .frame(alignment: .leading)
        .font(Font.system(size: 14))
        .position(x: 0, y: -16)
    }
    .padding(.bottom, 32)
  }
}

struct KitanuChatOne_Previews: PreviewProvider {
  static var previews: some View {
    KitanuChatOne()
  }
}
