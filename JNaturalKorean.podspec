Pod::Spec.new do |s|
  s.name             = 'JNaturalKorean'
  s.version          = '1.2.0'
  s.pod_target_xcconfig = {
    'SWIFT_VERSION' => '4.0'
  }

  s.summary          = 'This supports to set Natural Korean Sentences.'
  s.homepage         = 'https://github.com/trilliwon/JNaturalKorean'
  s.license          = 'MIT'
  s.author           = { "trillione" => "trilliwon@gmail.com" }
  s.source           = { :git => "https://github.com/trilliwon/JNaturalKorean.git", branch:"master", :tag => s.version.to_s }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Source/*'
  
end

