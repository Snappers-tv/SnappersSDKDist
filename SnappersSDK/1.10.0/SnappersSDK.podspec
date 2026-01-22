Pod::Spec.new do |s|
    s.name             = "SnappersSDK"
    s.version          = "1.10.0"
    s.summary          = "Snappers native iOS SDK"
    s.description      = "Live stream on demand using the Snappers SDK"
    s.homepage         = "https://snappers.tv"
    s.license          = { :type => 'Copyright', :text => 'Copyright 2021 Snappers.tv LLC' }
    s.author           = { "Eitan Goldfrad" => "eitan.goldfrad@gmail.com" }
    
    s.source           = { :http => "https://snappers-assets.s3.eu-central-1.amazonaws.com/SDK/IOS/#{s.version}/Snappers.xcframework.zip" }

    s.platform         = :ios, '16.0'
    s.swift_version    = '5.10'
    s.module_name      = 'Snappers'   # Explicitly tell CocoaPods/Xcode the module name

    s.vendored_frameworks = 'Snappers.xcframework'

    # Dependencies
    s.dependency 'GoogleMaps', '~> 7.1.0'
    s.dependency 'EVReflection'
    s.dependency 'AWSS3'
    s.dependency 'UIImageView-Letters'
    s.dependency 'DDPingTools'
    s.dependency 'SwiftKeychainWrapper'
    s.dependency 'OktaOidc'
    s.dependency 'Google-Maps-iOS-Utils'
    s.dependency 'Kingfisher'
    s.dependency 'JWTDecode', '~> 2.3'
    s.dependency 'SwipeCellKit'
    s.dependency 'SwiftyGif'
    s.dependency 'HaishinKit', '~> 10.1.5'

    s.dependency 'FirebaseAuth', '~> 12.0.0'
    s.dependency 'FirebaseDatabase', '~> 12.0.0'
    s.dependency 'FirebaseStorage', '~> 12.0.0'
    s.dependency 'FirebaseMessaging', '~> 12.0.0'
    s.dependency 'FirebaseFunctions', '~> 12.0.0'
    s.dependency 'FirebaseFirestore', '~> 12.0.0'
    s.dependency 'FirebaseCrashlytics', '~> 12.0.0'

    s.dependency 'FBSDKCoreKit/Swift'
    s.dependency 'FBSDKLoginKit/Swift'
    s.dependency 'NotificationBannerSwift'
    s.dependency 'RealmSwift', '10.20.0'
    s.dependency 'GeoFire'
end
