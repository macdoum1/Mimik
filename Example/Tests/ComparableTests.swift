import XCTest
import Mimik

class ComparableTests: XCTestCase {
    func testTakeIfIntOverTen() {
        let twenty = 20
        let overTen = twenty.takeIf {
            $0 > 10
        }
        XCTAssertEqual(overTen, twenty)
    }
    
    func testDontTakeIfNotOverTwenty() {
        let twenty = 20
        let overTwenty = twenty.takeIf {
            $0 < 20
        }
        XCTAssertNil(overTwenty)
    }
    
    func testTakeUnlessIntUnderTen() {
        let twenty = 20
        let underTen = twenty.takeUnless {
            $0 < 10
        }
        XCTAssertEqual(underTen, twenty)
    }
    
    func testDontTakeUnlessNotEqual20() {
        let twenty = 20
        let equalTwenty = twenty.takeUnless {
            $0 == 20
        }
        XCTAssertNil(equalTwenty)
    }
}
