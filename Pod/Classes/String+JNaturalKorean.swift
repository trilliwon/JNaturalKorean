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
    
    public var 이_가: String {
        return JNaturalKorean.get_이_가_with(self)
    }
    public var 이_가_only: String {
        return JNaturalKorean.get_이_가(self)
    }
    
    // MARK: - 은/는
    
    public var 은_는: String {
        return JNaturalKorean.get_은_는_with(self)
    }
    public var 은_는_only: String {
        return JNaturalKorean.get_은_는(self)
    }
    
    // MARK: - 을/를
    
    public var 을_를: String {
        return JNaturalKorean.get_을_를(self)
    }
    public var 을_를_only: String {
        return JNaturalKorean.get_을_를(self)
    }
    
    // MARK: - 으로/로
    
    public var 으로_로: String {
        return JNaturalKorean.get_으로_로_with(self)
    }
    public var 으로_로_only: String {
        return JNaturalKorean.get_으로_로(self)
    }
    
    // MARK: - 아/야
    
    public var 아_야: String {
        return JNaturalKorean.get_아_야_with(self)
    }
    public var 아_야_only: String {
        return JNaturalKorean.get_아_야(self)
    }
    
}
