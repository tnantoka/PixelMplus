Pod::Spec.new do |s|
  s.name             = 'PixelMplus'
  s.version          = '0.1.0'
  s.summary          = 'PixelMplus Fonts.'
  s.description      = <<-DESC
The helper library to use PixelMplus fonts.
                       DESC
  s.homepage         = 'https://github.com/tnantoka/PixelMplus'
  s.license          = { :type => 'M+ FONTS', :file => 'LICENSE' }
  s.author           = { 'tnantoka' => 'tnantoka@bornneet.com' }
  s.source           = { :git => 'https://github.com/tnantoka/PixelMplus.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/tnantoka'

  s.ios.deployment_target = '9.0'

  s.source_files = 'PixelMplus/Classes/**/*'
  
  s.resource_bundles = {
    'PixelMplus' => ['PixelMplus/Assets/**/*']
  }
end
