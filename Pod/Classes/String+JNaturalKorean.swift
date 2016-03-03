//
//  String+JNaturalKorean.swift
//  Pods
//
//  Created by Ryan Yoo on 2016. 3. 3..
//
//

import Foundation

extension String {
    
    var 이_가: String {
        return JNaturalKorean.instance.getWith주격조사_이_가(self)
    }
    var 은_는: String {
        return JNaturalKorean.instance.getWith보조사_은_는(self)
    }
    var 을_를: String {
        return JNaturalKorean.instance.getWith목적격조사_을_를(self)
    }
    var 으로_로: String {
        return JNaturalKorean.instance.getWith부사격조사_으로_로(self)
    }
    var 아_야: String {
        return JNaturalKorean.instance.getWith호격조사_아_야(self)
    }
    
}
