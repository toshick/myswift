//
//  MyParts.swift
//  toshickstudy
//
//  Created by せかいのとしっく on 2023/07/18.
//

import SwiftUI

struct MyButton: View {
  @State var label: String

  var body: some View {
    Button(action: {}) {
      Text(" \(label)").foregroundColor(Color.yellow)
        .font(Font.system(size: 20).bold())
    }
    .buttonStyle(RoundedButtonStyle())
  }
}

struct RoundedButtonStyle: ButtonStyle {
  func makeBody(configuration: Configuration) -> some View {
    configuration.label
      .padding()
      .foregroundColor(.white)
      .background(.white)
      .cornerRadius(12)
      .opacity(configuration.isPressed ? 0.8 : 1)
  }
}
