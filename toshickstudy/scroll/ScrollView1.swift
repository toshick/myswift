//
//  ScrollView1.swift
//  toshickstudy
//
//  Created by せかいのとしっく on 2023/07/18.
//

import SwiftUI

struct ScrollView1: View {
  @Environment(\.dismiss) var dismiss
  var body: some View {
    ScrollView([.vertical, .horizontal]) {
      Button {
        dismiss()
      } label: {
        Text("シートを閉じる")
      }
      VStack(spacing: 10) {
        ForEach(0 ..< 10) { y in
          HStack(spacing: 10) {
            ForEach(0 ..< 10) { x in
              Text("\(x), \(y)")
                .frame(width: 100, height: 100)
                .background(Color.yellow)
            }
          }
        }
      }
    }
  }
}

struct ScrollView1_Previews: PreviewProvider {
  static var previews: some View {
    ScrollView1()
  }
}
