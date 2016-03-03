//
//  ViewController.swift
//  JNaturalKorean
//
//  Created by Trillione on 2016. 3. 2..
//  Copyright © 2016년 Trillione. All rights reserved.
//
import Foundation

public class JNaturalKorean: NSObject {
  
  let baseCode = 44032
  let choSung = 588
  let jungSung = 28
  
  public override init(){
    super.init()
  }
  
  // 초성리스트 00~18
  let choSungList = ["ㄱ", "ㄲ", "ㄴ", "ㄷ", "ㄸ", "ㄹ", "ㅁ", "ㅂ", "ㅃ", "ㅅ", "ㅆ", "ㅇ", "ㅈ", "ㅉ", "ㅊ", "ㅋ", "ㅌ", "ㅍ", "ㅎ"]
  // 중성리스트 00~20
  let jungSungList = ["ㅏ", "ㅐ", "ㅑ", "ㅒ", "ㅓ", "ㅔ", "ㅕ", "ㅖ", "ㅗ", "ㅘ", "ㅙ", "ㅚ", "ㅛ", "ㅜ", "ㅝ", "ㅞ", "ㅟ", "ㅠ", "ㅡ", "ㅢ", "ㅣ"]
  // 종성리스트 00~27 + 1 (1개 없음)
  let jongSungList = [" ", "ㄱ", "ㄲ", "ㄳ", "ㄴ", "ㄵ", "ㄶ", "ㄷ", "ㄹ", "ㄺ", "ㄻ", "ㄼ", "ㄽ", "ㄾ", "ㄿ", "ㅀ", "ㅁ", "ㅂ", "ㅄ", "ㅅ", "ㅆ", "ㅇ", "ㅈ", "ㅊ", "ㅋ", "ㅌ", "ㅍ", "ㅎ"]
  
  // 한글 발음으로 받침이 없는 영어 자모
  let engCheckList = ["A", "a", "E", "e", "F", "f", "G", "g", "H", "h", "I", "i", "J", "j", "O", "o", "R", "r", "S", "s", "U", "u", "V", "v", "X", "x", "Y", "y", "Z", "z"]
  
  // 영어단어 어미: ng nt, le, me, nd, che, ed, lt, st, ld

  // MARK: - 주격조사 : 이/가 [ex: 그사람이, 내가]
  public func getWith주격조사_이_가(word: String) -> String {
    return getWith주격조사(word)
  }
  
  public func get주격조사(word: String) -> String {
    if isHangul(word) {
      if isThere종성(word) {
        return "이"
      }else {
        return "가"
      }
    }else if isEnglish(word) {
      if isKindOf받침(word) {
        return "이"
      }else {
        return "가"
      }
    }
    return ""
  }
  
  public func getWith주격조사(word: String) -> String {
    return word+get주격조사(word)
  }
  
  // MARK: - 보조사 : 은/는 [ex: 그사람은, 나는]
  public func getWith보조사_은_는(word: String) -> String{
    return getWith보조사(word)
  }
  
  public func get보조사(word: String) -> String {
    if isHangul(word) {
      if isThere종성(word) {
        return "은"
      }else {
        return "는"
      }
    }else if isEnglish(word) {
      if isKindOf받침(word) {
        return "은"
      }else {
        return "는"
      }
    }
    return ""
  }
  
  public func getWith보조사(word: String) -> String {
    return word+get보조사(word)
  }
  
  // MARK: - 목적격조사 : 을/를 [ex: 그사람을, 나를]
  public func getWith목적격조사_을_를(word: String) -> String{
    return getWith목적격조사(word)
  }
  
  public func get목적격조사(word: String) -> String {
    if isHangul(word) {
      if isThere종성(word) {
        return "을"
      }else {
        return "를"
      }
    }else if isEnglish(word) {
      if isKindOf받침(word) {
        return "을"
      }else {
        return "를"
      }
    }
    return ""
  }
  
  public func getWith목적격조사(word: String) -> String {
    return word+get목적격조사(word)
  }
  
  // MARK: - 보격조사 : 이/가 [ex: 그사람이, 내가]
  public func getWith보격조사_이_가(word: String) -> String {
    return getWith보격조사(word)
  }
  
  public func get보격조사(word: String) -> String {
    return get주격조사(word)
  }
  
  public func getWith보격조사(word: String) -> String {
    return self.getWith주격조사(word)
  }
  
  // MARK: - 부사격조사 : 으로/로 [ex: 집으로, 학교로, *오늘로]
  public func getWith부사격조사_으로_로(word: String) ->String {
    return getWith부사격조사(word)
  }
  
  public func get부사격조사(word: String) -> String {
    if isHangul(word) {
      if isㄹ종성(word) {
        return "로"
      }else {
        if isThere종성(word) {
          return "으로"
        }else {
          return "로"
        }
      }
    }else if isEnglish(word) {
      if isL(word) {
        return "로"
      }else {
        if isKindOf받침(word) {
          return "으로"
        }else {
          return "로"
        }
      }
    }
    return ""
  }
  
