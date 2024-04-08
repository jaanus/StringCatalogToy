//
//  ContentView.swift
//  StringCatalogToy
//
//  Created by Jaanus Kase on 08.04.2024.
//

import SwiftUI
import TestUI

struct ContentView: View {
  var body: some View {
    VStack {
      Image(systemName: "globe")
        .imageScale(.large)
        .foregroundStyle(.tint)
      Text("Hello, world!")
      TestUIView()
    }
    .padding()
  }
}

#Preview {
  ContentView()
}
