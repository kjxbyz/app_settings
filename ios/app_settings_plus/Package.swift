// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "app_settings_plus",
    platforms: [
        .iOS("12.0"),
        .macOS("10.14")
    ],
    products: [
        .library(
            name: "app-settings-plus",
            targets: ["app_settings_plus"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "app_settings_plus",
            dependencies: [],
            resources: [
                .process("PrivacyInfo.xcprivacy"),
            ]
        ),
    ]
)
