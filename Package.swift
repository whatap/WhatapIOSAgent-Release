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
            url: "https://repo.whatap-mobile-agent.io/uploads/2.7.15/WhatapAgent.xcframework.zip",
            checksum: "12ef7ebaa45508c32fdcb95df83d2705462d5cc4e8ca1e6f8f65e95a7565d1e8"
        )
    ]
)
