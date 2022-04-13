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
    //    .library(
    //        name: "KakaoSDKAuth",
    //        targets: ["KakaoSDKAuth"]),
    //    .library(
    //        name: "KakaoSDKUser",
    //        targets: ["KakaoSDKUser"]),
    //    .library(
    //        name: "KakaoSDKTalk",
    //        targets: ["KakaoSDKTalk"]),
    //    .library(
    //        name: "KakaoSDKStory",
    //        targets: ["KakaoSDKStory"]),
    //    .library(
    //        name: "KakaoSDKLink",
    //        targets: ["KakaoSDKLink"]),
    //    .library(
    //        name: "KakaoSDKNavi",
    //        targets: ["KakaoSDKNavi"]),
    //    .library(
    //        name: "KakaoSDKTemplate",
    //        targets: ["KakaoSDKTemplate"])
        
    ],
//    dependencies: [
//        .package(name: "Alamofire",
//                  url: "https://github.com/Alamofire/Alamofire.git",
//                  Version(5,1,0)..<Version(6,0,0))
//    ],
    targets: [
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
       .binaryTarget(name: "KakaoSDKCommon",
                     url:"https://github.com/fecom73/private-kakao-ios-sdk/releases/download/2.9.2/KakaoSDKCommon_xcframework.zip",
                     checksum: "12cdb2a3a47b11ce1e07aedec62543423591f6a3e1482491ee209752ae15c89f"
       ),
    //    .binaryTarget(name: "KakaoSDKAuth",
    //                  url:"https://github.daumkakao.com/kops/private-kakao-ios-sdk/releases/download/2.9.2/KakaoSDKAuth_xcframework.zip",
    //                  checksum: "9c773ae8bb055ede9e4c6cfa42af3ef3f3ca690f455879553b4fc59f280eba73"
    //    ),
    //    .binaryTarget(name: "KakaoSDKUser",
    //                  url:"https://github.daumkakao.com/kops/private-kakao-ios-sdk/releases/download/2.9.2/KakaoSDKUser_xcframework.zip",
    //                  checksum: "201ae8f31e41c97678e79482ee1b5e1663634235dbd7f3f8de5faa373ce47aa5"
    //    ),
    //    .binaryTarget(name: "KakaoSDKTalk",
    //                  url:"https://github.daumkakao.com/kops/private-kakao-ios-sdk/releases/download/2.9.2/KakaoSDKTalk_xcframework.zip",
    //                  checksum: "c479542d3d8db50b01bff621d0106199b6cbeb56ac80c9c233885783e952bdfb"
    //    ),
    //    .binaryTarget(name: "KakaoSDKStory",
    //                  url:"https://github.daumkakao.com/kops/private-kakao-partner-ios-sdk/releases/download/2.9.2/KakaoSDKStory_xcframework.zip",
    //                  checksum: "8849d8787bfe329c32e53958a255ef6c78cb28276ddd89342a2cdaf327ed44ad"
    //    ),
    //    .binaryTarget(name: "KakaoSDKLink",
    //                  url:"https://github.daumkakao.com/kops/private-kakao-partner-ios-sdk/releases/download/2.9.2/KakaoSDKLink_xcframework.zip",
    //                  checksum: "9b069f4be448305085dcd722ed8d2af319ab32a5473f03c288a9108d731ccfdb"
    //    ),
    //    .binaryTarget(name: "KakaoSDKTemplate",
    //                  url:"https://github.daumkakao.com/kops/private-kakao-ios-sdk/releases/download/2.9.2/KakaoSDKTemplate.xcframework.zip",
    //                  checksum: "1a27b46f95c2dfa9a9b8e255489cde75c8eb97377093a76f4251f4822a0f77da"
    //    ),
    //    .binaryTarget(name: "KakaoSDKNavi",
    //                  url:"https://github.daumkakao.com/kops/private-kakao-ios-sdk/releases/download/2.9.2/KakaoSDKNavi.xcframework.zip",
    //                  checksum: "1a530fad34ecfbb87c000d8fe5360fa0c056ec9356d57397cabfb028134c8b5c"
    //    )
    ],
    swiftLanguageVersions: [
        .v5
    ]
)
