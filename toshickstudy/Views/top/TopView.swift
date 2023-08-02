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
  @ObservedObject var mystore = MyStore(name: "John Appleseed", age: 24)

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
            DetailView(mystore: mystore)
          } label: {
            Text("next testAview")
          }.padding(30)

          HStack {
            Text("ねんれい  \(mystore.age)")
            Button {
              _ = mystore.haveBirthday()
            } label: {
              Text("ついか")
            }
          }
          ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 0) {
              ForEach(mystore.posts) { post in
                VStack(alignment: .leading) {
                  // Circle()
                  //   .frame(width: 200, height: 200)
                  //   .foregroundColor(.white)
                  AsyncImage(url: URL(string: post.image)) { image in
                    image.resizable()
                      .scaledToFill().frame(width: 200, height: 200).clipShape(Circle())
                  } placeholder: {
                    Text("image")
                  }
                  // Text(post.id)
                  //   .foregroundColor(.primary)
                  //   .font(.caption)
                  Text(post.title)
                    .foregroundColor(.primary)
                    .font(.caption)
                  Text(post.dateDisp)
                    .foregroundColor(.primary)
                    .font(.caption)
                }.padding(15)
              }
            }
          }

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
