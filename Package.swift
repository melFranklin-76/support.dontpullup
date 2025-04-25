import PackageDescription

let package = Package(
    name: "YourApp",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "YourApp",
            targets: ["YourApp"]),
    ],
    dependencies: [
        .package(name: "FirebaseAnalytics", url: "https://github.com/firebase/firebase-ios-sdk.git", from: "8.0.0")
    ],
    targets: [
        .target(
            name: "YourApp",
            dependencies: ["FirebaseAnalytics"]),
        .testTarget(
            name: "YourAppTests",
            dependencies: ["YourApp"]),
    ]
)
