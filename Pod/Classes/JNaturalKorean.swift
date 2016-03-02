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
  
  public func getWith주격조사_이_가(word: String) -> String {
    return getWith주격조사(word)
  }
  
  // 주격조사 : 이/가 [ex: 그사람이, 내가]
  public func getWith주격조사(word: String) -> String {
    if isHangul(word) {
      if isThere종성(word) {
        return "\(word)이"
      }else {
        return "\(word)가"
      }
    }
    return ""
  }
  
  public func getWith보조사_은_는(word: String) -> String{
    return getWith보조사(word)
  }
  
  // 보조사 : 은/는 [ex: 그사람은, 나는]
  public func getWith보조사(word: String) -> String {
    if isHangul(word) {
      if isThere종성(word) {
        return "\(word)은"
      }else {
        return "\(word)는"
      }
    }
    return ""
  }
  
  public func getWith목적격조사_을_를(word: String) -> String{
    return getWith목적격조사(word)
  }
  
  // 목적격조사 : 을/를 [ex: 그사람을, 나를]
  public func getWith목적격조사(word: String) -> String {
    if isHangul(word) {
      if isThere종성(word) {
        return "\(word)을"
      }else {
        return "\(word)를"
      }
    }
    return ""
  }
  
  public func getWith보격조사_이_가(word: String) -> String {
    return getWith보격조사(word)
  }
  
  // 보격조사 : 이/가 [ex: 그사람이, 내가]
  public func getWith보격조사(word: String) -> String {
    return self.getWith주격조사(word)
  }
  
  public func getWith부사격조사_으로_로(word: String) ->String {
    return getWith부사격조사(word)
  }
  
  // 부사격조사 : 으로/로 [ex: 집으로, 학교로, *오늘로]
  public func getWith부사격조사(word: String) -> String {
    if isHangul(word) {
      if isㄹ종성(word) {
        return "\(word)로"
      }else {
        if isThere종성(word) {
          return "\(word)으로"
        }else {
          return "\(word)로"
        }
      }
    }
    return ""
  }
  
  public func getWith호격조사_아_야(word: String) -> String {
    return getWith호격조사(word)
  }
  
  // 호격조사: 아/야 [ex: 이사람아, 영희야]
  public func getWith호격조사(word: String) -> String {
    if isHangul(word) {
      if isThere종성(word) {
        return "\(word)아"
      }else {
        return "\(word)야"
      }
    }
    return ""
  }
  
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
}