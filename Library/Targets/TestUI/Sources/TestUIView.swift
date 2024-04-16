import SwiftUI
import Strings

public struct TestUIView: View {
  public init() {}
  public var body: some View {
    VStack(spacing: 8) {
      // Load a string from the default table of the strings module
      Text("ChildHello", bundle: StringsExporter.bundle)
      
      // Load a string from a custom table of the strings module
      Text("AnotherTableKey", tableName: "AnotherTable", bundle: StringsExporter.bundle)
      
      // Load a string from the local module
      Text("ModuleBundleKey", bundle: .module)
    }
  }
}

#Preview("en-US") {
  TestUIView()
    .environment(\.locale, Locale(identifier: "en-US"))
}

#Preview("et-EE") {
  TestUIView()
    .environment(\.locale, Locale(identifier: "et-EE"))
}
