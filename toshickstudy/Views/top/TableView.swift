//
//  TableView.swift
//  toshickstudy
//
//  Created by せかいのとしっく on 2023/07/18.
//

import SwiftUI

struct Person: Identifiable {
  public let id = UUID()
  public let givenName: String
  public let familyName: String
}

private var personList = [
  Person(givenName: "Juan", familyName: "Chavez"),
  Person(givenName: "Mei", familyName: "Chen"),
  Person(givenName: "Tom", familyName: "Clark"),
  Person(givenName: "Gita", familyName: "Kumar"),
  Person(givenName: "Gita", familyName: "Kumar"),
  Person(givenName: "Gita", familyName: "Kumar"),
  Person(givenName: "Gita", familyName: "Kumar"),
  Person(givenName: "Gita", familyName: "Kumar"),
  Person(givenName: "Gita", familyName: "Kumar"),
  Person(givenName: "Gita", familyName: "Kumar"),
  Person(givenName: "Gita", familyName: "Kumar"),
  Person(givenName: "Gita", familyName: "Kumar"),
  Person(givenName: "Gita", familyName: "Kumar"),
]

struct TableView: View {
  @State private var persons = personList
  var body: some View {
    VStack {
      // Text("テーブルをつくってみる")
      Table(persons) {
        TableColumn("Given Name", value: \.givenName)
        // TableColumn("Family Name", value: \.familyName)
        TableColumn("Family Name") { person in
          Text("\(person.familyName)-family").bold()
        }
      }

    }.border(Color.yellow, width: 1)
  }
}

struct TableView_Previews: PreviewProvider {
  static var previews: some View {
    TableView()
  }
}
