//
//  SwiftUIView.swift
//  
//
//  Created by Jaanus Kase on 08.04.2024.
//

import SwiftUI
import Strings

public struct TestUIView: View {
  public init() {}
  public var body: some View {
    Text("ChildHello", bundle: StringsExporter.bundle)
  }
}

#Preview {
  TestUIView()
    .environment(\.locale, Locale(identifier: "et-EE"))
}
