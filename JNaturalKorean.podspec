Pod::Spec.new do |s|
  s.name             = 'JNaturalKorean'
  s.version          = '1.2.1'
  s.pod_target_xcconfig = {
    'SWIFT_VERSION' => '4.2'
  }

  s.summary          = '단어에 따라 정확한 한글 조사를 붙여줍니다. \"아이폰(을)를\" 대신 \"아이폰을\" 로 완벽하게 구현하세요.'
  s.homepage         = 'https://github.com/trilliwon/JNaturalKorean'
  s.license          = 'MIT'
  s.author           = { "trillione" => "trilliwon@gmail.com" }
  s.source           = { :git => "https://github.com/trilliwon/JNaturalKorean.git", branch:"master", :tag => s.version.to_s }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Source/*'
  
end

