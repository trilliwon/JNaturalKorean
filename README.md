# Explanation

iOS에서 자연스러운 한글**을** 구현할 수 있습니다.


# JNaturalKorean

[![CI Status](http://img.shields.io/travis/trillione/JNaturalKorean.svg?style=flat)](https://travis-ci.org/trillione/JNaturalKorean)
[![Version](https://img.shields.io/cocoapods/v/JNaturalKorean.svg?style=flat)](http://cocoapods.org/pods/JNaturalKorean)
[![License](https://img.shields.io/cocoapods/l/JNaturalKorean.svg?style=flat)](http://cocoapods.org/pods/JNaturalKorean)
[![Platform](https://img.shields.io/cocoapods/p/JNaturalKorean.svg?style=flat)](http://cocoapods.org/pods/JNaturalKorean)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.
```Swift
import JNaturalKorean

let jko = JNaturalKorean() 

jko.getWith주격조사_이_가("그 사람") // "그 사람이"
jko.getWith주격조사("그 여자") // "그 여자가"

jko.getWith목적격조사_을_를("3개의 문장") // "3개의 문장을"
jko.getWith목적격조사_을_를("12개의 단어") // "12개의 단어를"
jko.getWith목적격조사("12개의 단어") // "12개의 단어를"

jko.getWith보조사_은_는("그 사람") // 그 사람은
jko.getWith보조사_은_는("그 여자") // 그 여자는
jko.getWith보조사("그 여자") // 그 여자는

jko.getWith호격조사_아_야("이 세상") // 이 세상아!
jko.getWith호격조사_아_야("이 여자") // 이 여자야!
jko.getWith호격조사("이 여자") // 이 여자야

jko.getWith부사격조사("오늘") // 오늘로
jko.getWith부사격조사_으로_로("오늘") // 오늘로
jko.getWith부사격조사_으로_로("집") // 집으로
jko.getWith부사격조사_으로_로("학교") // 학교로
```
---
- 주격조사
    * 그 사람**이** 주인입니다.
    * 그 여자**가** 전 여친 입니다.
    
---
- 목적격조사

    - 3개의 문장**을** 외워야 합니다.
    - 12개의 단어**를** 외워야 합니다.
    
---
- 보조사

    - 그 사람**은** 프로그래머입니다
    - 그 여자**는** 이뻐요.
    
---
- 호격조사
    - 이 여자**야**!
    - 이 세상**아**!
    
---
- 부사격조사
    - 집**으로** 가는중
    - 하교**로** 가는중
    - 오늘**로** 정했어!
    
---

## Requirements

## Installation

JNaturalKorean is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'JNaturalKorean'
```

## Author

trillione, trillione1024@gmail.com

## License

JNaturalKorean is available under the MIT license. See the LICENSE file for more info.
