//
//  Kitanu.swift
//  toshickstudy
//
//  Created by せかいのとしっく on 2023/08/16.
//

import SwiftUI

struct Kitanu: View {
  var body: some View {
    NavigationView {
      ZStack {
        Image("bg-pat-1").resizable(resizingMode: .tile)

        VStack {
          VStack {
            Image("cloud2").resizable().frame(width: 115, height: 38).position(x: 100, y: 100)

            Image("cloud1").resizable().frame(width: 102, height: 40).position(x: 300, y: 30)
            Circle()
              .fill(Color.white)
              .frame(width: 40, height: 40)
              .position(x: 260, y: 0)

            Image("tanu").resizable().frame(width: 157, height: 188)
              .position(x: 160, y: 30)

          }.frame(maxWidth: .infinity, maxHeight: 300).background {
            Image("bg-pat-2").resizable(resizingMode: .tile)
          }

          Spacer().frame(width: 50, height: 60)
          Image("tanu-title").resizable().frame(width: 293, height: 77)

          Text("キータヌは世話焼きたぬき\nキータヌに自分のアクティビティをみてもらおう").padding().foregroundColor(.white)

          Spacer()
        }

      }.ignoresSafeArea()
    }.navigationBarTitleDisplayMode(.inline)
  }
}

struct Kitanu_Previews: PreviewProvider {
  static var previews: some View {
    Kitanu()
  }
}
