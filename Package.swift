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
            targets: ["WhatapAgent"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "WhatapAgent",
            url: "https://d2n3bd948dbya.cloudfront.net/uploads/debug/WhatapAgent.xcframework.zip",
            checksum: "8986441fdfc1615c0aa7ad704f19b8d0aa94ff5aa8d7ec7f1c30edb4ef758ac8"
        )
    ]
)
