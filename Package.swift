// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Tiktoken",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13), .watchOS(.v6)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Tiktoken",
            targets: ["Tiktoken"]),
    ],
    dependencies: [
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Tiktoken",
            dependencies: [],
            resources: [
                .process("Resources/cl100k_base.tiktoken"),
                .process("Resources/p50k_base.tiktoken"),
                .process("Resources/r50k_base.tiktoken"),
                .process("Resources/encoder.json"),
                .process("Resources/vocab.bpe")
            ]),
        .testTarget(
            name: "TiktokenTests",
            dependencies: ["Tiktoken"]),
    ]
)
