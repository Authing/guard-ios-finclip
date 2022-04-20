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
            checksum: "16548d4b0f1aa3230fd21736c6266d31c7b1bcb9f6967846f621c8392bf3d54d"
        )
    ]
)
