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
            url: "https://repo.whatap-mobile-agent.io/uploads/2.5.1/WhatapAgent.xcframework.zip",
            checksum: "47ab51aa0be3fb6548b6af4184eb729f6f3a91073b428ce764d43c9c6556a88b"
        )
    ]
)
