# Explanation

iOS에서 자연스러운 한글**을** 사용할 수 있습니다.

영어, 전화번호 **조사**도 지원됩니다.

# JNaturalKorean

[![Version](https://img.shields.io/cocoapods/v/JNaturalKorean.svg?style=flat)](http://cocoapods.org/pods/JNaturalKorean)
[![License](https://img.shields.io/cocoapods/l/JNaturalKorean.svg?style=flat)](http://cocoapods.org/pods/JNaturalKorean)
[![Platform](https://img.shields.io/cocoapods/p/JNaturalKorean.svg?style=flat)](http://cocoapods.org/pods/JNaturalKorean)
[![codecov](https://codecov.io/gh/trilliwon/JNaturalKorean/branch/master/graph/badge.svg)](https://codecov.io/gh/trilliwon/JNaturalKorean)
[![Build Status](https://travis-ci.org/trilliwon/JNaturalKorean.svg?branch=master)](https://travis-ci.org/trilliwon/JNaturalKorean)

## Usage

```Swift
import JNaturalKorean


\("그 사람".이_가) 주인입니다.
\("Battery".이_가) 10% 남았습니다.

\("3개의 문장".을_를) 외워야 합니다.
\("Monster".을_를) 물리치십시오.

\("그 사람".은_는) 프로그래머입니다.
\("이 iPhone".은_는) 도난 당했습니다.

\("이 세상"아_야)
\("Brother".아_야)

\("그 친구".와_과) 함께...
\("이 program".와_과) 저 플랫폼은 호환이 안됩니다.

\("010-0000-7330"으_로) 전송된 인증번호를 입력하세요.
\("개발을 시작한 날".으로_로) 부터 \("100일".이_가) 지났습니다.

```
---
- 주격조사
    * 그 사람**이** 주인입니다.
    * 이 친구**가** 디자이너 입니다.

---
- 목적격조사

    - 3개의 문장**을** 외워야 합니다.
    - 12개의 단어**를** 외워야 합니다.

---
- 보조사

    - 그 사람**은** 프로그래머입니다
    - 그 친구**는** 디자이너입니다

---
- 호격조사
    - 이 여자**야**!
    - 이 세상**아**!

---
- 부사격조사
    - 집**으로** 가는중
    - 회사**로** 가는중
    - 오늘**로** 정했어!

---
- 접속조사
    - 사람**과** 원숭이 
    - 프로그래머**와** 맥프레


## Requirements

+ iOS 8.0+
+ Swift 4.0+
+ Xcode 9.2+

## Installation

JNaturalKorean is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'JNaturalKorean'
```

## Author

- won, trilliwon@gmail.com
- ryan yoo, yoobh17@gmail.com

## License

JNaturalKorean is available under the MIT license. See the LICENSE file for more info.
