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

![alt tag](https://cloud.githubusercontent.com/assets/14218787/13467222/8dbe50b0-e0e0-11e5-960f-656e028ab457.png)


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
