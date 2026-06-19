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
            url: "https://repo.whatap-mobile-agent.io/uploads/2.5.0/WhatapAgent.xcframework.zip",
            checksum: "20fbf233f9f1b2c25a7c7aba071f58072815471469a6686de15809a3b61242ce"
        )
    ]
)
