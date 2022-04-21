// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

// sdk-version:2.9.2
import PackageDescription

let version = "2.9.2"

var checksums: [String:String] = [:]
checksums["Alamofire"] = "2e2916e62afd968081a907edc483f13304c7260d2089672075c87a9e2693868f"
checksums["KakaoSDKCommon"] = "4346a05a9e5ba34f24ef4eede47d2f10e60922156ae525c67a4a2dc02601cfc9"
checksums["KakaoSDKAuth"] = "bc1e5541d3b2699ae449d8c7f46bbde39edb8912c49193d87db1f84093c3af93"
checksums["KakaoSDKUser"] = "e31adf137eca5fee37cfe41b58976aed246ce77c753fce3d1833edfada359a93"
checksums["KakaoSDKTalk"] = "454d0f4043f77e16daa31ad0ddc58bf411d95c38639f8fa3a801269fb6f4d323"
checksums["KakaoSDKStory"] = "f88660544551fe1edb942144b05c836f83438d3a0c85099a3c146b885fa7ca0b"
checksums["KakaoSDKLink"] = "a57211e136bccfbc7c69491babaf2f21b2dba7a5a8b8da44a23df5e81f6feb2d"
checksums["KakaoSDKNavi"] = "3085437818fc9853fd792505386eb17644bb5d76b1a8e3dc60aa143ac5f5b501"
checksums["KakaoSDKTemplate"] = "b6a89a9f3695bcc18cc2d3e665aa7aef3fa05224e409863203b3d4b8032dfb68"

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
                      url:"https://github.com/fecom73/private-kakao-ios-sdk/releases/download/\(version)/Alamofire_xcframework.zip",
                      checksum:checksums["Alamofire"]!
        ),
// .binaryTarget(name: "Alamofire",
//               url:"https://devrepo.kakao.com/nexus/repository/kakaodev-releases/com/kakao/sdk/spm-kakao-ios-sdk-alamofire/\(version)/spm-kakao-ios-sdk-alamofire-2.9.2.zip",
//               checksum:"030c4a09585c311912c97925619c730c37fed9e71078689c861563fa09449040"
// ),
//    .binaryTarget(name: "Alamofire",
//                  url:"https://github.daumkakao.com/kops/private-kakao-ios-sdk/releases/download/\(version)/Alamofire_xcframework.zip",
//                  checksum:"5c219755359603b57eb8f1e40839e0eba0945cc62586981ca526b9804038712d"
//    ),
        .binaryTarget(name: "KakaoSDKCommon",
                     url:"https://github.com/fecom73/private-kakao-ios-sdk/releases/download/\(version)/KakaoSDKCommon_xcframework.zip",
                     checksum: checksums["KakaoSDKCommon"]!
        ),
        .binaryTarget(name: "KakaoSDKAuth",
                     url:"https://github.com/fecom73/private-kakao-ios-sdk/releases/download/\(version)/KakaoSDKAuth_xcframework.zip",
                     checksum: checksums["KakaoSDKAuth"]!
        ),
        .binaryTarget(name: "KakaoSDKUser",
                      url:"https://github.com/fecom73/private-kakao-ios-sdk/releases/download/\(version)/KakaoSDKUser_xcframework.zip",
                      checksum: checksums["KakaoSDKUser"]!
        ),
        .binaryTarget(name: "KakaoSDKTalk",
                     url:"https://github.com/fecom73/private-kakao-ios-sdk/releases/download/\(version)/KakaoSDKTalk_xcframework.zip",
                     checksum: checksums["KakaoSDKTalk"]!
        ),
        .binaryTarget(name: "KakaoSDKStory",
                     url:"https://github.com/fecom73/private-kakao-ios-sdk/releases/download/\(version)/KakaoSDKStory_xcframework.zip",
                     checksum: checksums["KakaoSDKStory"]!
        ),
        .binaryTarget(name: "KakaoSDKLink",
                     url:"https://github.com/fecom73/private-kakao-ios-sdk/releases/download/\(version)/KakaoSDKLink_xcframework.zip",
                     checksum: checksums["KakaoSDKLink"]!
        ),
        .binaryTarget(name: "KakaoSDKTemplate",
                     url:"https://github.com/fecom73/private-kakao-ios-sdk/releases/download/\(version)/KakaoSDKTemplate_xcframework.zip",
                     checksum: checksums["KakaoSDKTemplate"]!
        ),
        .binaryTarget(name: "KakaoSDKNavi",
                     url:"https://github.com/fecom73/private-kakao-ios-sdk/releases/download/\(version)/KakaoSDKNavi_xcframework.zip",
                     checksum: checksums["KakaoSDKNavi"]!
        )
    ],
    swiftLanguageVersions: [
        .v5
    ]
)
