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
            checksum: "806947bff7149b1686c8316fde4add285ba412e9dafabf622bf0e3847ae5f74c"
        )
    ]
)
