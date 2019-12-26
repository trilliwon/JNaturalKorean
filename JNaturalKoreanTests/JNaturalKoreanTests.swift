import XCTest
@testable import JNaturalKorean

class JNaturalKoreanTests: XCTestCase {

	let person = "사람"
	let programmer = "프로그래머"
	let korean = "한글"

	func testExample() {

		XCTAssertEqual(korean.으로_로, "한글로")
		XCTAssertEqual("111".으로_로, "111로")

		XCTAssertEqual(person.이_가, "사람이")
		XCTAssertEqual(person.은_는, "사람은")
		XCTAssertEqual(person.을_를, "사람을")
		XCTAssertEqual(person.으로_로, "사람으로")
		XCTAssertEqual(person.아_야, "사람아")
		XCTAssertEqual(person.와_과, "사람과")

		XCTAssertEqual(person.이_가_only, "이")
		XCTAssertEqual(person.은_는_only, "은")
		XCTAssertEqual(person.을_를_only, "을")
		XCTAssertEqual(person.으로_로_only, "으로")
		XCTAssertEqual(person.아_야_only, "아")
		XCTAssertEqual(person.와_과_only, "과")

		XCTAssertEqual(programmer.이_가, "프로그래머가")
		XCTAssertEqual(programmer.은_는, "프로그래머는")
		XCTAssertEqual(programmer.을_를, "프로그래머를")
		XCTAssertEqual(programmer.으로_로, "프로그래머로")
		XCTAssertEqual(programmer.아_야, "프로그래머야")
		XCTAssertEqual(programmer.와_과, "프로그래머와")

		XCTAssertEqual(programmer.이_가_only, "가")
		XCTAssertEqual(programmer.은_는_only, "는")
		XCTAssertEqual(programmer.을_를_only, "를")
		XCTAssertEqual(programmer.으로_로_only, "로")
		XCTAssertEqual(programmer.아_야_only, "야")
		XCTAssertEqual(programmer.와_과_only, "와")

		XCTAssertEqual("110".이_가, "110이")
		XCTAssertEqual("110".은_는, "110은")
		XCTAssertEqual("110".을_를, "110을")
		XCTAssertEqual("110".으로_로, "110으로")
		XCTAssertEqual("110".아_야, "110아")
		XCTAssertEqual("110".와_과, "110과")

		XCTAssertEqual("15".이_가, "15가")
		XCTAssertEqual("15".은_는, "15는")
		XCTAssertEqual("15".을_를, "15를")
		XCTAssertEqual("15".으로_로, "15로")
		XCTAssertEqual("15".아_야, "15야")
		XCTAssertEqual("15".와_과, "15와")

		XCTAssertEqual("home".이_가, "home이")
		XCTAssertEqual("home".은_는, "home은")
		XCTAssertEqual("home".을_를, "home을")
		XCTAssertEqual("home".으로_로, "home으로")
		XCTAssertEqual("home".아_야, "home아")
		XCTAssertEqual("home".와_과, "home과")

		XCTAssertEqual("programmer".이_가, "programmer가")
		XCTAssertEqual("programmer".은_는, "programmer는")
		XCTAssertEqual("programmer".을_를, "programmer를")
		XCTAssertEqual("programmer".으로_로, "programmer로")
		XCTAssertEqual("programmer".아_야, "programmer야")
		XCTAssertEqual("programmer".와_과, "programmer와")
	}
}
