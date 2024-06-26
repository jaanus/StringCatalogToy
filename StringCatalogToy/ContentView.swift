//
//  ContentView.swift
//  StringCatalogToy
//
//  Created by Jaanus Kase on 08.04.2024.
//

import Strings
import SwiftUI
import TestUI

struct ContentView: View {
  var body: some View {
    VStack(spacing: 8) {
      Image(systemName: "globe")
        .imageScale(.large)
        .foregroundStyle(.tint)
      Text("RootHello", bundle: StringsExporter.bundle)
      TestUIView()
    }
    .padding()
  }
}

#Preview("en-US") {
  ContentView()
    .environment(\.locale, Locale(identifier: "en-US"))
}

#Preview("et-EE") {
  ContentView()
    .environment(\.locale, Locale(identifier: "et-EE"))
}
