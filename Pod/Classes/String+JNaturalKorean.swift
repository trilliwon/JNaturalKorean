//
//  String+JNaturalKorean.swift
//  Pods
//
//  Created by Ryan Yoo on 2016. 3. 3..
//
//

import Foundation

// MARK: - String+JNaturalKorean Public Convenient API

extension String {
    
    // MARK: - 이/가
    
    var 이_가: String {
        return JNaturalKorean.get_이_가_with(self)
    }
    var 이_가_only: String {
        return JNaturalKorean.get_이_가(self)
    }
    
    // MARK: - 은/는
    
    var 은_는: String {
        return JNaturalKorean.get_은_는_with(self)
    }
    var 은_는_only: String {
        return JNaturalKorean.get_은_는(self)
    }
    
    // MARK: - 을/를
    
    var 을_를: String {
        return JNaturalKorean.get_을_를(self)
    }
    var 을_를_only: String {
        return JNaturalKorean.get_을_를(self)
    }
    
    // MARK: - 으로/로
    
    var 으로_로: String {
        return JNaturalKorean.get_으로_로_with(self)
    }
    var 으로_로_only: String {
        return JNaturalKorean.get_으로_로(self)
    }
    
    // MARK: - 아/야
    
    var 아_야: String {
        return JNaturalKorean.get_아_야_with(self)
    }
    var 아_야_only: String {
        return JNaturalKorean.get_아_야(self)
    }
    
}
