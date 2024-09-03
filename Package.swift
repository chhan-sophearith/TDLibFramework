// swift-tools-version:5.3
// DO NOT EDIT! Generated automatically. See scripts/swift_package_generator.py
import PackageDescription


let package = Package(
    name: "TDLibFramework",
    platforms: [
        // Minimum versions for openssl - td/example/ios/Python-Apple-support/Makefile
        .iOS(.v12),
        .macOS(.v10_15),
        .watchOS(.v4),
        .tvOS(.v12), // Synced with iOS, but actually v9
    ],
    products: [
        .library(
            name: "TDLibFramework",
            targets: ["TDLibFrameworkWrapper"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "TDLibFrameworkWrapper",
            dependencies: [.target(name: "TDLibFramework")],
            linkerSettings: [
                .linkedLibrary("c++"),
                .linkedLibrary("z"),
            ]
        ),
        
        .binaryTarget(
            name: "TDLibFramework",
            url: "https://github.com/chhan-sophearith/TDLibFramework/releases/download/1.0.9/TDLibFramework.zip",
            checksum: "26dcf551fd9dab1523d1b5a1ef8cade4af4fc94c268224aa57571c0db1f65865"
        ),
        .testTarget(
            name: "TDLibFrameworkTests",
            dependencies: ["TDLibFrameworkWrapper"]
        ),
    ]
)
