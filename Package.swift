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
            checksum: "516969a2ef172bc3c35ae99cb10a65ae94728f458bc9aacdfe254b47d0f2101a"
        )
    ]
)
