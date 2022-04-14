// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

// sdk-version:2.9.2
import PackageDescription

let package = Package(
    name: "KakaoOpenSDK",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "Alamofire",
            type: .dynamic,
            targets: ["AlamofireTarget"]),
       .library(
           name: "KakaoSDKCommon",
           type: .dynamic,
           targets: ["KakaoSDKCommonTarget"]),
       .library(
           name: "KakaoSDKAuth",
           type: .dynamic,
           targets: ["KakaoSDKAuthTarget"]),
       .library(
           name: "KakaoSDKUser",
           type: .dynamic,
           targets: ["KakaoSDKUserTarget"]),
       .library(
           name: "KakaoSDKTalk",
           type: .dynamic,
           targets: ["KakaoSDKTalkTarget"]),
       .library(
           name: "KakaoSDKStory",
           type: .dynamic,
           targets: ["KakaoSDKStoryTarget"]),
       .library(
           name: "KakaoSDKLink",
           type: .dynamic,
           targets: ["KakaoSDKLinkTarget"]),
       .library(
           name: "KakaoSDKNavi",
           type: .dynamic,
           targets: ["KakaoSDKNaviTarget"]),
       .library(
           name: "KakaoSDKTemplate",
           type: .dynamic,
           targets: ["KakaoSDKTemplateTarget"])
    ],
//    dependencies: [
//        .package(name: "Alamofire",
//                  url: "https://github.com/Alamofire/Alamofire.git",
//                  Version(5,1,0)..<Version(6,0,0))
//    ],
    targets: [
        .target(name: "AlamofireTarget",
                dependencies: [
                    .target(name: "Alamofire")
                ]
        ),
        .binaryTarget(name: "Alamofire",
                      url:"https://github.com/fecom73/private-kakao-ios-sdk/releases/download/2.9.2/Alamofire_xcframework.zip",
                      checksum:"5c219755359603b57eb8f1e40839e0eba0945cc62586981ca526b9804038712d"
        ),
// .binaryTarget(name: "Alamofire",
//               url:"https://devrepo.kakao.com/nexus/repository/kakaodev-releases/com/kakao/sdk/spm-kakao-ios-sdk-alamofire/2.9.2/spm-kakao-ios-sdk-alamofire-2.9.2.zip",
//               checksum:"030c4a09585c311912c97925619c730c37fed9e71078689c861563fa09449040"
// ),
//    .binaryTarget(name: "Alamofire",
//                  url:"https://github.daumkakao.com/kops/private-kakao-ios-sdk/releases/download/2.9.2/Alamofire_xcframework.zip",
//                  checksum:"5c219755359603b57eb8f1e40839e0eba0945cc62586981ca526b9804038712d"
//    ),
        .target(name: "KakaoSDKCommonTarget",
            dependencies: [
                .target(name: "Alamofire"),
                .target(name: "KakaoSDKCommon")
            ]
        ),
        .binaryTarget(name: "KakaoSDKCommon",
                     url:"https://github.com/fecom73/private-kakao-ios-sdk/releases/download/2.9.2/KakaoSDKCommon_xcframework.zip",
                     checksum: "12cdb2a3a47b11ce1e07aedec62543423591f6a3e1482491ee209752ae15c89f"
        ),
        .target(name: "KakaoSDKAuthTarget",
            dependencies: [
                .target(name: "KakaoSDKCommon"),
                .target(name: "KakaoSDKAuth")
            ]
        ),
        .binaryTarget(name: "KakaoSDKAuth",
                     url:"https://github.com/fecom73/private-kakao-ios-sdk/releases/download/2.9.2/KakaoSDKAuth_xcframework.zip",
                     checksum: "7a21605b26d2f5481bed50f766983811f7b49f6dbed370ec1f622519437f3024"
        ),
        .target(name: "KakaoSDKUserTarget",
            dependencies: [
                .target(name: "KakaoSDKAuth"),
                .target(name: "KakaoSDKUser")
            ]
        ),
        .binaryTarget(name: "KakaoSDKUser",
                      url:"https://github.com/fecom73/private-kakao-ios-sdk/releases/download/2.9.2/KakaoSDKUser_xcframework.zip",
                      checksum: "b7eeec3979e8276e13922b1cae984ebddb4de6df07971ca51ac7024609fd3f33"
        ),
        .target(name: "KakaoSDKTalkTarget",
            dependencies: [
                .target(name: "KakaoSDKUser"),
                .target(name: "KakaoSDKTemplate"),
                .target(name: "KakaoSDKTalk")
            ]
        ),
        .binaryTarget(name: "KakaoSDKTalk",
                     url:"https://github.com/fecom73/private-kakao-ios-sdk/releases/download/2.9.2/KakaoSDKTalk_xcframework.zip",
                     checksum: "6f8bdf2112776e5108e49411f6dac79832eccdc1cc632271f0016b675b77a65f"
        ),
        .target(name: "KakaoSDKStoryTarget",
            dependencies: [
                .target(name: "KakaoSDKUser"),
                .target(name: "KakaoSDKStory")
            ]
        ),
        .binaryTarget(name: "KakaoSDKStory",
                     url:"https://github.com/fecom73/private-kakao-ios-sdk/releases/download/2.9.2/KakaoSDKStory_xcframework.zip",
                     checksum: "0826299ded56d6de2adddf07d16e4e56476906da30e06a3a064d4fade6369a39"
        ),
        .target(name: "KakaoSDKLinkTarget",
            dependencies: [
                .target(name: "KakaoSDKCommon"),
                .target(name: "KakaoSDKTemplate"),
                .target(name: "KakaoSDKLink")
            ]
        ),
        .binaryTarget(name: "KakaoSDKLink",
                     url:"https://github.com/fecom73/private-kakao-ios-sdk/releases/download/2.9.2/KakaoSDKLink_xcframework.zip",
                     checksum: "20faec0371d5548218dcdba7a8d7256c6f66c52476e68feb7ddcd75499add212"
        ),
        .target(name: "KakaoSDKTemplateTarget",
            dependencies: [
                .target(name: "KakaoSDKCommon"),
                .target(name: "KakaoSDKTemplate")
            ]
        ),
        .binaryTarget(name: "KakaoSDKTemplate",
                     url:"https://github.com/fecom73/private-kakao-ios-sdk/releases/download/2.9.2/KakaoSDKTemplate_xcframework.zip",
                     checksum: "d3d73e4dad6a89d6f4697b51cc033406f5e9ffbee7e9850c7e0527e940f01166"
        ),
        .target(name: "KakaoSDKNaviTarget",
            dependencies: [
                .target(name: "KakaoSDKCommon"),
                .target(name: "KakaoSDKNavi")
            ]
        ),
        .binaryTarget(name: "KakaoSDKNavi",
                     url:"https://github.com/fecom73/private-kakao-ios-sdk/releases/download/2.9.2/KakaoSDKNavi_xcframework.zip",
                     checksum: "74ab5e087226fec73dae21932552d629e2bde1c9dc8844baea8ded392cbb7438"
        )
    ],
    swiftLanguageVersions: [
        .v5
    ]
)
