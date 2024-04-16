import Foundation

public struct StringsExporter {
  /// Expose the resource bundle of this module to other modules.
  ///
  /// You can pass this bundle as an argument to SwiftUI views
  /// that take a bundle argument to load their strings from.
  public static var bundle: Bundle {
    Bundle.module
  }
}
