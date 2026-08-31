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
            url: "https://repo.whatap-mobile-agent.io/uploads/2.7.12/WhatapAgent.xcframework.zip",
            checksum: "727ed3235462ca3c590facc9dd059071baef84942696696488f60713c4e19cbc"
        )
    ]
)
