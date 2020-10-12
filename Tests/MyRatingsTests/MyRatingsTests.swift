import XCTest
@testable import MyRatings

final class MyRatingsTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(MyRatings().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
