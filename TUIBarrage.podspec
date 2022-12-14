#
# Be sure to run `pod lib lint TUIBarrage.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |spec|
  spec.name             = 'TUIBarrage'
  spec.version          = '0.0.1'
  spec.summary      = 'TUIBeauty'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!


  spec.homepage          = 'https://cloud.tencent.com/document/product/269/3794'
  spec.documentation_url = 'https://cloud.tencent.com/document/product/269/9147'
  spec.license          = { :type => 'MIT', :file => 'LICENSE' }
  spec.authors          = 'tencent video cloud'
  spec.source           = { :git => 'https://github.com/One-time/TUIBarrage.git', :tag => spec.version.to_s }

  spec.ios.deployment_target = '9.0'
  spec.requires_arc = true
  spec.static_framework = true
  spec.xcconfig     = { 'VALID_ARCHS' => 'armv7 arm64 x86_64' }
  
  spec.source_files = 'Source/Localized/**/*.{h,m,mm}', 'Source/Model/**/*.{h,m,mm}', 'Source/Service/**/*.{h,m,mm}', 'Source/TUIExtension/**/*.{h,m,mm}', 'Source/UI/**/*.{h,m,mm}'
  spec.resource_bundles = {
      'TUIBarrageBundle' => ['Resources/Localized/**/*.strings','Resources/*.xcassets']
  }
  
  
  #  依赖内部库
  spec.dependency 'TUICore/ImSDK_Scenario'
  
  #  OC第三方库
  spec.dependency 'Masonry'
  spec.dependency 'SDWebImage'
  spec.dependency 'MJExtension'
end