  public func getWith부사격조사(word: String) -> String {
    return word+get부사격조사(word)
  }
  
  // MARK: - 호격조사: 아/야 [ex: 이사람아, 영희야]
  public func getWith호격조사_아_야(word: String) -> String {
    return getWith호격조사(word)
  }
  
  public func get호격조사(word: String) -> String {
    if isHangul(word) {
      if isThere종성(word) {
        return "아"
      }else {
        return "야"
      }
    }else if isEnglish(word) {
      if isKindOf받침(word) {
        return "아"
      }else {
        return "야"
      }
    }
    return ""
  }
  
  public func getWith호격조사(word: String) -> String {
    return word+get호격조사(word)
  }
  
  // MARK: - Hangul Heler Methods
  func isHangul(word: String) -> Bool {
    if Int((word.unicodeScalars.last?.value)!) >= 44032 && Int((word.unicodeScalars.last?.value)!) <= 55199{
      return true
    }
    return false
  }
  
  func isㄹ종성(word: String) -> Bool {
    let cBase = Int((String(word.characters.last!).unicodeScalars.first?.value)!) - baseCode
    
    let cs = cBase / choSung
    let jus = (cBase - (choSung * cs)) / jungSung
    let jos = (cBase - (choSung * cs) - (jungSung * jus))
    
    choSungList[cs]
    jungSungList[jus]
    jongSungList[jos]
    
    if jongSungList[jos] == "ㄹ" {
      return true
    }
    return false
  }
  
  func isThere종성(word: String) -> Bool {
    let cBase = Int((String(word.characters.last!).unicodeScalars.first?.value)!) - baseCode
    
    let cs = (cBase / choSung)
    let jus = (cBase - (choSung * cs)) / jungSung
    let jos = (cBase - (choSung * cs) - (jungSung * jus))
    
    jongSungList[jos]
    
    if jongSungList[jos] == " " {
      return false
    }
    return true
  }
  
  // MARK: - Eng Helper Methods
  func isEnglish(word: String) -> Bool {
    let unicodeValue:Int = Int((word.unicodeScalars.last?.value)!)
    if (unicodeValue >= 65 && unicodeValue <= 90) || (unicodeValue >= 97 && unicodeValue <= 122){
      return true
    }
    return false
  }
  
  func isL(word: String) -> Bool {
    let value = Int((String(word.characters.last!).unicodeScalars.first?.value)!)
    if value == 76 || value == 108 {
      return true
    }
    return false
  }
  
  func isKindOf받침(word: String) -> Bool {
    if word.characters.count > 2 {
      // 받침으로
      if isEndWithNG(word) {
        return true
      }
      if isEndWithLE(word) {
        return true
      }
      
      if isEndWithME(word) {
        return true
      }
      
      //받침 없음으로
      if isEndWithND(word) {
        return false
      }
      
      if isEndWithED(word) {
        return false
      }
      
      if isEndWithLT(word) {
        return false
      }
      
      if isEndWithST(word) {
        return false
      }
      
      if isEndWithLD(word) {
        return false
      }
    }
    return !engCheckList.contains(String(word.characters.last!))
  }
  
  func getLastTwoCharacterString(word: String) -> String {
    var charArray = [String]()
    
    for c in word.characters{
      charArray.append(String(c))
    }
    return "\(charArray[charArray.count-2])\(charArray.last!)"
  }
  
  // 받침으로
  func isEndWithNG(word: String) -> Bool {
    let t = getLastTwoCharacterString(word)
    if  t == "NG" || t == "ng" {
      return true
    }
    return false
  }
  
  // 받침으로
  func isEndWithLE(word: String) -> Bool {
    let t = getLastTwoCharacterString(word)
    if  t == "LE" || t == "le" {
      return true
    }
    return false
  }
  
  // 받침으로
  func isEndWithME(word: String) -> Bool {
    let t = getLastTwoCharacterString(word)
    if  t == "ME" || t == "me" {
      return true
    }
    return false
  }
  
  // 받침 없음으로
  func isEndWithND(word: String) -> Bool {
    let t = getLastTwoCharacterString(word)
    if  t == "ND" || t == "nd" {
      return true
    }
    return false
  }
  
  // 받침 없음으로
  func isEndWithED(word: String) -> Bool {
    let t = getLastTwoCharacterString(word)
    if  t == "ED" || t == "ed" {
      return true
    }
    return false
  }
  
  // 받침 없음으로
  func isEndWithLT(word: String) -> Bool {
    let t = getLastTwoCharacterString(word)
    if  t == "LT" || t == "lt" {
      return true
    }
    return false
  }
  
  // 받침 없음으로
  func isEndWithST(word: String) -> Bool {
    let t = getLastTwoCharacterString(word)
    if  t == "ST" || t == "st" {
      return true
    }
    return false
  }
  
  // 받침 없음으로
  func isEndWithLD(word: String) -> Bool {
    let t = getLastTwoCharacterString(word)
    if  t == "LD" || t == "ld" {
      return true
    }
    return false
  }
}
