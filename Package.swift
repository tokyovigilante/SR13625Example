// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Tsunami",
    platforms: [
       .macOS(.v10_13)
    ],
    products: [
        .executable(name: "Tsunami", targets: ["Tsunami"]),
        .library(name: "Earthquake", targets: ["Earthquake"]),
    ],
    targets: [
        .systemLibrary(
            name: "CPipewire",
            pkgConfig: "libpipewire-0.3"
        ),
        .target(
            name: "Tsunami",
            dependencies: [
                "Earthquake",
            ],
            swiftSettings: [
                .unsafeFlags(["-warnings-as-errors"])
            ]
        ),
        .target(
            name: "Earthquake",
            dependencies: [
                "CPipewire"
            ])
    ]
)
