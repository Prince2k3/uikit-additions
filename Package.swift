// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UIKitAdditions",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "UIKitAdditions",
            targets: ["UIKitAdditions"]),
    ],
    dependencies: [
        .package(url: "https://github.com/mxcl/PromiseKit.git", from: "6.8.4"),
        .package(url: "https://github.com/Prince2k3/datasource.git", from: "1.1.1"),
        .package(url: "https://github.com/Prince2k3/swift-additions.git", from: "1.1.1"),
        .package(url: "https://github.com/marmelroy/PhoneNumberKit.git", from: "3.0.0"),
        .package(url: "https://github.com/malcommac/SwiftDate.git", from: "6.1.0"),
        .package(url: "https://github.com/Alamofire/Alamofire.git", .branch("5.0.0-rc.2")),
        
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "UIKitAdditions",
            dependencies: []),
        .testTarget(
            name: "UIKitAdditionsTests",
            dependencies: ["UIKitAdditions"]),
    ]
)
