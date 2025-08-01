require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = package["name"]
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.authors      = package["author"]

  s.platform          = :ios
  s.requires_arc      = true
  s.static_framework  = true

  s.source       = { :git => "https://github.com/snice/react-native-ffmpegkit.git", :tag => "#{s.version}" }

  s.dependency "React-Core"

  s.source_files      = 'ios/FFmpegKitReactNativeModule.m', 'ios/FFmpegKitReactNativeModule.h'
  s.dependency 'ffmpeg_kit'
  s.ios.deployment_target = '13.0'

end
