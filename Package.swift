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
            checksum: "4dbaf80e15ddb046741a1d32bb2c3411c9c486ff39d3daed52b493db129bad18"
        )
    ]
)
