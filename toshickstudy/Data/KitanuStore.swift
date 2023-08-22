//
//  MyStore.swift
//  toshickstudy
//
//  Created by せかいのとしっく on 2023/07/27.
//
import SwiftUI

struct MyChat: Hashable, Codable, Identifiable {
  public var id: String = UUID().uuidString
  var title: String
  var date: Int
  var image: String
  var msg: String
  var username: String

  var dateDisp: String {
    let mydate = NSDate(timeIntervalSince1970: TimeInterval(date))
    let dateFormatter = DateFormatter()
    dateFormatter.locale = Locale(identifier: "ja_JP")
    dateFormatter.dateStyle = .medium
    dateFormatter.dateFormat = "yyyy-MM-dd hh:mm"
    return dateFormatter.string(from: mydate as Date)
  }
}

class KTNStore: ObservableObject {
  @Published var chats: [MyChat] = []

  /// APIから取得する戻り値の型
  struct Response: Codable {
    var chats: [MyChat]
  }

  init() {
    for i in 0 ..< 25 {
      let id = "id-\(i)"
      chats.append(MyChat(
        id: id,
        title: "たいとる1",
        date: 1_691_065_254_386,
        image: "https://hachikura.com/wp-content/uploads/2022/01/%E3%83%91%E3%83%B3%E3%82%B5%E3%83%BC%E3%82%AB%E3%83%A1%E3%83%AC%E3%82%AA%E3%83%B3.jpg",
        msg: "\(id) 初弾を手動で排莢していたな 、 考え方はおかしくない。 たが 、 聞きかじっただけの行為を実践で試すもんじゃない。 だからジャム（弾詰まり）など起こすんだ",
        username: "かまのすけ \(id)"
      ))
    }
  }

  func submit() {
    print("そうしん")
  }
}

// let john = Contact(name: "John Appleseed", age: 24)
// cancellable = john.objectWillChange
//   .sink { _ in
//     print("\(john.age) will change")
//   }

// print(john.haveBirthday())
