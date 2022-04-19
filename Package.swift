// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "GuardFinClipExtender",
    defaultLocalization: "en",
    platforms: [
        .macOS(.v10_14), .iOS(.v11), .tvOS(.v13)
    ],
    products: [
        .library(
            name: "GuardFinClipExtender",
            targets: ["GuardFinClipExtender"])
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "GuardFinClipExtender",
            url: "https://github.com/Authing/guard-ios-finclip/releases/download/1.0.0/GuardFinClipExtender.xcframework.zip",
            checksum: "e0cb73a0a8922cabbb0f283171524f250c5e704eba5d4cec13e6a33538dd3138"
        )
    ]
)
