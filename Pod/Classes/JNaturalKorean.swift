//
//  ViewController.swift
//  JNaturalKorean
//
//  Created by Trillione on 2016. 3. 2..
//  Copyright © 2016년 Trillione. All rights reserved.
//

import Foundation

// MARK: - JNaturalKorean Public API

public class JNaturalKorean {
    
    static let baseCode = 44032
    static let choSung = 588
    static let jungSung = 28
    
    static let choSungList = ["ㄱ", "ㄲ", "ㄴ", "ㄷ", "ㄸ", "ㄹ", "ㅁ", "ㅂ", "ㅃ", "ㅅ", "ㅆ", "ㅇ", "ㅈ", "ㅉ", "ㅊ", "ㅋ", "ㅌ", "ㅍ", "ㅎ"]
    static let jungSungList = ["ㅏ", "ㅐ", "ㅑ", "ㅒ", "ㅓ", "ㅔ", "ㅕ", "ㅖ", "ㅗ", "ㅘ", "ㅙ", "ㅚ", "ㅛ", "ㅜ", "ㅝ", "ㅞ", "ㅟ", "ㅠ", "ㅡ", "ㅢ", "ㅣ"]
    static let jongSungList = [" ", "ㄱ", "ㄲ", "ㄳ", "ㄴ", "ㄵ", "ㄶ", "ㄷ", "ㄹ", "ㄺ", "ㄻ", "ㄼ", "ㄽ", "ㄾ", "ㄿ", "ㅀ", "ㅁ", "ㅂ", "ㅄ", "ㅅ", "ㅆ", "ㅇ", "ㅈ", "ㅊ", "ㅋ", "ㅌ", "ㅍ", "ㅎ"]
    static let engCheckList = ["A", "a", "E", "e", "F", "f", "G", "g", "H", "h", "I", "i", "J", "j", "O", "o", "R", "r", "S", "s", "U", "u", "V", "v", "X", "x", "Y", "y", "Z", "z"]
    
    static var instance: JNaturalKorean = JNaturalKorean()
    
    // MARK: - 이/가
    
    static func get_이_가_with(word: String) -> String {
        if word.isHangul {
            return "\(word)\(word.isThere종성 ? "이" : "가")"
        } else if word.isEnglish {
            return "\(word)\(word.isKindOf받침 ? "이" : "가")"
        } else {
            return word
        }
    }
    
    // MARK: - 은/는
    
    static func get_은_는_with(word: String) -> String {
        if word.isHangul {
            return "\(word)\(word.isThere종성 ? "은" : "는")"
        } else if word.isEnglish {
            return "\(word)\(word.isKindOf받침 ? "은" : "는")"
        } else {
            return word
        }
    }
    
    // MARK: - 을/를
    
    static func get_을_를_with(word: String) -> String {
        if word.isHangul {
            return "\(word)\(word.isThere종성 ? "을" : "를")"
        } else if word.isEnglish {
            return "\(word)\(word.isKindOf받침 ? "을" : "를")"
        } else {
            return word
        }
    }
    
    // MARK: - 으로/로
    
    static func get_으로_로_with(word: String) -> String {
        if word.isHangul {
            return "\(word)\(word.isㄹ종성 ? "로" : (word.isThere종성 ? "으로" : "로"))"
        }
        else if word.isEnglish {
            return "\(word)\(word.isL ? "로" : (word.isKindOf받침 ? "으로" : "로"))"
        }
        else {
            return word
        }
    }
    
    // MARK: - 아/야
    
    static func get_아_야_with(word: String) -> String {
        if word.isHangul {
            return "\(word)\(word.isThere종성 ? "아" : "야")"
        } else if word.isEnglish {
            return "\(word)\(word.isKindOf받침 ? "아" : "야")"
        } else {
            return word
        }
    }
    
}

// MARK: - Constants

let baseCode = 44032
let choSung = 588
let jungSung = 28

let choSungList = ["ㄱ", "ㄲ", "ㄴ", "ㄷ", "ㄸ", "ㄹ", "ㅁ", "ㅂ", "ㅃ", "ㅅ", "ㅆ", "ㅇ", "ㅈ", "ㅉ", "ㅊ", "ㅋ", "ㅌ", "ㅍ", "ㅎ"]
let jungSungList = ["ㅏ", "ㅐ", "ㅑ", "ㅒ", "ㅓ", "ㅔ", "ㅕ", "ㅖ", "ㅗ", "ㅘ", "ㅙ", "ㅚ", "ㅛ", "ㅜ", "ㅝ", "ㅞ", "ㅟ", "ㅠ", "ㅡ", "ㅢ", "ㅣ"]
let jongSungList = [" ", "ㄱ", "ㄲ", "ㄳ", "ㄴ", "ㄵ", "ㄶ", "ㄷ", "ㄹ", "ㄺ", "ㄻ", "ㄼ", "ㄽ", "ㄾ", "ㄿ", "ㅀ", "ㅁ", "ㅂ", "ㅄ", "ㅅ", "ㅆ", "ㅇ", "ㅈ", "ㅊ", "ㅋ", "ㅌ", "ㅍ", "ㅎ"]
let engCheckList = ["A", "a", "E", "e", "F", "f", "G", "g", "H", "h", "I", "i", "J", "j", "O", "o", "R", "r", "S", "s", "U", "u", "V", "v", "X", "x", "Y", "y", "Z", "z"]

// MARK: - String+JNaturalKorean Internal Util for Hangul

extension String {
    
    var isHangul: Bool {
        guard let lastUnicode = self.unicodeScalars.last else {
            return false
        }
        let last = Int(lastUnicode.value)
        return 44032 <= last && last <= 55199
    }
    
    // TODO: Need Refactoring
    var isThere종성: Bool {
        let cBase = Int((String(self.characters.last!).unicodeScalars.first?.value)!) - baseCode
        
        let cs = (cBase / choSung)
        let jus = (cBase - (choSung * cs)) / jungSung
        let jos = (cBase - (choSung * cs) - (jungSung * jus))
        
        jongSungList[jos]
        
        if jongSungList[jos] == " " {
            return false
        }
        
        return true
    }
    
    // TODO: - Need Refactoring
    var isㄹ종성: Bool {
        let cBase = Int((String(self.characters.last!).unicodeScalars.first?.value)!) - baseCode
        
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
    
}

// MARK: - String+JNaturalKorean Internal Util for English

enum 영어받침: String {
    
    case NG = "NG"
    case LE = "LE"
    case ME = "ME"
    case ND = "ND"
    case ED = "ED"
    case LT = "LT"
    case ST = "ST"
    case RD = "RD"
    case LD = "LD"
    
}

extension String {
    
    var isEnglish: Bool {
        guard let lastUnicode = self.unicodeScalars.last else {
            return false
        }
        let last = Int(lastUnicode.value)
        return (65 <= last && last <= 90) || (97 <= last && last <= 122)
    }
    
    var lastTwoCharString: String {
        return self.characters.suffix(2).map { char in return String(char) }.reduce("", combine: +)
    }
    
    var isKindOf받침: Bool {
        guard let 영어받침 = 영어받침(rawValue: self.lastTwoCharString.uppercaseString) else {
            return !engCheckList.contains(String(self.characters.last!))
        }
        switch 영어받침 {
        case .NG, .LE, .ME:
            return true
        case .ND, .ED, .LT, .ST, .LD, .RD:
            return false
        }
    }
    
    // TODO: - Need Refactoring
    var isL: Bool {
        let value = Int((String(self.characters.last!).unicodeScalars.first?.value)!)
        if value == 76 || value == 108 {
            return true
        }
        return false
    }
    
}
