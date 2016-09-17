import UIKit
import JNaturalKorean



class ViewController: UIViewController {
  
  @IBOutlet weak var testTextView: UITextView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    testTextView.text = "주격조사\n\n"
    testTextView.text.append("\(JNaturalKorean.get_이_가_with("그 사람")) 주인입니다.\n")
    testTextView.text.append("\(JNaturalKorean.get_이_가_with("그 여자")) 전 여친 입니다.\n")
    
    testTextView.text.append("\n목적격조사\n\n")
    testTextView.text.append("\(JNaturalKorean.get_을_를_with("3개의 문장")) 외워야 합니다.\n")
    testTextView.text.append("\(JNaturalKorean.get_을_를_with("12개의 단어")) 외워야 합니다.\n")
    
    testTextView.text.append("\n보조사\n\n")
    testTextView.text.append("\(JNaturalKorean.get_은_는_with("그 사람")) 프로그래머입니다.\n")
    testTextView.text.append("\(JNaturalKorean.get_은_는_with("그 여자")) 이뻐요.\n")
    
    testTextView.text.append("\n호격조사\n\n")
    testTextView.text.append("\(JNaturalKorean.get_아_야_with("이 세상"))!\n")
    testTextView.text.append("\(JNaturalKorean.get_아_야_with("이 여자"))!\n\n\n")
    
    testTextView.text.append("\(JNaturalKorean.get_으로_로_with("오늘")) 부터 \(JNaturalKorean.get_이_가_with("100일")) 지났습니다.\n")
    
    testTextView.text.append("\n\n==== String+JNaturalKorean ====\n\n")
    
    testTextView.text.append("주격조사\n\n")
    testTextView.text.append("\("그 사람".이_가) 주인입니다.\n")
    testTextView.text.append("\("010-0000-7330".이_가) 전 여친 전화번호 입니다..\n")
    testTextView.text.append("\("그 여자".이_가) 전 여친 입니다.\n")
    
    testTextView.text.append("\n목적격조사\n\n")
    testTextView.text.append("\("3개의 문장".을_를) 외워야 합니다.\n")
    testTextView.text.append("\("010-0000-7332".을_를) 해킹.\n")
    testTextView.text.append("\("12개의 단어".을_를) 외워야 합니다.\n")
    
    testTextView.text.append("\n보조사\n\n")
    testTextView.text.append("\("그 사람".은_는) 프로그래머입니다.\n")
    testTextView.text.append("\("그 여자".은_는) 이뻐요.\n")
    testTextView.text.append("\("010-0000-7335".은_는) 내 전화번호 입니다..\n")
    
    testTextView.text.append("\n호격조사\n\n")
    testTextView.text.append("\("이 세상".아_야)!\n")
    testTextView.text.append("\("이 세상".아_야)!\n")
    testTextView.text.append("\("010-0000-7336".아_야)!\n\n\n")
    
    testTextView.text.append("\("그 여자".와_과) 함께\n")
    testTextView.text.append("\("그 사람".와_과) 함께\n\n")
    testTextView.text.append("\("010-0000-7338".와_과) 내 번호는 비슷함.\n\n\n")

    testTextView.text.append("\("010-0000-7333".으로_로) 인증번호가 발송됩니다.\n\n\n")
    
    testTextView.text.append("\("오늘".으로_로) 부터 \("100일".이_가) 지났습니다.\n")
  }
}

