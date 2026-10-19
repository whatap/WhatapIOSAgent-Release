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
            url: "https://repo.whatap-mobile-agent.io/uploads/2.8.0/WhatapAgent.xcframework.zip",
            checksum: "d3ae8c8894d05f8a1ff43c29551fde07191489d4730273dccbba380cae7698e7"
        )
    ]
)
