//
//  ContentView.swift
//  toshickstudy
//
//  Created by せかいのとしっく on 2023/07/16.
//

import MapKit
import SwiftUI

struct TopView: View {
  @State private var alertNoPermissoin: Bool = false
  @ObservedObject var manager = LocationManager()
  @State var trackingMode = MapUserTrackingMode.follow // ユーザートラッキング追従モード
  @State private var shouldShowSecondView: Bool = false
  @State private var showSheet: Bool = false
  @ObservedObject var mystore = MyStore(name: "John Appleseed", age: 24)

  var body: some View {
    NavigationStack {
      ScrollView {
        VStack {
//            MapView(manager: manager, trackingMode: $trackingMode)
//            .frame(height: 300)

          Map(coordinateRegion: $manager.region,
              showsUserLocation: true, // マップ上にユーザーの場所を表示するオプションをBool値で指定
              userTrackingMode: $trackingMode) // マップがユーザーの位置情報更新にどのように応答するかを決定
            .frame(height: 300)
            .edgesIgnoringSafeArea(.bottom)
            .alert(isPresented: $manager.alertNoPermissoin) {
              Alert(
                title: Text("いちじょうほうもらえない"),
                message: Text("くれないんだ"),
                dismissButton: .default(Text("しかたなし"))
              )
            }

          Button {
            // manager.reloadRegion()
            print("fetchします")

            mystore.fetchPosts()
          } label: {
            Text("fetch posts")
          }
          // Button {
          //   alertNoPermissoin = !alertNoPermissoin
          // } label: {
          //   Text("alertNoPermissoin")
          // }

          // Text("latitude  \($manager.region.center.latitude)")

          ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 0) {
              ForEach(mystore.posts) { post in
                VStack(alignment: .leading) {
                  NavigationLink {
                    DetailView(mystore: mystore, post: post)
                  } label: {
                    AsyncImage(url: URL(string: post.image)) { image in
                      image.resizable()
                        .scaledToFill().frame(width: 200, height: 200).clipShape(Circle())
                    } placeholder: {
                      Text("image")
                    }
                  }

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

          NavigationLink {
            Kitanu()
          } label: {
            KTNButton(label: "キータヌ", disabled: true)
          }

          Button {
            showSheet = true
          } label: {
            Text("kitanu")
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
