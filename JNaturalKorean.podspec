Pod::Spec.new do |s|
  s.name             = 'JNaturalKorean'
  s.version          = '2.0.0'
  s.swift_version    = '5.2'
  s.summary          = '단어에 따라 정확한 한글 조사를 붙여줍니다. \"아이폰(을)를\" 대신 \"아이폰을\" 로 완벽하게 구현하세요.'
  s.homepage         = 'https://github.com/trilliwon/JNaturalKorean'
  s.license          = 'MIT'
  s.author           = { "trillione" => "trilliwon@gmail.com" }
  s.source           = { :git => "https://github.com/trilliwon/JNaturalKorean.git", branch:"master", :tag => s.version.to_s }

  s.platform     = :ios, '11.0'
  s.requires_arc = true

  s.source_files = 'Sources/JNaturalKorean/*'
  
end

