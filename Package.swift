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
            url: "https://repo.whatap-mobile-agent.io/uploads/2.4.3/WhatapAgent.xcframework.zip",
            checksum: "a5118aa2014642d2837b4370fa7892d77ec58d626cca665c01a81fc6283e9f72"
        )
    ]
)
