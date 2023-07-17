//
//  ContentView.swift
//  toshickstudy
//
//  Created by せかいのとしっく on 2023/07/16.
//

import MapKit
import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      MapView()
        .frame(height: 300)

      CircleImage()
        .offset(y: -130)
        .padding(.bottom, -130)

      Image(systemName: "globe")
        .imageScale(.large)
        .foregroundColor(.accentColor)
      Text("Hello,  toshick!--------")
      Text("ハローの下")
      HStack {
        Text("すいへいに")
          .padding()
          .foregroundColor(.green)
        Spacer()
        Text("はいちする")
          .font(.title)
          .padding()

      }.padding()
      Spacer()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
