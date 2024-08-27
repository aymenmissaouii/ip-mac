// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "IpMac",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "IpMac",
            targets: ["ipmacPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "ipmacPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/ipmacPlugin"),
        .testTarget(
            name: "ipmacPluginTests",
            dependencies: ["ipmacPlugin"],
            path: "ios/Tests/ipmacPluginTests")
    ]
)