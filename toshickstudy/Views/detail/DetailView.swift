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
  @ObservedObject var mystore: MyStore
  @State var post: MyPost

  var body: some View {
    VStack {
      Text("しょうさいがめん")
        .font(.title)
        .padding()
      Spacer()

      Text("postId  \(post.id)")

      AsyncImage(url: URL(string: post.image)) { image in
        image.resizable()
          .scaledToFill().frame(width: 200, height: 200).clipShape(Circle())
      } placeholder: {
        Text("image")
      }

      // 自作ボタン
      MyButton(label: "とじる") {
        dismiss()
      }

      Spacer()
      PlayButton(isPlaying: $isPlaying)
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(Color.yellow)
  }
}

struct DetailView_Previews: PreviewProvider {
  static var previews: some View {
    DetailView(mystore: MyStore(name: "xxxx", age: 14), post: MyPost(id: "000009", title: "たいとる", date: 99_999_999, image: ""))
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
