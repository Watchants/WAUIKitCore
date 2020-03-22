// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WAUIKitCore",
    platforms: [
        .iOS(.v10),
    ],
    products: [
        .library(
            name: "WAUIKitCore",
            targets: ["WAUIKitCore"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Watchants/WAFoundation.git", .branch("master")),
    ],
    targets: [
        .target(
            name: "WAUIKitCore",
            dependencies: ["WAFoundation"]),
    ]
)
