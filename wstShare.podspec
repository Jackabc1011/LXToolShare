Pod::Spec.new do |s|
  s.name             = 'wstShare'
  s.version          = '0.0.1'
  s.summary          = 'A short description of wstShare.'
  
  s.description      = <<-DESC
  专用🎁
  DESC
  
  s.homepage         = 'https://github.com/Jackabc1011/wstShare'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Jackabc1011' => '1637718985@qq.com' }
  s.source           = { :git => 'https://github.com/Jackabc1011/wstShare.git', :tag => s.version.to_s }
  
  s.ios.deployment_target = '12.0'
  
  s.source_files = 'wstShare/Classes/**/*'
end
