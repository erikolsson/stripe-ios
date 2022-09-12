// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Stripe",
    defaultLocalization: "en",
    platforms: [.iOS(.v11)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Stripe",
//            type: .dynamic,
            targets: ["Stripe"]),
    ],
    targets: [
        .target(
            name: "Stripe",
//            path: "Stripe",
            exclude: ["BuildConfigurations", "Info.plist"],
            resources: [
                .process("Info.plist"),
                .process("Resources/Images")
            ],
            publicHeadersPath: "PublicHeaders",
            cSettings: [
                .headerSearchPath("."),
                .headerSearchPath("PublicHeaders/Stripe")
            ]),
    ]
)
