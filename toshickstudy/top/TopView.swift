//
//  ContentView.swift
//  toshickstudy
//
//  Created by せかいのとしっく on 2023/07/16.
//

import MapKit
import SwiftUI

struct TopView: View {
  @State private var shouldShowSecondView: Bool = false

  var body: some View {
    VStack {
      NavigationStack {
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
          Text("すいへいにッ")
            .padding()
            .foregroundColor(.green)
          Spacer()
          Text("はいちするッ")
            .font(.title)
            .padding()

        }.padding()
        // NavigationLink(destination: DetailView()) {
        //   Text("しょうさいへッ")
        // }

        NavigationLink {
          DetailView()
        } label: {
          Text("next testAview")
        }

        Spacer()
        // Button {
        //   shouldShowSecondView = true
        // } label: {
        //   Text("ぼたんです")
        // }
        Spacer()
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    TopView()
  }
}
