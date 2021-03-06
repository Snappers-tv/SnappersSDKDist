

Pod::Spec.new do |s|
    s.name         = "SnappersSDK"
    s.version      = "1.0.4"
    s.summary      = "Snappers native iOS SDK"
    s.description  = "Live stream on demand using the Snappers SDK"
    s.homepage     = "https://snappers.tv"
    s.license = { :type => 'Copyright', :text => <<-LICENSE
                   Copyright 2021 Snappers‫.‬tv LLC
                  LICENSE
                }
    s.author             = { "Eitan Goldfrad" => "eitan.goldfrad@gmail.com" }
    s.source            = { :git => 'https://github.com/Snappers-tv/SnappersSDKDist.git' } 

    s.platform = :ios
    s.swift_version = "5.3.2"
    s.ios.deployment_target  = '13.0'
  
 s.dependency 'TwitterKit', '~> 1.15.3'
    s.dependency 'GoogleMaps'
    s.dependency 'GooglePlaces'
    s.dependency 'EVReflection'
    s.dependency 'AWSS3'
    s.dependency 'AWSMobileClient', '~> 2.6.13'
    s.dependency 'UIImageView-Letters'
    s.dependency 'SimplePing'
    s.dependency 'SwiftKeychainWrapper'
    s.dependency 'SwiftyBeaver'
    s.dependency 'OktaOidc'
    s.dependency 'Google-Maps-iOS-Utils'
    s.dependency 'Branch'

    s.dependency "Kingfisher"
    s.dependency 'JWTDecode', '~> 2.3'
    s.dependency 'SwipeCellKit'
    s.dependency 'SwiftyGif'
    s.dependency 'Firebase/Auth'
    s.dependency 'Firebase/Database'
    s.dependency 'Firebase/Storage'
    s.dependency 'Firebase/RemoteConfig'
    s.dependency 'Firebase/Messaging'
    s.dependency 'Firebase/DynamicLinks'
    s.dependency 'Firebase/Firestore'
    s.dependency 'FirebaseInstanceID'

    # swift packages
     s.dependency 'FBSDKCoreKit'
     s.dependency 'FBSDKLoginKit'
     s.dependency 'Emoji-Logger'
     s.dependency 'HaishinKit', '~> 1.1.1s'
     s.dependency 'Logboard'
     s.dependency 'MarqueeLabel'
     s.dependency 'NotificationBannerSwift'
     s.dependency 'Sentry'
     s.dependency 'SnapKit'
end


