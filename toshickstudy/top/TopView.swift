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
  @State private var showSheet: Bool = false

  var body: some View {
    NavigationStack {
      ScrollView {
        VStack {
          MapView()
            .frame(height: 300)

          CircleImage()
            .offset(y: -130)
            .padding(.bottom, -130)

          Image(systemName: "globe")
            .imageScale(.large)
            .foregroundColor(.accentColor)

          NavigationLink {
            DetailView()
          } label: {
            Text("next testAview")
          }.padding(30)

          TableView()
            .frame(height: 200)
          Button {
            showSheet = true
          } label: {
            Text("シートをだす")
          }.padding(20)
            .sheet(isPresented: $showSheet, content: {
              ScrollView1()
            })
        }
      }.background(Color.yellow)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    TopView()
  }
}
