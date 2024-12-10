// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ETP",
    platforms: [
        .macOS(.v12),
        .iOS(.v12),
        .tvOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ETP",
            targets: ["ETP"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/CoreOffice/XMLCoder.git", from: "0.17.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "ETP",
            dependencies: ["XMLCoder"]
        ),
        .testTarget(
            name: "ETPTests",
            dependencies: ["ETP"]),
    ]
)
