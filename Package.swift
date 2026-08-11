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
            url: "https://repo.whatap-mobile-agent.io/uploads/2.7.10/WhatapAgent.xcframework.zip",
            checksum: "c732666efd305340e26bd015e8f259eb674794d453abfd52fc5ad35aa2006ed2"
        )
    ]
)
