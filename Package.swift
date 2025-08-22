// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "YYCache",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "YYCache",
            targets: ["YYCache"]
        ),
    ],
    targets: [
        .target(
            name: "YYCache",
            path: "YYCache",
            publicHeadersPath: "",
            cSettings: [
                .define("NS_BLOCK_ASSERTIONS", to: "1", .when(configuration: .release))
            ],
            linkerSettings: [
                .linkedFramework("UIKit"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("QuartzCore"),
                .linkedLibrary("sqlite3")
            ]
        ),
    ]
)
