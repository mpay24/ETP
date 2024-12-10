import XCTest
import Foundation
@testable import ETP

let authUser = "u9xxxx"
let authPassword = "xxxxx"
let merchantID:UInt32 = 90000

final class ETPTests: XCTestCase {
    func testAcceptPayment() async throws {
        var service = ETP("https://test.mpay24.com")
        service.authentication = .basic(username: authUser, password: authPassword)
        service.soapRequest = { print("Request:\n\($0)") }
        service.soapResponse = { print("Response:\n\($0)") }
        let payment = ETP.PaymentCC (
            amount: 100,
            currency: "EUR",
            brand: "VISA",
            identifier: "4444333322221111",
            expiry: 2906
        )
        let request = ETP.AcceptPayment(
            merchantID: merchantID,
            tid: "testing",
            pType: .CC,
            payment: payment
        )
        
        do {
            let response = try await service.AcceptPayment(request)
            XCTAssertEqual(response.status, .OK, "Expected status to be .OK")
            XCTAssertEqual(response.returnCode, "OK", "Expected return code to be 'OK'")
            XCTAssertNotNil(response.mpayTID, "Expected mpayTID to be non-nil")
        } catch WSDLOperationError.unauhtenticated {
            if merchantID != 90000 {
                XCTFail("Expecting authenticated merchant: \(merchantID)")
            }
        } catch {
            XCTFail("Unexpected error thrown: \(error)")
        }
    }
}
