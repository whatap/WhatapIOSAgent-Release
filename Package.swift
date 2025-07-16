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
            checksum: "8a80a2c408d2e3a04fb35c7b8005ed3f2f4dfb17bdfda0eb826ec14d9a84e522"
        )
    ]
)
