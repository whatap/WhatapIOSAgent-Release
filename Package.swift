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
            url: "https://repo.whatap-mobile-agent.io/uploads/2.7.11/WhatapAgent.xcframework.zip",
            checksum: "d1c4b13b4300314bfc78723c02aa576588ba7b6fdf5cea0b5a7bb3d889beead8"
        )
    ]
)
