// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OrderedDictionary",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "OrderedDictionary",
            targets: ["OrderedDictionary"]),
    ],
    dependencies: [
        .package(url: "https://github.com/jpsim/Yams.git", from: "2.0.0"), // just for tests
        .package(url: "https://github.com/omochi/FineJSON.git", from: "1.14.0") // just for tests
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "OrderedDictionary",
            dependencies: []),
        .testTarget(
            name: "OrderedDictionaryTests",
            dependencies: ["OrderedDictionary", "Yams", "FineJSON"]),
    ]
)
