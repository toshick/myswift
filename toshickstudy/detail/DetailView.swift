//
//  DetailView.swift
//  toshickstudy
//
//  Created by せかいのとしっく on 2023/07/17.
//

import SwiftUI

struct DetailView: View {
  @Environment(\.dismiss) var dismiss
  @State private var isPlaying: Bool = false

  var body: some View {
    VStack {
      Text("しょうさいがめん")
        .font(.title)
        .padding()
      Spacer()
      Button {
        dismiss()
      } label: {
        Text("シートを閉じる")
      }
      Text("親のisPlayingの状態  \(isPlaying ? "いえす" : "ノー")")

      MyButton(label: "ぼぼぼ").onTapGesture(count: 1, perform: {
        // 処理
        print("おされた")

      })

      Spacer()
      PlayButton(isPlaying: $isPlaying)
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(Color.yellow)
  }
}

struct DetailView_Previews: PreviewProvider {
  static var previews: some View {
    DetailView()
  }
}

struct PlayButton: View {
  @Binding var isPlaying: Bool

  var body: some View {
    Button(action: {
      // isPlayingの値は親にも伝わる
      self.isPlaying.toggle()
    }) {
      Text("isPlayingの変更  \(isPlaying ? "いえす" : "ノー")")
        .padding(20)
    }
  }
}
