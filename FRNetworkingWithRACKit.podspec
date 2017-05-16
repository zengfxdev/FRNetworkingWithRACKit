
Pod::Spec.new do |s|

  s.name         = "FRNetworkingWithRACKit"
  s.version      = "0.0.1"
  s.summary      = "基于AFNetworking 3.x封装的RAC网络库"
  s.homepage     = "https://github.com/zengfxios/FRNetworkingWithRACKit"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "zengfxios" => "zengfxios@gmail.com" }

  s.platform     = :ios, "8.0"
  s.ios.deployment_target = "8.0"
  s.requires_arc = true

  s.source       = { :git => "https://github.com/zengfxios/FRNetworkingWithRACKit.git", :tag => "#{s.version}" }

  s.source_files  = 'Source/Classes/**/*.{h,m}'

  s.dependency 'ReactiveObjC','~> 3.0.0'
  s.dependency 'AFNetworking','~> 3.1.0'
end
