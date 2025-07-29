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
        .binaryTarget(name: "RustFramework", url: "https://github.com/tdog-space/mobile-sdk-swift/releases/download/0.7.0/RustFramework.xcframework.zip", checksum: "e376062876ddc180442f8f5e1c57e8544e7fc7b17fe4e7434a1ee6fedca89568"),
        .target(
            name: "MobileSdkRs",
            dependencies: [
                .target(name: "RustFramework")
            ]
        ),
    ]
)