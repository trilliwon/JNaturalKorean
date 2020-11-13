//
//  Created by trilliwon on 2016. 3. 2..
//  Copyright © 2016년 trilliwon. All rights reserved.
//
import Foundation

// MARK: - JNaturalKorean Public API
open class JNaturalKorean {

    // 한글 unicode
    fileprivate static let baseCode = 44032
    fileprivate static let choSung = 588 // 초성
    fileprivate static let jungSung = 28 // 중성

    // 초성 list
    fileprivate static let choSungList = ["ㄱ", "ㄲ", "ㄴ", "ㄷ", "ㄸ", "ㄹ", "ㅁ", "ㅂ", "ㅃ", "ㅅ", "ㅆ", "ㅇ", "ㅈ", "ㅉ", "ㅊ", "ㅋ", "ㅌ", "ㅍ", "ㅎ"]

    // 중성 list
    fileprivate static let jungSungList = ["ㅏ", "ㅐ", "ㅑ", "ㅒ", "ㅓ", "ㅔ", "ㅕ", "ㅖ", "ㅗ", "ㅘ", "ㅙ", "ㅚ", "ㅛ", "ㅜ", "ㅝ", "ㅞ", "ㅟ", "ㅠ", "ㅡ", "ㅢ", "ㅣ"]

    // 종성 list
    fileprivate static let jongSungList = [" ", "ㄱ", "ㄲ", "ㄳ", "ㄴ", "ㄵ", "ㄶ", "ㄷ", "ㄹ", "ㄺ", "ㄻ", "ㄼ", "ㄽ", "ㄾ", "ㄿ", "ㅀ", "ㅁ", "ㅂ", "ㅄ", "ㅅ", "ㅆ", "ㅇ", "ㅈ", "ㅊ", "ㅋ", "ㅌ", "ㅍ", "ㅎ"]

    // english list
    fileprivate static let engCheckList = ["A", "a", "E", "e", "F", "f", "G", "g", "H", "h", "I", "i", "J", "j", "O", "o", "R", "r", "S", "s", "U", "u", "V", "v", "X", "x", "Y", "y", "Z", "z"]


    // MARK: - 이/가
    // ex) - 그 사람**이** 소크라테스 입니다.
    // ex) - 그 프로그래머**가** 실력자 입니다.
    open class func get_이_가(word: String) -> String {
        if word.isHangul {
            return (word.isThere종성 ? "이" : "가")
        } else if word.isEnglish {
            return (word.isKindOf받침 ? "이" : "가")
        } else if word.isEndWithNumber {
            return (word.isKineOf받침Number ? "이" : "가")
        }else {
            return ""
        }
    }

    open class func get_이_가_with(word: String) -> String {
        return "\(word)\(get_이_가(word: word))"
    }



    // MARK: - 은/는
    // ex) - 그 사람**은** 소크라테스 입니다.
    // ex) - 그 프로그래머**는** 실력자 입니다.
    open class func get_은_는(word: String) -> String {
        if word.isHangul {
            return (word.isThere종성 ? "은" : "는")
        } else if word.isEnglish {
            return (word.isKindOf받침 ? "은" : "는")
        } else if word.isEndWithNumber {
            return (word.isKineOf받침Number ? "은" : "는")
        }else {
            return ""
        }
    }

    open class func get_은_는_with(word: String) -> String {
        return "\(word)\(get_은_는(word: word))"
    }



    // MARK: - 을/를
    // ex) - 그 사람**을** 채용합시다.
    // ex) - 그 프로그래머**를** 채용합시다.
    open class func get_을_를(word: String) -> String {
        if word.isHangul {
            return (word.isThere종성 ? "을" : "를")
        } else if word.isEnglish {
            return (word.isKindOf받침 ? "을" : "를")
        } else if word.isEndWithNumber {
            return (word.isKineOf받침Number ? "을" : "를")
        }else {
            return ""
        }
    }

    open class func get_을_를_with(word: String) -> String {
        return "\(word)\(get_을_를(word: word))"
    }



    // MARK: - 으로/로
    // ex) - 그 사람**으로** 보여지다.
    // ex) - 그 프로그래머**로** 보여지다.
    open class func get_으로_로(word: String) -> String {
        if word.isHangul {
            return (word.isㄹ종성 ? "로" : (word.isThere종성 ? "으로" : "로"))
        } else if word.isEnglish {
            return (word.isL ? "로" : (word.isKindOf받침 ? "으로" : "로"))
        } else if word.isEndWithNumber {
            return (word.isOne ? "로" : (word.isKineOf받침Number ? "으로" : "로"))
        }else {
            return ""
        }
    }

    open class func get_으로_로_with(word: String) -> String {
        return "\(word)\(get_으로_로(word: word))"
    }


