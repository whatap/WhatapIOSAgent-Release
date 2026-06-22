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
            url: "https://repo.whatap-mobile-agent.io/uploads/2.7.0/WhatapAgent.xcframework.zip",
            checksum: "0789db121bddcede8399ad831c4703bfe609e697e63a7838f5d5c1d30c90cbb1"
        )
    ]
)
