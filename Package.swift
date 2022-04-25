// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

// sdk-version:2.9.2
import PackageDescription

let version = "2.9.2"

let excludeFiles = ["Info.plist", "README.md"]

let package = Package(
    name: "KakaoOpenSDK",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "KakaoSDK",
            targets: ["KakaoSDKCommon", "KakaoSDKAuth", "KakaoSDKUser", "KakaoSDKTalk", "KakaoSDKStory", "KakaoSDKLink", "KakaoSDKNavi", "KakaoSDKTemplate"]),
        .library(
            name: "KakaoSDKCommon",
            targets: ["KakaoSDKCommon"]),
        .library(
            name: "KakaoSDKCommonCore",
            targets: ["KakaoSDKCommonCore"]),
        .library(
            name: "KakaoSDKAuth",
            targets: ["KakaoSDKAuth"]),
        .library(
            name: "KakaoSDKUser",
            targets: ["KakaoSDKUser"]),
        .library(
            name: "KakaoSDKTalk",
            targets: ["KakaoSDKTalk"]),
        .library(
            name: "KakaoSDKStory",
            targets: ["KakaoSDKStory"]),
        .library(
            name: "KakaoSDKLink",
            targets: ["KakaoSDKLink"]),
        .library(
            name: "KakaoSDKNavi",
            targets: ["KakaoSDKNavi"]),
        .library(
            name: "KakaoSDKTemplate",
            targets: ["KakaoSDKTemplate"])
    ],
    dependencies: [
        .package(name: "Alamofire",
                  url: "https://github.com/Alamofire/Alamofire.git",
                  Version(5,1,0)..<Version(6,0,0))
    ],
    targets: [
        .target(
            name: "KakaoSDKCommon",
            dependencies: [
                .product(name: "Alamofire", package: "Alamofire"),
            ],
            exclude: excludeFiles
        ),
        .target(
            name: "KakaoSDKCommonCore",
            path: "sources/KakaoSDKCommon/Common"
        ),
        .target(
            name: "KakaoSDKAuth",
            dependencies: [
                .target(name: "KakaoSDKCommon")
            ],
            exclude: excludeFiles
        ),
        .target(
            name: "KakaoSDKUser",
            dependencies: [
                .target(name: "KakaoSDKAuth")
            ],
            exclude: excludeFiles
        ),
        .target(
            name: "KakaoSDKTalk",
            dependencies: [
                .target(name: "KakaoSDKUser"),
                .target(name: "KakaoSDKTemplate")
            ],
            exclude: excludeFiles
        ),
        .target(
            name: "KakaoSDKStory",
            dependencies: [
                .target(name: "KakaoSDKUser")
            ],
            exclude: excludeFiles
        ),
        .target(
            name: "KakaoSDKLink",
            dependencies: [
                .target(name: "KakaoSDKCommon"),
                .target(name: "KakaoSDKTemplate")
            ],
            exclude: excludeFiles
        ),
        .target(
            name: "KakaoSDKNavi",
            dependencies: [
                .target(name: "KakaoSDKCommon")
            ],
            exclude: excludeFiles
        ),
        .target(
            name: "KakaoSDKTemplate",
            dependencies: [
                .target(name: "KakaoSDKCommon")
            ],
            exclude: excludeFiles
        )
    ],
    swiftLanguageVersions: [
        .v5
    ]
)
