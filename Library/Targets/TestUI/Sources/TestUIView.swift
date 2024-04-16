import SwiftUI
import Strings

public struct TestUIView: View {
  public init() {}
  public var body: some View {
    VStack {
      // Load a string from the default table of the strings module
      Text("ChildHello", bundle: StringsExporter.bundle)
      
      // Load a string from a custom table of the strings module
      Text("NewKey", tableName: "AnotherTable", bundle: StringsExporter.bundle)
      
      // Load a string from the local module
      Text("ModuleBundle", bundle: .module)
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
