Pod::Spec.new do |s|
  s.name         = "XYEncryptionUtilits"
  s.version      = "1.0.0"
  s.summary      = "XYEncryptionUtilits is a encryption utilits library"
  s.description  = <<-DESC
                    XYEncryptionUtilits is a encryption utilits library,Help you build projects quickly by encryption
                   DESC
  s.homepage     = "https://gsl201600.github.io/"
  s.license      = "MIT"
  s.author             = { "Yostar" => "1728871724@qq.com" }
  s.platform     = :ios, "12.1"
  s.ios.deployment_target = "7.0"
  s.source       = { :git => "https://github.com/Gsl201600/XYEncryptionUtilits.git", :tag => "#{s.version}" }
  s.source_files  = "Libraries/**/*.{h,m}"
  s.frameworks = "Security"
  s.requires_arc = "Libraries/Utilits/XYUtility.m", "Libraries/RSA/XYRSA.m", "Libraries/MD5/XYMD5.m", "Libraries/DES/XYDES.m", "Libraries/AES/*.m"
  s.xcconfig = {"OTHER_LDFLAGS" => "-ObjC"}
end
