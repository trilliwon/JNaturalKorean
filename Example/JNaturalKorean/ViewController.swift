//
//  ViewController.swift
//  JNaturalKorean
//
//  Created by Trillione on 2016. 3. 2..
//  Copyright © 2016년 Trillione. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
  
  @IBOutlet weak var testTextView: UITextView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let jko = JNaturalKorean()
    
    testTextView.text = "주격조사\n\n"
    testTextView.text.appendContentsOf("\(jko.getWith주격조사("그 사람")) 주인입니다.\n")
    testTextView.text.appendContentsOf("\(jko.getWith주격조사("그 여자")) 전 여친 입니다.\n")
    
    testTextView.text.appendContentsOf("\n목적격조사\n\n")
    testTextView.text.appendContentsOf("\(jko.getWith목적격조사_을_를("3개의 문장")) 외워야 합니다.\n")
    testTextView.text.appendContentsOf("\(jko.getWith목적격조사_을_를("12개의 단어")) 외워야 합니다.\n")
    
    testTextView.text.appendContentsOf("\n보조사\n\n")
    testTextView.text.appendContentsOf("\(jko.getWith보조사_은_는("그 사람")) 프로그래머입니다.\n")
    testTextView.text.appendContentsOf("\(jko.getWith보조사_은_는("그 여자")) 이뻐요.\n")
    
    testTextView.text.appendContentsOf("\n호격조사\n\n")
    testTextView.text.appendContentsOf("\(jko.getWith호격조사_아_야("이 세상"))!\n")
    testTextView.text.appendContentsOf("\(jko.getWith호격조사_아_야("이 여자"))!\n\n\n")
    
    
    testTextView.text.appendContentsOf("\(jko.getWith부사격조사("오늘")) 부터 \(jko.getWith보격조사("100일")) 지났습니다.")
    print("\(jko.getWith부사격조사("그날")) 부터 \(jko.getWith보격조사("100일")) 지난 날.")
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
}

