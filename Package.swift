// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

#if os(Linux)
let package = Package(
    name: "PerfectICONV",
    products: [
        .library(
            name: "PerfectICONV",
            targets: ["PerfectICONV"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
      .target(name: "CString", dependencies: []),
      .target(name: "ICONVApiLinux", dependencies: []),
      .target(name: "PerfectICONV", dependencies: [
        .target(name: "ICONVApiLinux"),
        .target(name: "CString")
      ]),
      .testTarget(name: "PerfectICONVTests", dependencies: ["PerfectICONV"])
    ]
)
#else
let package = Package(
    name: "PerfectICONV",
    products: [
        .library(
            name: "PerfectICONV",
            targets: ["PerfectICONV"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
      .target(name: "ICONVApi", dependencies: []),
      .target(name: "PerfectICONV", dependencies: ["ICONVApi"]),
      .testTarget(name: "PerfectICONVTests", dependencies: ["PerfectICONV"])
    ]
)#endif
