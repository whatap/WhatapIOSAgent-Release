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
            url: "https://repo.whatap-mobile-agent.io/uploads/2.7.13/WhatapAgent.xcframework.zip",
            checksum: "4fc4a8944d7675fbeeb85b5aba29ba6551300be9c4a061999811462c48a43709"
        )
    ]
)
