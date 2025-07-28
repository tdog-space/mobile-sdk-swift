// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
// Swift Package: MobileSdkRs

import PackageDescription;

let package = Package(
    name: "MobileSdkRs",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "MobileSdkRs",
            targets: ["MobileSdkRs"]
        )
    ],
    dependencies: [ ],
    targets: [
        .binaryTarget(name: "RustFramework", url: "https://github.com/tdog-space/mobile-sdk-swift/releases/download/0.6.0/RustFramework.xcframework.zip", checksum: "69b8c68a4e1823d47e3289f32c612168923204714b0b907060139fa307cdd9cf"),
        .target(
            name: "MobileSdkRs",
            dependencies: [
                .target(name: "RustFramework")
            ]
        ),
    ]
)