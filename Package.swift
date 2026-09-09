// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "WhatapAgent",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "WhatapAgent",
            targets: ["WhatapAgent"])
    ],
    targets: [
        .binaryTarget(
            name: "WhatapAgent",
            url: "https://repo.whatap-mobile-agent.io/uploads/2.7.14/WhatapAgent.xcframework.zip",
            checksum: "193c78e7d5bbd62fd052834cc6886e6b4d875785cd9cbf2c5811e88a2c6e18a8"
        )
    ]
)
