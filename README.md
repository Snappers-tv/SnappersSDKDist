# Getting Started with the Snappers SDK for iOS

## Step 1: Instalation

### CocoPods
Add this to your Podfile 

```ruby
    source 'https://github.com/CocoaPods/Specs'
    source 'https://github.com/Snappers-tv/HaishinKit.swift'
    source 'https://github.com/Snappers-tv/SnappersSDKDist.git'

    .
    .
    .
 
    pod 'SnappersSDK'
    
    .
    .
    .
end

   post_install do |installer_representation|
       installer_representation.pods_project.targets.each do |target|
           target.build_configurations.each do |config|
               config.build_settings['ONLY_ACTIVE_ARCH'] = 'NO'
               config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
           end
       end
   end

```
from the terminal in your project directory type 
```bash
    pod install
```

## Step 2: Add SnappersSDK to you project
Drag the SnappersSDK.xcframework folder from {YOUR_PROJECT_DIR}/Pods/SnappersSDK to your project's "Framework, libraries and Embeded Content" section and set its Embed state to "Embeded & signed"
![image](https://user-images.githubusercontent.com/22291628/110253138-6a93f900-7f91-11eb-9a60-ed5a46c85b93.png)



## Step 3: Obtain your Snappers Affiliate code and Secret.
Snappers identifies developers by their app's bundle id.  
To recieve the uniqe affiliate code and secret tokens send us your prject's bundle id to info@snappers.tv

## Step 4: Configure App Settings
1. In Xcode, from the target’s Build Settings tab, set **Enable Bitcode** option to ​ **NO.**
2. In the target’s Capabilities tab, enable **Push Notifications**, **Keychain Sharing** and **Background Modes**.  
3. In the target’s Capabilities tab, under **Background Modes**, enable **Location updates** and **Remote notifications**.

## Step 5: Add required keys to your info.plist file

Snappers requires the following keys to be addded to the info.plist file.  
**Cordova developers might see this file as {PROJECT-NAME}-info.plist**

- Privacy - Camera Usage Description : Add description
- Privacy - Location When In Use Usage Description : Add description
- Privacy - Location Always Usage Description : Add description
- Privacy - Location Always and When In Use Usage Description : Add description
- Privacy - Microphone Usage Description : Add description
- Privacy - Photo Library Usage Description : Add description
- App Transport Security Settings
	* Allow Arbitrary Loads : YES
	
Either add them manually one by one, or use the following instructions to add them collectively:

In the Project Navigator, right click on Info.plist, and choose "Open as" → "Source Code"
Paste the following snippet into your existing plist. just before the closing tags at the end of the file

```xml
.
.
.
<key>NSAppTransportSecurity</key>
<dict>
	<key>NSAllowsArbitraryLoads</key>
	<true/>
</dict>
<key>NSCameraUsageDescription</key>
<string>We require access in order to record and broadcast videos</string>
<key>NSLocationAlwaysAndWhenInUseUsageDescription</key>
<string>We require access to your location in order to match relevant events for your location</string>
<key>NSLocationAlwaysUsageDescription</key>
<string>We require access to your location  to find relevant events for you and to validate users content origin</string>
<key>NSLocationWhenInUseUsageDescription</key>
<string>We require access to your location  to find relevant events for you and to validate users content origin</string>
<key>NSMicrophoneUsageDescription</key>
<string>We requires access to your microphone in order to record and broadcast videos</string>
<key>NSPhotoLibraryUsageDescription</key>
<string>We require access to your photo library to allow you to upload prerecorded videos</string>   
.
.
.
</dict>
</plist>
```



## Step 6: Facebook and Twitter authentication 
In order to use Snappers' Facebook and Twitter authentication, We'll require some additional keys in the info.plist file

- URL types
	* item
		- URL Schemes
			- URL identifier : Facebook
			- item : fb1973807389602856
	* item
		- URL Schemes
			- URL identifier : Twitter
			- item : twitterkit-c8k1VkrIs7tHDuHkcc5kzLJAX


Either add them manually one by one, or use the following instructions to add them collectively:

In the Project Navigator, right click on Info.plist, and click "Open as" → "Source Code"
Paste the following snippet into your existing plist.
```xml   
<key>CFBundleURLTypes</key>
    <array>
        <dict>
            <key>CFBundleURLSchemes</key>
            <array>
                <string>fb1973807389602856</string>
            </array>
        </dict>
        <dict>
            <key>CFBundleURLSchemes</key>
            <array>
                <string>twitterkit-c8k1VkrIs7tHDuHkcc5kzLJAX</string>
            </array>
        </dict>
    </array>
```

## Step 7: Configure Snappers from your AppDelegate
Replace AFFILIATE_CODE and SECRET with the onece provided by Snappers
```swift 
import Snappers
.
.
.
func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {

    let snappersConfig = SnappersConfiguration(affiliateCode: "AFFILIATE_CODE", affiliateSecret: "SECRET")
    
    SnappersSDK.configure(configuration: snappersConfig, application: application, launchOptions: launchOptions) { error in
        guard error == nil else {
           print("Error configuring snappers", error!)
           return
       }
            
       print("Snappers configured succsefully")
    }
}

```
## Step 8: Present Snappers 

**​ViewController.swift**
```swift
import Snappers
.
.
.
override func viewDidAppear(_ animated: Bool) {
    SnappersSDK.present(from: self, animated: false)
}
```
