//
//  MyParts.swift
//  toshickstudy
//
//  Created by せかいのとしっく on 2023/07/18.
//

import SwiftUI

struct MyButton: View {
  @State var label: String
  var action: (() -> Void)?

  var body: some View {
    Button(action: {
      action?()
    }) {
      Text(" \(label)").foregroundColor(Color.yellow)
        .font(Font.system(size: 20).bold())
    }
    .buttonStyle(RoundedButtonStyle())
  }
}

struct RoundedButtonStyle: ButtonStyle {
  func makeBody(configuration: Configuration) -> some View {
    configuration.label
      .padding(.vertical, 16)
      .padding(.horizontal, 60)
      .foregroundColor(.white)
      .background(.white)
      .cornerRadius(12)
      .opacity(configuration.isPressed ? 0.8 : 1)
  }
}


struct KTNButton: View {
  @State var label: String
    @State var disabled: Bool = false
  var action: (() -> Void)?

  var body: some View {
    Button(action: {
      action?()
    }) {
      Text(" \(label)").foregroundColor(Color.brown)
        .font(Font.system(size: 20).bold())
    }
    .buttonStyle(KTNButtonStyle())
    .disabled(disabled)
  }
}

struct KTNButtonStyle: ButtonStyle {
  func makeBody(configuration: Configuration) -> some View {
    configuration.label
      .padding(.vertical, 16)
      .padding(.horizontal, 60)
      .foregroundColor(.white)
      .background(.white)
      .cornerRadius(12)
      .opacity(configuration.isPressed ? 0.8 : 1)
  }
}
