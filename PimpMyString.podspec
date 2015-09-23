Pod::Spec.new do |s|
  s.name = 'PimpMyString'
  s.version = '1.1.0'
  s.license = 'New BSD License'
  s.summary = 'iOS/MacOS functional wrapper around NSAttributedString.'
  s.homepage = 'https://github.com/notbenoit/PimpMyString'
  s.social_media_url = 'http://twitter.com/notbenoit'
  s.authors = { 'Benoit Layer' => 'benoit.layer@gmail.com' }
  s.source = { :git => 'https://github.com/notbenoit/PimpMyString.git', :tag => s.version }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'

  s.source_files = 'Source/Common/*.swift'
  s.ios.source_files = 'Source/iOS/*.swift'
  s.osx.source_files = 'Source/OSX/*.swift'

  s.requires_arc = true

  s.module_name = 'PMS'
end
