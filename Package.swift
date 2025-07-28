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
        .binaryTarget(name: "RustFramework", url: "https://github.com/tdog-space/mobile-sdk-swift/releases/download/0.4.0/RustFramework.xcframework.zip", checksum: "d23d8cc41771f1508a38e9306a53bf02b01032028ba6d5d49d7109523d4c344b"),
        .target(
            name: "MobileSdkRs",
            dependencies: [
                .target(name: "RustFramework")
            ]
        ),
    ]
)