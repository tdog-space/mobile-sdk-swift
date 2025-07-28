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
        .binaryTarget(name: "RustFramework", url: "https://github.com/tdog-space/mobile-sdk-swift/releases/download/0.3.0/RustFramework.xcframework.zip", checksum: "d1530e0dee4bee95487e3d7e644159823f9bec9411c4c355b02d8d70b4cbbe71"),
        .target(
            name: "MobileSdkRs",
            dependencies: [
                .target(name: "RustFramework")
            ]
        ),
    ]
)