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
  s.summary          = 'A Flutter plugin for opening macOS desktop settings from an app.'
  s.description      = 'A Flutter plugin for opening macOS desktop settings from an app.'
  s.homepage         = 'https://github.com/kjxbyz/app_settings_plus'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Daniel Spencer' => 'spencerccf@gmail.com', 'kjxbyz' => 'hello@kjxbyz.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'FlutterMacOS'
  # Flutter 3.7 requires 10.14
  s.platform = :osx, '10.13'

  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version = '5.0.1'
  s.resource_bundles = {'app_settings_plus_privacy' => ['PrivacyInfo.xcprivacy']}
end
