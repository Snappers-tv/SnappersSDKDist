Pod::Spec.new do |s|
    s.name             = "SnappersSDK"
    s.version          = "1.12.30"
    s.summary          = "Snappers native iOS SDK"
    s.description      = "Live stream on demand using the Snappers SDK"
    s.homepage         = "https://snappers.tv"
    s.license          = { :type => 'Copyright', :text => 'Copyright 2021 Snappers.tv LLC' }
    s.author           = { "Eitan Goldfrad" => "eitan.goldfrad@gmail.com" }

    s.source           = { :http => "https://snappers-assets.s3.eu-central-1.amazonaws.com/SDK/IOS/#{s.version}/Snappers.xcframework.zip" }

    s.platform         = :ios, '16.0'
    s.swift_version    = '5.10'
    s.module_name      = 'Snappers'   # Explicitly tell CocoaPods/Xcode the module name

    s.static_framework = true
    s.vendored_frameworks = 'Snappers.xcframework'

    # Dependencies - Libraries that the SDK requires at runtime
    # These are NOT embedded in the xcframework - they will be installed by CocoaPods for the host app
    s.dependency 'GoogleMaps', '~> 7.4.0'
    # AWSCore and AWSS3 are now EMBEDDED in xcframework (static linkage)
    s.dependency 'UIImageView-Letters'
    s.dependency 'OktaOidc'
    s.dependency 'Google-Maps-iOS-Utils'
    s.dependency 'JWTDecode', '~> 2.3'

    # Vendored libraries embedded in xcframework (static linkage for compatibility):
    # AWSCore, AWSS3, EVReflection, SwiftKeychainWrapper, Kingfisher, SwipeCellKit, SwiftyGif,
    # HaishinKit, NotificationBannerSwift, SnapKit, MarqueeLabel, DDPingTools (SimplePing), Logboard

    # Firebase - NOT embedded in xcframework, host app provides these
    s.dependency 'FirebaseAuth', '~> 12.0'
    s.dependency 'FirebaseDatabase', '~> 12.0'
    s.dependency 'FirebaseStorage', '~> 12.0'
    s.dependency 'FirebaseMessaging', '~> 12.0'
    s.dependency 'FirebaseFunctions', '~> 12.0'
    s.dependency 'FirebaseFirestore', '~> 12.0'
    s.dependency 'FirebaseCrashlytics', '~> 12.0'
    # FirebaseDynamicLinks removed - deprecated and removed from Firebase 12

    s.dependency 'FBSDKCoreKit/Swift'
    s.dependency 'FBSDKLoginKit/Swift'
    s.dependency 'RealmSwift', '10.20.0'
end
