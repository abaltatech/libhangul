// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Hangul",
    platforms: [
        .macOS(.v10_13), .iOS(.v16), .macCatalyst(.v13)
    ],
    products: [
        .library(
            name: "Hangul",
            type: .static,
            targets: ["Hangul"]),
    ],
    targets: [
        .target(
            name: "Hangul",
            path: "hangul",
            sources: [
                "hangulctype.c",
                "hangulinputcontext.c",
                "hangulkeyboard.c",
                "hanja.c",
            ],
            publicHeadersPath: "./",
            swiftSettings: [.interoperabilityMode(.Cxx)]),
    ],
    cxxLanguageStandard: .cxx11
)
