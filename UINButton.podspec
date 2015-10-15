Pod::Spec.new do |s|


  s.name         = "UINButton"
  s.version      = "0.0.1"
  s.summary      = "An alternative UIButton highly customizable"

  s.description  = <<-DESC
        Carlos is a small set of classes, global functions and convenience operators to realize custom, flexible and powerful cache layers in your iOS, Watch OS 2, tvOS and Mac OS X applications.
                   DESC

  s.homepage     = "https://github.com/HaraldBregu/UINButton"

  s.license      = "MIT"


  s.author             = { "Harald " => "harald.bregu@gmail.com" }

  s.ios.platform = :ios, "8.0"
  s.ios.deployment_target = '8.0'


  s.source       = { :git => "https://github.com/HaraldBregu/UINButton.git", :commit => "c7a796bc4427c3fec580afe50ae440c8132c67c7" }


  s.source_files  = "UINButton", "UINButton/UINButton/*.{h,m}"

end
