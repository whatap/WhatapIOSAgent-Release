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
            url: "https://repo.whatap-mobile-agent.io/uploads/2.4.4/WhatapAgent.xcframework.zip",
            checksum: "94f23f256de556649ee81802d45b8a683ba6d8213a5f0864112e2137e8c77929"
        )
    ]
)
