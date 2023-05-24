// swift-tools-version:5.8
import PackageDescription

let package = Package(
    name: "BuildTools",
    platforms: [.macOS(.v10_13)],
    products: [],
    dependencies: [
        .package(url: "https://github.com/nicklockwood/SwiftFormat", from: "0.51.10"),
        .package(url: "https://github.com/realm/SwiftLint.git", from: "0.52.2"),
    ],
    targets: [.target(name: "BuildTools")]
)
