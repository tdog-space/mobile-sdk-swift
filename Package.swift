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
        .binaryTarget(name: "RustFramework", url: "https://github.com/tdog-space/mobile-sdk-swift/releases/download/0.5.0/RustFramework.xcframework.zip", checksum: "8256cbca0c3a995af74fa26b97f7e69af0e5e144ee81cea9d5ce2d11a883fd5b"),
        .target(
            name: "MobileSdkRs",
            dependencies: [
                .target(name: "RustFramework")
            ]
        ),
    ]
)