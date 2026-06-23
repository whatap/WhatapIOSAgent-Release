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
            url: "https://repo.whatap-mobile-agent.io/uploads/2.7.1/WhatapAgent.xcframework.zip",
            checksum: "aa949c6a6aca491c5660c7f8ea0fcd923bac50e9156617009ddb88c484ef04de"
        )
    ]
)
