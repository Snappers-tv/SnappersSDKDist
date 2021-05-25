Pod::Spec.new do |s|
    s.name         = "SnappersSDK"
    s.version      = "1.2.2"
    s.summary      = "Snappers native iOS SDK"
    s.description  = "Live stream on demand using the Snappers SDK"
    s.homepage     = "https://snappers.tv"
    s.license = { :type => 'Copyright', :text => <<-LICENSE
                   Copyright 2021 Snappers‫.‬tv LLC
                  LICENSE
                }
    s.author             = { "Eitan Goldfrad" => "eitan.goldfrad@gmail.com" }
    s.source            = { :http => "https://snappers-assets.s3.eu-central-1.amazonaws.com/SDK/IOS/#{s.version}/SnappersSDK.xcframework.zip" }


   s.preserve_paths = [
    'SnappersSDK.xcframework'
  ]

  s.xcconfig            = {
    'FRAMEWORK_SEARCH_PATHS' => '"${PODS_ROOT}/SnappersSDK"',
    'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'
  }

    s.platform = :ios
    s.swift_version = "5.3.2"
    s.ios.deployment_target  = '13.0'

    s.dependency 'TwitterKit'
    s.dependency 'GoogleMaps' , '~> 4.1.0'
    s.dependency 'EVReflection'
    s.dependency 'AWSS3'
    s.dependency 'AWSMobileClient'
    s.dependency 'UIImageView-Letters'
    s.dependency 'SimplePing'
    s.dependency 'SwiftKeychainWrapper'
    s.dependency 'OktaOidc'
    s.dependency 'Google-Maps-iOS-Utils'

    s.dependency "Kingfisher"
    s.dependency 'JWTDecode', '~> 2.3'
    s.dependency 'SwipeCellKit'
    s.dependency 'SwiftyGif'
    s.dependency 'Firebase/Auth'
    s.dependency 'Firebase/Database'
    s.dependency 'Firebase/Storage'
    s.dependency 'Firebase/Messaging'
    s.dependency 'Firebase/DynamicLinks'
    s.dependency 'Firebase/Firestore'
    s.dependency 'FirebaseInstanceID'

    # swift packages
     s.dependency 'FBSDKLoginKit'
     s.dependency 'HaishinKit', '~> 10.1.5'
     s.dependency 'NotificationBannerSwift'
     s.dependency 'Sentry'
end
