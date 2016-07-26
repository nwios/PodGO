Pod::Spec.new do |s|
  s.name             = 'PodGO'
  s.version          = '0.1.0'
  s.summary          = 'A PodGO help me to init private pod.'
  s.homepage         = 'https://github.com/nwios/PodGO.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Nawaf Aldosari' => 'nawafd@outlook.sa' }
  s.source           = { :git => 'https://github.com/nwios/PodGO.git', :tag => s.version }
  s.social_media_url = 'https://twitter.com/nwios'
  s.ios.deployment_target = '8.0'
  s.source_files = 'PodGO/Classes/**/*'
end
