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
            checksum: "5ca31318407e8beaf4708ba97304e390d1b75b21b92ba0cc081f295557ac062b"
        )
    ]
)
