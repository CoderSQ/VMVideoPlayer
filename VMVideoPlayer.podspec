#
# Be sure to run `pod lib lint VMVideoPlayer.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'VMVideoPlayer'
  s.version          = '0.1.0'
  s.summary          = 'A pods libary of VMVideoPlayer, used for movie player'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  A pods libary of VMVideoPlayer, used for movie player, which is usefull for create app
                       DESC

  s.homepage         = 'https://github.com/CoderSQ/VMVideoPlayer'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'CoderSQ' => 'steven_shuang@126.com' }
  s.source           = { :git => 'https://github.com/CoderSQ/VMVideoPlayer.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.platform = :ios, '11.0'  # 或更高版本

  s.ios.deployment_target = '13.0'

  s.source_files = 'VMVideoPlayer/Classes/**/*', 'VMVideoPlayer/Classes/PrefixHeader.pch'
  
  # s.resource_bundles = {
  #   'VMVideoPlayer' => ['VMVideoPlayer/Assets/*.png']
  # }

  s.public_header_files = 'VMVideoPlayer/Classes/**/*.h'
  s.prefix_header_file = 'VMVideoPlayer/Classes/PrefixHeader.pch'

  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  # 在 VMVideoPlayer.podspec 中添加
  s.static_framework = true
  
  s.dependency 'AFNetworking'
  s.dependency 'SDWebImage'
  s.dependency 'SDWebImageWebPCoder'
  s.dependency 'Masonry'
  s.dependency 'YYModel'
  s.dependency 'GKNavigationBar'
  s.dependency 'GKVideoScrollView'
  s.dependency 'GKPageSmoothView'
  s.dependency 'GKSliderView'
  s.dependency 'GKPopupController'
  s.dependency 'MJRefresh'
  s.dependency 'JXCategoryView'
  s.dependency 'ZFPlayer/AVPlayer'
  
end
