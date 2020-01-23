require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = 'react-native-alipay'
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/cross2d/react-native-alipay.git", :tag => "v#{s.version}" }
  s.source_files  = "ios/**/*.{h,m}"
  s.resource              = '$(SRCROOT)/../node_modules/react-native-alipay/ios/SDK/AlipaySDK.bundle'
  s.ios.vendored_frameworks   = 'ios/SDK/AlipaySDK.framework'

  s.pod_target_xcconfig = {
    "FRAMEWORK_SEARCH_PATHS" => '$(inherited) $(SRCROOT)/../../node_modules/@cross2d/react-native-alipay/ios/SDK/',
    "LIBRARY_SEARCH_PATHS" => '$(inherited) $(SRCROOT)/../../node_modules/@cross2d/react-native-alipay/ios/SDK/'
  }
  s.library = 'c++','z'
  s.frameworks = [
      "SystemConfiguration",
      "CoreTelephony",
      "QuartzCore",
      "CoreText",
      "CoreGraphics",
      "UIKit",
      "Foundation",
      "CFNetwork",
      "CoreMotion"
  ]
  s.dependency 'React'
end
