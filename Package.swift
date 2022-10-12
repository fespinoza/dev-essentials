// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "DevEssentials",
    platforms: [.macOS(.v12), .iOS(.v15)],
    products: [
        .library(
            name: "DevEssentials",
            targets: ["DevEssentials"]
        ),
        .library(
            name: "DevEssentials_SwiftUI",
            targets: ["DevEssentials_SwiftUI"]
        ),
        .library(
            name: "DevEssentials_UIKit",
            targets: ["DevEssentials_UIKit"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "DevEssentials",
            dependencies: []
        ),
        .target(
            name: "DevEssentials_SwiftUI",
            dependencies: ["DevEssentials"]
        ),
        .target(
            name: "DevEssentials_UIKit",
            dependencies: ["DevEssentials"]
        ),
    ]
)
