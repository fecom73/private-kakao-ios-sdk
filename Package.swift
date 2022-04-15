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
                      checksum:"99ea33e77ef517c26489b07f46d81f0615925ed32f255d2d331d13e0e28a5ef0"
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
                     checksum: "f74f4619da84c85b928a197bba1f3512456f9855bd6d42cb3ac830536aa5fb11"
        ),
        .target(name: "KakaoSDKAuthTarget",
            dependencies: [
                .target(name: "KakaoSDKCommon"),
                .target(name: "KakaoSDKAuth")
            ]
        ),
        .binaryTarget(name: "KakaoSDKAuth",
                     url:"https://github.com/fecom73/private-kakao-ios-sdk/releases/download/2.9.2/KakaoSDKAuth_xcframework.zip",
                     checksum: "6b675cf49bc0653818a2e91124e4591c80047a5f972b13dfb9377cd3dfd13d46"
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
                     checksum: "6af084965b56239d8e74fc71f6d2a242d0132be66d62094e5161be1f80ecce15"
        ),
        .target(name: "KakaoSDKStoryTarget",
            dependencies: [
                .target(name: "KakaoSDKUser"),
                .target(name: "KakaoSDKStory")
            ]
        ),
        .binaryTarget(name: "KakaoSDKStory",
                     url:"https://github.com/fecom73/private-kakao-ios-sdk/releases/download/2.9.2/KakaoSDKStory_xcframework.zip",
                     checksum: "d11d1f9f4a4abed1b05d6617fe83a2c3cf86e99ab4526c5c1b055ff89c8c1bee"
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
                     checksum: "e7cbdc7c0955d7aab54eb7255ae7089cdaf81c6cf5f715e76bc6ba706e06a1bc"
        ),
        .target(name: "KakaoSDKTemplateTarget",
            dependencies: [
                .target(name: "KakaoSDKCommon"),
                .target(name: "KakaoSDKTemplate")
            ]
        ),
        .binaryTarget(name: "KakaoSDKTemplate",
                     url:"https://github.com/fecom73/private-kakao-ios-sdk/releases/download/2.9.2/KakaoSDKTemplate_xcframework.zip",
                     checksum: "2f7c157624fd3f146355dfb86e059a6ecb87b6215572f0116214d84a4ab0c98f"
        ),
        .target(name: "KakaoSDKNaviTarget",
            dependencies: [
                .target(name: "KakaoSDKCommon"),
                .target(name: "KakaoSDKNavi")
            ]
        ),
        .binaryTarget(name: "KakaoSDKNavi",
                     url:"https://github.com/fecom73/private-kakao-ios-sdk/releases/download/2.9.2/KakaoSDKNavi_xcframework.zip",
                     checksum: "399bb35368ca60ab7d4799923b24fa7bb173e3e5f7f146ceb19c1e022b8926b0"
        )
    ],
    swiftLanguageVersions: [
        .v5
    ]
)
