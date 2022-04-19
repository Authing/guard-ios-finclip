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
            url: "https://github.com/Authing/guard-ios-finclip/releases/download/0.0.1/GuardFinClipExtender.xcframework.zip",
            checksum: "125b6d3cb9500c51bec746aecc21cb2e2c2b7c0a7d323c386cdca11b6d0991b9"
        )
    ]
)