    // MARK: - 아/야
    // ex) - 이 인간**아**!.
    // ex) - 이 여자**야**!.
    open class func get_아_야(word: String) -> String {
        if word.isHangul {
            return (word.isThere종성 ? "아" : "야")
        } else if word.isEnglish {
            return (word.isKindOf받침 ? "아" : "야")
        } else if word.isEndWithNumber {
            return (word.isKineOf받침Number ? "아" : "야")
        }else {
            return ""
        }
    }

    open class func get_아_야_with(word: String) -> String {
        return "\(word)\(get_아_야(word: word))"
    }



    // MARK: - 와/과
    // ex) - 그 여자**와** 단둘이.
    // ex) - 이 사람**과** 둘이서.
    open class func get_와_과(word: String) -> String {
        if word.isHangul {
            return (word.isThere종성 ? "과" : "와")
        } else if word.isEnglish {
            return (word.isKindOf받침 ? "과" : "와")
        } else if word.isEndWithNumber {
            return (word.isKineOf받침Number ? "과" : "와")
        }else {
            return ""
        }
    }

    open class func get_와_과_with(word: String) -> String {
        return "\(word)\(get_와_과(word: word))"
    }
}



// MARK: - String+JNaturalKorean Private Utils for 한글
extension String {

    fileprivate var isHangul: Bool {
        guard let lastUnicode = self.unicodeScalars.last else {
            return false
        }
        let last = Int(lastUnicode.value)
        return 44032 <= last && last <= 55199
    }

    fileprivate var isThere종성: Bool {
        let cBase = Int((String(self.last!).unicodeScalars.first?.value)!) - JNaturalKorean.baseCode

        let cs = (cBase / JNaturalKorean.choSung)
        let jus = (cBase - (JNaturalKorean.choSung * cs)) / JNaturalKorean.jungSung
        let jos = (cBase - (JNaturalKorean.choSung * cs) - (JNaturalKorean.jungSung * jus))

        return (JNaturalKorean.jongSungList[jos] != " ")
    }

    fileprivate var isㄹ종성: Bool {
        let cBase = Int((String(self.last!).unicodeScalars.first?.value)!) - JNaturalKorean.baseCode

        let cs = cBase / JNaturalKorean.choSung
        let jus = (cBase - (JNaturalKorean.choSung * cs)) / JNaturalKorean.jungSung
        let jos = (cBase - (JNaturalKorean.choSung * cs) - (JNaturalKorean.jungSung * jus))

        return (JNaturalKorean.jongSungList[jos] == "ㄹ")
    }
}

// MARK: - String+JNaturalKorean Private Util for English
private enum 영어받침: String {

    case NG = "NG"
    case LE = "LE"
    case ME = "ME"
    case ND = "ND"
    case ED = "ED"
    case LT = "LT"
    case ST = "ST"
    case RD = "RD"
    case LD = "LD"
    case PE = "PE"
}

extension String {

    fileprivate var isEnglish: Bool {
        guard let lastUnicode = self.unicodeScalars.last else {
            return false
        }
        let last = Int(lastUnicode.value)
        return (65 <= last && last <= 90) || (97 <= last && last <= 122)
    }

    fileprivate var lastTwoCharString: String {
        return self.suffix(2).map { char in return String(char) }.reduce("", +)
    }

    fileprivate var isKindOf받침: Bool {
        guard let 영어받침 = 영어받침(rawValue: self.lastTwoCharString.uppercased()) else {
            return !JNaturalKorean.engCheckList.contains(String(self.last!))
        }
        switch 영어받침 {
        case .NG, .LE, .ME, .PE:
            return true
        case .ND, .ED, .LT, .ST, .LD, .RD:
            return false
        }
    }

    fileprivate var isL: Bool {
        let value = Int((String(self.last!).unicodeScalars.first?.value)!)
        return (value == 76 || value == 108)
    }
}

// MARK: - String+JNaturalKorean Private Util for Number
enum Number: String {
    case zero  = "0"
    case one   = "1"
    case two   = "2"
    case three = "3"
    case four  = "4"
    case five  = "5"
    case six   = "6"
    case seven = "7"
    case eight = "8"
    case nine  = "9"
}

extension String {
    fileprivate var isEndWithNumber: Bool {
        guard let lastUnicode = self.unicodeScalars.last else {
            return false
        }
        let last = Int(lastUnicode.value)
        return (48 <= last && last <= 57)
    }

    fileprivate var isKineOf받침Number: Bool {
        guard let lastCharacter = self.last, let number = Number(rawValue: String(lastCharacter)) else {
            return false
        }

        switch number {
        case .zero, .one, .three, .six, .seven, .eight:
            return true
        case .two, .four, .five, .nine:
            return false
        }
    }

    fileprivate var isOne: Bool {
        guard let lastCharacter = self.last else{
            return false
        }
        return ("1" == String(lastCharacter))
    }
}
