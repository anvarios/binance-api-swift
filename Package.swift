// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "binance-api-swift",
    products: [
        .library(name: "BinanceApi", targets: ["BinanceApi"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-log.git", from: "1.4.0"),
        .package(url: "https://github.com/Alamofire/Alamofire", from: "5.4.3")
    ],
    targets: [
        .target(name: "BinanceApi", dependencies: [
            .product(name: "Logging", package: "swift-log"),
            .product(name: "Alamofire", package: "Alamofire")
        ]),
        .testTarget(name: "BinanceApiTests", dependencies: [
            .target(name: "BinanceApi")
        ])
    ],
    swiftLanguageVersions: [.v5]
)
