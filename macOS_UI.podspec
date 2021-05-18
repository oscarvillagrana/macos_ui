#
# Be sure to run `pod lib lint macOS_UI.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'macOS_UI'
  s.version          = '1.0.1'
  s.summary          = 'User Interface library for macOS'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'A short and sweet framework for working with user interface on OS X.'
                       

  s.homepage     = "https://github.com/oscarvillagrana/macos_ui"
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  # s.license      = "LICENSE"
  s.author           = { 'oscarvillagrana' => 'oscarvillagrana@users.noreply.github.com' }
  s.source       = { :git => "https://github.com/oscarvillagrana/macos_ui.git", :tag => s.version }

  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform = :osx
  s.osx.deployment_target = "10.10"

  # s.source_files = 'macOS_UI/Classes/**/*'
  # s.source_files  = 'macOS_UI/Classes/*.{h,m,xib}'
  # s.source_files  = 'macOS_UI/Classes/ViewController.{h,m,xib}'
  # s.source_files  = 'macOS_UI/Classes/ViewController.h','macOS_UI/Classes/ViewController.m','macOS_UI/Classes/ViewController.xib'
  # s.source_files  = "Classes", "Classes/*.{h,m,xib}"
  s.source_files  = 'Classes/**/*.{h,m,xib,storyboard}'
                    # 'ContainerViews/*.{h,m,xib}'
  # s.source_files  = 'Classes/ViewController.{h,m,xib}'
  # s.source_files  = 'Classes/ViewController.*'

  # s.resource_bundles = {
  #   'macOS_UI' => ['macOS_UI/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'Cocoa'
  # s.dependency 'AFNetworking', '~> 2.3'
end
