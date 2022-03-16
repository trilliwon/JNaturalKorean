# Explanation

iOS에서 자연스러운 한글**을** 사용할 수 있습니다.

영어, 전화번호, 일본어 **조사**도 지원됩니다.

# JNaturalKorean

<a href="https://swift.org/package-manager/"><img src="https://img.shields.io/badge/SPM-supported-DE5C43.svg?style=flat"></a>
[![License](https://img.shields.io/cocoapods/l/JNaturalKorean.svg?style=flat)](http://cocoapods.org/pods/JNaturalKorean)

## Usage

```Swift
import JNaturalKorean
```

- `\("그 사람".이_가)` => 사람**이** ...
- `\("Battery".이_가)` => Battery**가** ...

- `\("3개의 문장".을_를)` => 문장**을** ...
- `\("Monster".을_를)` => Monster**를** ...

- `\("그 사람".은_는)` => 사람**은** 프로그래머 ...
- `\("이 iPhone".은_는)` => 이 iPhone**은** 도난 ...

- `\("이 세상".아_야)` => 세상**아** ...
- `\("Brother".아_야)` Brother**야** ...

- `\("그 친구".와_과)` => 이 친구**와** ...
- `\("이 program".와_과)` => program**과** 저 ...

- `\("010-0000-7330".으로_로)` => 7330**으로**
- `\("개발을 시작한 날".으로_로) 부터 \("100일".이_가) 지났습니다.` => 날**로** 부터 100일**이** ...

- `"さくら".이_가` => "さくら가"
- `"キムさん".이_가` => "キムさん이"
- 

---

- 주격조사
  - 그 사람**이** 주인입니다.
  - 이 친구**가** 디자이너 입니다.

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

- iOS 11.0+
- Swift 5.2+
- Xcode 12.0+

## Installation

### Swift Package Manager

- Xcode > File > Swift Packages > Add Swift Dependency...

### CocoaPods

JNaturalKorean is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'JNaturalKorean'
```

## License

JNaturalKorean is available under the MIT license. See the LICENSE file for more info.
