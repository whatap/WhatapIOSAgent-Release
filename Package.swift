// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "WhatapAgent",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "WhatapAgent",
            targets: ["WhatapAgent"])
    ],
    targets: [
        .binaryTarget(
            name: "WhatapAgent",
            url: "https://repo.whatap-mobile-agent.io/uploads/2.6.0/WhatapAgent.xcframework.zip",
            checksum: "a85466a1ea22497d3d209443bb6ba646dda30b26dc68be4a0578e6e3370be5bd"
        )
    ]
)
