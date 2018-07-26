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
    
    func testDontTakeIfNotOverTen() {
        let twenty = 20
        let overTen = twenty.takeIf {
            $0 < 20
        }
        XCTAssertNil(overTen)
    }
    
}
