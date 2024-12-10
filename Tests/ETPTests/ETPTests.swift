import Testing
import Foundation
@testable import ETP

let authUser = "u9xxxx"
let authPassword = "xxxxx"
let merchantID:UInt32 = 90000

final class ETPTests {
    @Test func testAcceptPayment() async throws {
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
        let response = try await service.AcceptPayment(request)
        
        #expect(response.status == .OK)
        #expect(response.returnCode == "OK")
        #expect(response.mpayTID != nil)
    }
}
