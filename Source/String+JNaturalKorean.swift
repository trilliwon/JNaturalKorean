import Foundation



// MARK: - String+JNaturalKorean Public Convenient API

extension String {
  
  // MARK: - 이/가
  public var 이_가: String {
    return JNaturalKorean.get_이_가_with(word: self)
  }
  
  public var 이_가_only: String {
    return JNaturalKorean.get_이_가(word: self)
  }
  
  
  // MARK: - 은/는
  public var 은_는: String {
    return JNaturalKorean.get_은_는_with(word: self)
  }
  
  public var 은_는_only: String {
    return JNaturalKorean.get_은_는(word: self)
  }
  
  
  // MARK: - 을/를
  public var 을_를: String {
    return JNaturalKorean.get_을_를_with(word: self)
  }
  
  public var 을_를_only: String {
    return JNaturalKorean.get_을_를(word: self)
  }
  
  
  // MARK: - 으로/로
  public var 으로_로: String {
    return JNaturalKorean.get_으로_로_with(word: self)
  }
  
  public var 으로_로_only: String {
    return JNaturalKorean.get_으로_로(word: self)
  }
  
  
  // MARK: - 아/야
  public var 아_야: String {
    return JNaturalKorean.get_아_야_with(word: self)
  }
  
  public var 아_야_only: String {
    return JNaturalKorean.get_아_야(word: self)
  }
  
  
  // MARK: - 와/과
  public var 와_과: String {
    return JNaturalKorean.get_와_과_with(word: self)
  }
  
  public var 와_과_only: String {
    return JNaturalKorean.get_와_과(word: self)
  }
}
