//
//  String+JNaturalKorean.swift
//  Pods
//
//  Created by Ryan Yoo on 2016. 3. 3..
//
//

import Foundation

// MARK: - String+JNaturalKorean Public API

extension String {
    
    var 이_가: String {
        return JNaturalKorean.get_이_가_with(self)
    }
    var 은_는: String {
        return JNaturalKorean.get_은_는_with(self)
    }
    var 을_를: String {
        return JNaturalKorean.get_을_를_with(self)
    }
    var 으로_로: String {
        return JNaturalKorean.get_으로_로_with(self)
    }
    var 아_야: String {
        return JNaturalKorean.get_아_야_with(self)
    }
    
}
