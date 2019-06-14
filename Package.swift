<<<<<<< HEAD
// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.
=======
// swift-tools-version:4.2
>>>>>>> 92d714d5b6626f629e3dccc79963f3ca8b1678d6

import PackageDescription

let package = Package(
    name: "Fakery",
    products: [
        .library(name: "Fakery", targets: ["Fakery"])
    ],
    dependencies: [
    // Test dependencies
    .package(url: "https://github.com/Quick/Quick.git", from: "2.0.0"),
    .package(url: "https://github.com/Quick/Nimble.git", from: "8.0.0"),

    ],
    targets: [
      .target(name: "Fakery"),
      .testTarget(name: "FakeryTests", dependencies: ["Fakery","Quick", "Nimble"], path: "Tests/Fakery")
    ]
)
