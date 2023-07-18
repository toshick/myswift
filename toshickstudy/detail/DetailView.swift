//
//  DetailView.swift
//  toshickstudy
//
//  Created by せかいのとしっく on 2023/07/17.
//

import SwiftUI

struct DetailView: View {
  @Environment(\.dismiss) var dismiss
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
      Spacer()
    }
  }
}

struct DetailView_Previews: PreviewProvider {
  static var previews: some View {
    DetailView()
  }
}
