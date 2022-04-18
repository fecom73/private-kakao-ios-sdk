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
            targets: ["Alamofire"]),
       .library(
           name: "KakaoSDKCommon",
           targets: ["KakaoSDKCommon"]),
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
//    dependencies: [
//        .package(name: "Alamofire",
//                  url: "https://github.com/Alamofire/Alamofire.git",
//                  Version(5,1,0)..<Version(6,0,0))
//    ],
    targets: [        
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
        .binaryTarget(name: "KakaoSDKCommon",
                     url:"https://github.com/fecom73/private-kakao-ios-sdk/releases/download/2.9.2/KakaoSDKCommon_xcframework.zip",
                     checksum: "f74f4619da84c85b928a197bba1f3512456f9855bd6d42cb3ac830536aa5fb11"
        ),        
        .binaryTarget(name: "KakaoSDKAuth",
                     url:"https://github.com/fecom73/private-kakao-ios-sdk/releases/download/2.9.2/KakaoSDKAuth_xcframework.zip",
                     checksum: "fe45182160c8edb513c34c56c6f5bd446504dbacad254bbc7041abecce23830e"
        ),        
        .binaryTarget(name: "KakaoSDKUser",
                      url:"https://github.com/fecom73/private-kakao-ios-sdk/releases/download/2.9.2/KakaoSDKUser_xcframework.zip",
                      checksum: "6b675cf49bc0653818a2e91124e4591c80047a5f972b13dfb9377cd3dfd13d46"
        ),        
        .binaryTarget(name: "KakaoSDKTalk",
                     url:"https://github.com/fecom73/private-kakao-ios-sdk/releases/download/2.9.2/KakaoSDKTalk_xcframework.zip",
                     checksum: "6af084965b56239d8e74fc71f6d2a242d0132be66d62094e5161be1f80ecce15"
        ),        
        .binaryTarget(name: "KakaoSDKStory",
                     url:"https://github.com/fecom73/private-kakao-ios-sdk/releases/download/2.9.2/KakaoSDKStory_xcframework.zip",
                     checksum: "d11d1f9f4a4abed1b05d6617fe83a2c3cf86e99ab4526c5c1b055ff89c8c1bee"
        ),
        .binaryTarget(name: "KakaoSDKLink",
                     url:"https://github.com/fecom73/private-kakao-ios-sdk/releases/download/2.9.2/KakaoSDKLink_xcframework.zip",
                     checksum: "e7cbdc7c0955d7aab54eb7255ae7089cdaf81c6cf5f715e76bc6ba706e06a1bc"
        ),        
        .binaryTarget(name: "KakaoSDKTemplate",
                     url:"https://github.com/fecom73/private-kakao-ios-sdk/releases/download/2.9.2/KakaoSDKTemplate_xcframework.zip",
                     checksum: "2f7c157624fd3f146355dfb86e059a6ecb87b6215572f0116214d84a4ab0c98f"
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
