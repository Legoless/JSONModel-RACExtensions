Pod::Spec.new do |s|
  s.name         = "JSONModel-RACExtensions"
  s.version      = "0.2.1"
  s.summary      = "JSONModel-RACExtensions is a delightful extension to the JSONModel classes for iOS and Mac OS X."
  s.homepage     = "https://github.com/legoless/JSONModel-RACExtensions"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Dal Rupnik" => "legoless@gmail.com" }
  s.source       = { :git => "https://github.com/legoless/JSONModel-RACExtensions.git", :tag => "#{s.version}" }
  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.8'
  s.source_files = 'RACJSONModel'
  s.requires_arc = true
  s.dependency 'ReactiveCocoa', '~> 2.x'
  s.dependency 'JSONModel', '~> 1.x'
end