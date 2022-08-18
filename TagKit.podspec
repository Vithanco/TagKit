# Run `pod lib lint TagKit.podspec' to ensure this is a valid spec.

Pod::Spec.new do |s|
  s.name             = 'TagKit'
  s.version          = '0.1.0'
  s.swift_versions   = ['5.3']
  s.summary          = 'TagKit contains tools for building gag-based apps.'

  s.description      = <<-DESC
  TagKit is a SwiftUI library with tools for building tag-based apps.
                       DESC

  s.homepage         = 'https://github.com/danielsaidi/TagKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Daniel Saidi' => 'daniel.saidi@gmail.com' }
  s.source           = { :git => 'https://github.com/danielsaidi/TagKit.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/danielsaidi'

  s.swift_version = '5.6'
  s.ios.deployment_target = '13.0'
  s.tvos.deployment_target = '13.0'
  s.macos.deployment_target = '11.0'
  s.watchos.deployment_target = '6.0'
  
  s.source_files = 'Sources/**/*.swift'
end
