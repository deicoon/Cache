import XCTest
import Foundation
@testable import Cache

final class ObservationTokenTests: XCTestCase {
  func testCancel() {
    var cancelled = false
    let uuid = UUID()

    let token = ObservationToken(uuid: uuid) { _ in
      cancelled = true
    }

    token.cancel()
    XCTAssertTrue(cancelled)
  }
}
