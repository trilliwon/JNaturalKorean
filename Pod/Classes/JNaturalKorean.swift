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
    
    internal static let baseCode = 44032
    internal static let choSung = 588
    internal static let jungSung = 28
    
    internal static let choSungList = ["ㄱ", "ㄲ", "ㄴ", "ㄷ", "ㄸ", "ㄹ", "ㅁ", "ㅂ", "ㅃ", "ㅅ", "ㅆ", "ㅇ", "ㅈ", "ㅉ", "ㅊ", "ㅋ", "ㅌ", "ㅍ", "ㅎ"]
    internal static let jungSungList = ["ㅏ", "ㅐ", "ㅑ", "ㅒ", "ㅓ", "ㅔ", "ㅕ", "ㅖ", "ㅗ", "ㅘ", "ㅙ", "ㅚ", "ㅛ", "ㅜ", "ㅝ", "ㅞ", "ㅟ", "ㅠ", "ㅡ", "ㅢ", "ㅣ"]
    internal static let jongSungList = [" ", "ㄱ", "ㄲ", "ㄳ", "ㄴ", "ㄵ", "ㄶ", "ㄷ", "ㄹ", "ㄺ", "ㄻ", "ㄼ", "ㄽ", "ㄾ", "ㄿ", "ㅀ", "ㅁ", "ㅂ", "ㅄ", "ㅅ", "ㅆ", "ㅇ", "ㅈ", "ㅊ", "ㅋ", "ㅌ", "ㅍ", "ㅎ"]
    internal static let engCheckList = ["A", "a", "E", "e", "F", "f", "G", "g", "H", "h", "I", "i", "J", "j", "O", "o", "R", "r", "S", "s", "U", "u", "V", "v", "X", "x", "Y", "y", "Z", "z"]
    
    // MARK: - 이/가
    
    static func get_이_가(word: String) -> String {
        if word.isHangul {
            return (word.isThere종성 ? "이" : "가")
        } else if word.isEnglish {
            return (word.isKindOf받침 ? "이" : "가")
        } else {
            return ""
        }
    }
    
    static func get_이_가_with(word: String) -> String {
        return "\(word)\(get_이_가(word))"
    }
    
    // MARK: - 은/는
    
    static func get_은_는(word: String) -> String {
        if word.isHangul {
            return (word.isThere종성 ? "은" : "는")
        } else if word.isEnglish {
            return (word.isKindOf받침 ? "은" : "는")
        } else {
            return ""
        }
    }
    
    static func get_은_는_with(word: String) -> String {
        return "\(word)\(get_은_는(word))"
    }
    
    // MARK: - 을/를
    
    static func get_을_를(word: String) -> String {
        if word.isHangul {
            return (word.isThere종성 ? "을" : "를")
        } else if word.isEnglish {
            return (word.isKindOf받침 ? "을" : "를")
        } else {
            return ""
        }
    }
    
    static func get_을_를_with(word: String) -> String {
        return "\(word)\(get_을_를(word))"
    }
    
    // MARK: - 으로/로
    
    static func get_으로_로(word: String) -> String {
        if word.isHangul {
            return (word.isㄹ종성 ? "로" : (word.isThere종성 ? "으로" : "로"))
        } else if word.isEnglish {
            return (word.isL ? "로" : (word.isKindOf받침 ? "으로" : "로"))
        } else {
            return ""
        }
    }
    
    static func get_으로_로_with(word: String) -> String {
        return "\(word)\(get_으로_로(word))"
    }
    
    // MARK: - 아/야
    
    static func get_아_야(word: String) -> String {
        if word.isHangul {
            return (word.isThere종성 ? "아" : "야")
        } else if word.isEnglish {
            return (word.isKindOf받침 ? "아" : "야")
        } else {
            return ""
        }
    }
    
    static func get_아_야_with(word: String) -> String {
        return "\(word)\(get_아_야(word))"
    }
    
}

// MARK: - String+JNaturalKorean Internal Util for Hangul

extension String {
    
    internal var isHangul: Bool {
        guard let lastUnicode = self.unicodeScalars.last else {
            return false
        }
        let last = Int(lastUnicode.value)
        return 44032 <= last && last <= 55199
    }
    
    // TODO: Consider Refactoring
    internal var isThere종성: Bool {
        let cBase = Int((String(self.characters.last!).unicodeScalars.first?.value)!) - JNaturalKorean.baseCode
        
        let cs = (cBase / JNaturalKorean.choSung)
        let jus = (cBase - (JNaturalKorean.choSung * cs)) / JNaturalKorean.jungSung
        let jos = (cBase - (JNaturalKorean.choSung * cs) - (JNaturalKorean.jungSung * jus))
        
        JNaturalKorean.jongSungList[jos]
        
        if JNaturalKorean.jongSungList[jos] == " " {
            return false
        }
        
        return true
    }
    
    // TODO: - Consider Refactoring
    internal var isㄹ종성: Bool {
        let cBase = Int((String(self.characters.last!).unicodeScalars.first?.value)!) - JNaturalKorean.baseCode
        
        let cs = cBase / JNaturalKorean.choSung
        let jus = (cBase - (JNaturalKorean.choSung * cs)) / JNaturalKorean.jungSung
        let jos = (cBase - (JNaturalKorean.choSung * cs) - (JNaturalKorean.jungSung * jus))
        
        JNaturalKorean.choSungList[cs]
        JNaturalKorean.jungSungList[jus]
        JNaturalKorean.jongSungList[jos]
        
        if JNaturalKorean.jongSungList[jos] == "ㄹ" {
            return true
        }
        
        return false
    }
    
}

// MARK: - String+JNaturalKorean Internal Util for English

internal enum 영어받침: String {
    
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
    
    internal var isEnglish: Bool {
        guard let lastUnicode = self.unicodeScalars.last else {
            return false
        }
        let last = Int(lastUnicode.value)
        return (65 <= last && last <= 90) || (97 <= last && last <= 122)
    }
    
    internal var lastTwoCharString: String {
        return self.characters.suffix(2).map { char in return String(char) }.reduce("", combine: +)
    }
    
    internal var isKindOf받침: Bool {
        guard let 영어받침 = 영어받침(rawValue: self.lastTwoCharString.uppercaseString) else {
            return !JNaturalKorean.engCheckList.contains(String(self.characters.last!))
        }
        switch 영어받침 {
        case .NG, .LE, .ME:
            return true
        case .ND, .ED, .LT, .ST, .LD, .RD:
            return false
        }
    }
    
    // TODO: - Consider Refactoring
    internal var isL: Bool {
        let value = Int((String(self.characters.last!).unicodeScalars.first?.value)!)
        if value == 76 || value == 108 {
            return true
        }
        return false
    }
    
}
