//
//  MyStore.swift
//  toshickstudy
//
//  Created by せかいのとしっく on 2023/07/27.
//
import SwiftUI

struct MyPost: Hashable, Codable, Identifiable {
  public var id: String = UUID().uuidString
  var title: String
  var date: Int
  var image: String

  var dateDisp: String {
    let mydate = NSDate(timeIntervalSince1970: TimeInterval(date))
    let dateFormatter = DateFormatter()
    dateFormatter.locale = Locale(identifier: "ja_JP")
    dateFormatter.dateStyle = .medium
    dateFormatter.dateFormat = "yyyy-MM-dd hh:mm"
    return dateFormatter.string(from: mydate as Date)
  }
}

class MyStore: ObservableObject {
  @Published var name: String
  @Published var age: Int
  @Published var posts: [MyPost] = []

  /// APIから取得する戻り値の型
  struct Response: Codable {
    var posts: [MyPost]
  }

  init(name: String, age: Int) {
    self.name = name
    self.age = age
    // posts.append(MyPost(title: "たいとる1", image: "https://www.newsweekjapan.jp/akane/assets_c/2021/12/akane211221_dogs2021-thumb-720x480-321854.jpg"))
    // posts.append(MyPost(title: "たいとる2", image: "https://img.benesse-cms.jp/pet-dog/item/image/normal/c7f71f82-2934-418f-87eb-6f251fb31515.jpg?w=1200&h=1304&resize_type=cover&resize_mode=force"))
    // posts.append(MyPost(title: "たいとる3", image: "https://m.media-amazon.com/images/I/616II7kATLL.jpg"))
    // posts.append(contentsOf: posts)
  }

  func haveBirthday() -> Int {
    age += 1
    return age
  }

  func fetchPosts() {
    /// URLの生成
    guard let url = URL(string: "https://deploy-preview-2--shorcut-trigger.netlify.app/.netlify/functions/sample-posts") else {
      /// 文字列が有効なURLでない場合の処理
      return
    }

    /// URLリクエストの生成
    let request = URLRequest(url: url)

    /// URLにアクセス
    URLSession.shared.dataTask(with: request) { data, _, error in

      do {
        if let todoData = data {
          let decodedData = try JSONDecoder().decode(Response.self, from: todoData)
          self.posts = decodedData.posts
        } else {
          print("No data", data as Any)
        }
      } catch {
        print("Error", error)
      }

    }.resume() // タスク開始処理（必須）
  }
}

// let john = Contact(name: "John Appleseed", age: 24)
// cancellable = john.objectWillChange
//   .sink { _ in
//     print("\(john.age) will change")
//   }

// print(john.haveBirthday())
