// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyLibrary",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "MyLibrary",
            type: .dynamic,
            targets: ["MyLibrary"]),
    ],
    targets: [
        .target(
            name: "MyLibrary",
            linkerSettings: [.unsafeFlags(["-weak_framework", "SwiftData"])]
        ),
    ],
)
