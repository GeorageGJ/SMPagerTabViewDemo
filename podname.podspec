Pod::Spec.new do |s|

s.name         = "SMPagerTabViewDemo"
s.version      = "0.0.4"
s.summary      = "SMPagerTabViewDemo"
s.homepage     = "https://github.com/GeorageGJ/"
s.license      = "MIT"
s.license      = { :type => "MIT", :file => "LICENSE" }
s.author       = { "GeorageGJ" => "Georage_GJ@163.com" }
s.platform     = :ios, "9.0"
s.source       = { :git => "https://github.com/GeorageGJ/SMPagerTabViewDemo.git", :tag => s.version }
s.source_files = "SMPagerTabViewDemo/SMPagerTabView/*.*"
s.requires_arc = true
s.public_header_files = "SMPagerTabViewDemo/*.h"
s.pod_target_xcconfig = { "SWIFT_VERSION" => "4.0" }

end

