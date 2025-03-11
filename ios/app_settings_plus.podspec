#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint app_settings_plus.podspec` to validate before publishing.
#
require 'yaml'
pubspec = YAML.load_file('./../pubspec.yaml')
version = pubspec['version'].to_s

Pod::Spec.new do |s|
  s.name             = 'app_settings_plus'
  s.version          = version
  s.summary          = 'A Flutter plugin for opening iOS and Android phone settings from an app.'
  s.description      = 'A Flutter plugin for opening iOS and Android phone settings from an app.'
  s.homepage         = 'https://github.com/kjxbyz/app_settings_plus'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Daniel Spencer' => 'spencerccf@gmail.com', 'kjxbyz' => 'hello@kjxbyz.com' }
  s.source           = { :path => '.' }
  s.source_files = 'app_settings_plus/Sources/app_settings_plus/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '11.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0.1'
  s.resource_bundles = {'app_settings_plus_privacy' => ['app_settings_plus/Sources/app_settings_plus/PrivacyInfo.xcprivacy']}
end
