Pod::Spec.new do |s|

  s.name = "UINButton"
  s.version = "0.0.1"
  s.summary = "An alternative UIButton highly customizable"
  s.description  = <<-DESC
                    UINButton is an alternative of UIButton designed by Apple. You can simply use the storyboard to change the color, fontname, size, border
                   DESC
  s.homepage = "https://github.com/HaraldBregu/UINButton"
  s.license      = "MIT"
  s.author = { 
    'Harald' => 'harald.bregu@gmail.com' 
  }
  s.source_files = "UINButton/UINButton/*.{h,m}"
  s.source = {
    :git => 'https://github.com/HaraldBregu/UINButton.git',
    :tag => s.version.to_s
  }
  s.ios.platform = :ios, "9.0"
  s.ios.deployment_target = '8.0'
  s.requires_arc = true
  s.ios.source_files = 'UINButton/UINButton/*.{h,m}'

end
