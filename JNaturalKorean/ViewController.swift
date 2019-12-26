import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var textView: UITextView!

	override func viewDidLoad() {
		super.viewDidLoad()

		textView.text.append("\n\n==== String+JNaturalKorean ====\n\n")

		textView.text.append("주격조사\n\n")
		textView.text.append("\("그 사람".이_가) 범인\n")
		textView.text.append("\("010-0000-1230".이_가) 그 친구 전화번호 입니다..\n")
		textView.text.append("\("그 여자".이_가) 전 여친 입니다.\n")

		textView.text.append("\n목적격조사\n\n")
		textView.text.append("\("3개의 문장".을_를) 외워야 합니다.\n")
		textView.text.append("\("010-0000-7332".을_를) 해킹.\n")
		textView.text.append("\("12개의 단어".을_를) 외워야 합니다.\n")

		textView.text.append("\n보조사\n\n")
		textView.text.append("\("그 사람".은_는) 프로그래머입니다.\n")
		textView.text.append("\("그 친구".은_는) 천재.\n")
		textView.text.append("\("010-0000-0005".은_는) 내 전화번호 입니다..\n")

		textView.text.append("\n호격조사\n\n")
		textView.text.append("\("이 세상".아_야)!\n")
		textView.text.append("\("이 세상".아_야)!\n")
		textView.text.append("\("010-0000-7336".아_야)!\n\n\n")

		textView.text.append("\("그 친구".와_과) 함께\n")
		textView.text.append("\("그 사람".와_과) 함께\n\n")
		textView.text.append("\("010-0000-0008".와_과) 내 번호는 비슷함.\n\n\n")

		textView.text.append("\("010-0000-1203".으로_로) 인증번호가 발송됩니다.\n\n\n")

		textView.text.append("\("오늘".으로_로) 부터 \("100일".이_가) 지났습니다.\n")
	}
}
