// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription



// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "WalletConnectV1",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_13),
    ],
    products: [
        .library(name: "WalletConnectV1", targets: ["WalletConnectV1"]),
    ],
    dependencies: [
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift", from: "1.1.0"),
        .package(url: "https://github.com/mxcl/PromiseKit", from: "6.8.0"),
        .package(url: "https://github.com/daltoniam/Starscream", from: "3.0.0"),
    ],
    targets: [
        .target(
            name: "WalletConnectV1",
            dependencies: ["CryptoSwift", "PromiseKit", "Starscream"],
            path: "../WalletConnectV1"
        ),
    ]
)
