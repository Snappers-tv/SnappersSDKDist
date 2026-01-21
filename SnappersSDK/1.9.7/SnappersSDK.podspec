Pod::Spec.new do |s|
  s.name             = "SnappersSDK"
  s.version          = "1.9.7"
  s.summary          = "Snappers native iOS SDK"
  s.description      = "Live stream on demand using the Snappers SDK"
  s.homepage         = "https://snappers.tv"
  s.license          = { :type => "Copyright", :text => "Copyright 2021 Snappers.tv LLC" }
  s.author           = { "Eitan Goldfrad" => "eitan.goldfrad@gmail.com" }

  # IMPORTANT: hardcode URL to avoid Ruby interpolation issues during validation
  s.source           = { :http => "https://snappers-assets.s3.eu-central-1.amazonaws.com/SDK/IOS/1.9.7/SnappersSDK.xcframework.zip" }

  s.platform         = :ios, "16.0"
  s.swift_version    = "5.10"

  # IMPORTANT: zip root contains SnappersSDK.xcframework (an xcframework that contains Snappers.framework)
  s.vendored_frameworks = "SnappersSDK.xcframework"
  s.preserve_paths      = "SnappersSDK.xcframework"

  # Dependencies (align these with what the SDK was built/tested with)
  s.dependency "GoogleMaps", "~> 7.1.0"
  s.dependency "EVReflection"
  s.dependency "AWSS3"
  s.dependency "UIImageView-Letters"
  s.dependency "DDPingTools"
  s.dependency "SwiftKeychainWrapper"
  s.dependency "OktaOidc"
  s.dependency "Google-Maps-iOS-Utils"
  s.dependency "Kingfisher"
  s.dependency "JWTDecode", "~> 2.3"
  s.dependency "SwipeCellKit"
  s.dependency "SwiftyGif"

  # Set this to the HaishinKit major you actually build against
  # If your SDK build uses 10.1.5, keep 10.1.5 here.
  s.dependency "HaishinKit", "~> 10.1.5"

  # Firebase 12
  s.dependency "FirebaseAuth", "~> 12.0.0"
  s.dependency "FirebaseDatabase", "~> 12.0.0"
  s.dependency "FirebaseStorage", "~> 12.0.0"
  s.dependency "FirebaseMessaging", "~> 12.0.0"
  s.dependency "FirebaseFunctions", "~> 12.0.0"
  s.dependency "FirebaseFirestore", "~> 12.0.0"
  s.dependency "FirebaseCrashlytics", "~> 12.0.0"

  s.dependency "FBSDKCoreKit/Swift"
  s.dependency "FBSDKLoginKit/Swift"
  s.dependency "NotificationBannerSwift"
  s.dependency "RealmSwift", "10.20.0"
  s.dependency "GeoFire"
end
