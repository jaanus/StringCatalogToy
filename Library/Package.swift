// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Library",
  defaultLocalization: "en",
  platforms: [.iOS(.v16), .macOS(.v13)],
  products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
    .library(name: "TestUI", targets: ["TestUI"]),
    .library(name: "Strings", targets: ["Strings"])
  ],
  targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies
    .target(
      name: "TestUI",
      dependencies: ["Strings"],
      path: "Targets/TestUI/Sources"
    ),
    .target(
      name: "Strings",
      path: "Targets/Strings/Sources",
      resources: [
        .process("Localizable.xcstrings")
      ]
    )
  ]
)
