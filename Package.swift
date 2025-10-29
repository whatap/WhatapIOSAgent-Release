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
            checksum: "f745a1ef2e360ddcb734e8aa08af8b9567d32ab3a0b6c340d95bf24894785909"
        )
    ]
)
