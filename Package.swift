// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DHStocksAPI",
    platforms: [
        .macOS(.v12), .iOS(.v13), .watchOS(.v8), .tvOS(.v13)
    ],
    products: [
        .library(
            name: "DHStocksAPI",
            targets: ["DHStocksAPI"]),
        .executable(name: "DHStocksExec",
                    targets: ["DHStocksExec"])
    ],
    targets: [
        .target(
            name: "DHStocksAPI",
            dependencies: []),
        .executableTarget(name: "DHStocksExec",
                          dependencies: ["DHStocksAPI"])
    ]
)
