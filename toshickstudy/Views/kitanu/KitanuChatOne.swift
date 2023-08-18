//
//  KitanuChatOne.swift
//  toshickstudy
//
//  Created by せかいのとしっく on 2023/08/17.
//

import SwiftUI

struct KitanuChatOne: View {
  var body: some View {
    ZStack(alignment: .leading) {
      VStack(alignment: .leading) {
        HStack(alignment: .top) {
          Text("♡")
            .frame(alignment: .leading)
            .foregroundColor(.white)
            .font(Font.system(size: 18))
            .padding(.top, 8)
          Spacer()
          Text("せかいのカマレオ")
            .frame(alignment: .leading)
            .foregroundColor(.white)
            .font(Font.system(size: 14))
            .padding(.top, 8)

          AsyncImage(url: URL(string: "https://pandanocoto.com/wp-content/uploads/2022/10/chameleon.jpg")) { image in
            image.resizable()
              .scaledToFill().frame(width: 40, height: 40).clipShape(Circle())
          } placeholder: {
            Text("image")
          }

        }.padding(.horizontal, 16).padding(.bottom, -16)
        Text("初弾を手動で排莢していたな 、 考え方はおかしくない。 たが 、 聞きかじっただけの行為を実践で試すもんじゃない。 だからジャム（弾詰まり）など起こすんだ")
          .foregroundColor(.gray)
          .frame(width: .infinity)
          .padding(.vertical, 16)
          .padding(.horizontal, 16)
          .background(.white)
          .cornerRadius(6)
          .padding(.horizontal, 16)

        // Spacer().frame(width: .infinity, height: 30)
        HStack {
          Text("2023.01.23 13:22")
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(Font.system(size: 14))
            .foregroundColor(.white)
            .padding(.horizontal, 20)
        }
      }
    }
    .padding(.bottom, 16)
  }
}

struct KitanuChatOne_Previews: PreviewProvider {
  static var previews: some View {
    KitanuChatOne()
  }
}
