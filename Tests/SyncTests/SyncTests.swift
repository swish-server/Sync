import XCTest
@testable import Sync

class SyncTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(Sync().text, "Hello, World!")
    }


    static var allTests : [(String, (SyncTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
