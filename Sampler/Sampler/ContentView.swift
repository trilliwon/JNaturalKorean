//
//  ContentView.swift
//  Sampler
//
//  Created by won on 2020/11/13.
//

import SwiftUI
import JNaturalKorean

struct ContentView: View {
    var body: some View {
        ScrollView {
            Text(sampleText)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

let sampleText = """
    주격조사\n\n
    \("그 사람".이_가) 주인입니다.
    \("저 여자".이_가) 여친 입니다.
    \n목적격조사\n
    \("3개의 문장".을_를) 외워야 합니다.
    \("12개의 단어".을_를) 외워야 합니다.
    \n보조사\n
    \("그 사람".은_는) 프로그래머입니다.
    \("그 여자".은_는) 개발자.
    \n호격조사\n
    \("이 세상".아_야)!
    \("이 여자".아_야)!\n

    \("그날".으로_로)부터 \("100일".이_가) 지났습니다.

    \n==== String+JNaturalKorean ====\n
    주격조사\n
    \("그 사람".이_가) 주인입니다.
    \("010-0000-7330".이_가) 전 여친 전화번호 입니다..
    \("그 여자".이_가) 전 여친 입니다.
    \n목적격조사\n
    \("3개의 문장".을_를) 외워야 합니다.
    \("010-0000-7332".을_를) 해킹.
    \("12개의 단어".을_를) 외워야 합니다.
    \n보조사
    \("그 사람".은_는) 프로그래머입니
    \("그 여자".은_는) 이뻐
    \("010-0000-7335".은_는) 내 전화번호 입니다..
    \n호격조사\n
    \("이 세상".아_야)!
    \("이 세상".아_야)!
    \("010-0000-7336".아_야)!\n\n

    \("그 여자".와_과) 함께
    \("그 사람".와_과) 함께
    \("010-0000-7338".와_과) 내 번호는 비슷함.
    \("010-0000-7333".으로_로) 인증번호가 발송됩니다.
    \("오늘".으로_로) 부터 \("100일".이_가) 지났습니다.
    """
