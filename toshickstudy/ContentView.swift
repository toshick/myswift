//
//  ContentView.swift
//  toshickstudy
//
//  Created by せかいのとしっく on 2023/07/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello,  toshick!--------")
            VStack(alignment: .leading) {
                Text("vstalkのなか")
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
