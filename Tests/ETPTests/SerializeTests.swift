//
//  Test.swift
//  ETP
//
//  Created by Milko Daskalov on 29.04.26.
//

import Foundation
import XMLCoder
import Testing

@testable import ETP

struct SerializeTests {
    
    let decoder = XMLDecoder()
    
    init () async throws {
        decoder.dateDecodingStrategy = .iso8601
        decoder.shouldProcessNamespaces = true
    }
    
    func decode<Response: Codable>(_ xml: String) -> Response? {
        if let data = xml.data(using: .utf8) {
            return try? decoder.decode(SOAPEnvelope<Response>.self, from: data).body
        }
        return nil
    }
    
    @Test func testAcceptPaymentResponse() async throws {
        let xml = """
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:SOAP-ENC="http://schemas.xmlsoap.org/soap/encoding/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:etp="https://www.mpay24.com/soap/etp/1.5/ETP.wsdl">
    <SOAP-ENV:Body>
        <etp:AcceptPaymentResponse>
            <status>OK</status>
            <returnCode>OK</returnCode>
            <mpayTID>247227</mpayTID>
        </etp:AcceptPaymentResponse>
    </SOAP-ENV:Body>
</SOAP-ENV:Envelope>
"""
        let res: ETP.AcceptPaymentResponse? = decode(xml)

        #expect(res != nil, "Failed to decode")
        #expect(res?.status == .OK)
        #expect(res?.returnCode == "OK")
        #expect(res?.mpayTID == 247227)
    }
    
    @Test func testManualCreditResponse() async throws {
        let xml = """
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:SOAP-ENC="http://schemas.xmlsoap.org/soap/encoding/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:etp="https://www.mpay24.com/soap/etp/1.5/ETP.wsdl">
    <SOAP-ENV:Body>
        <etp:ManualCreditResponse>
            <status>ERROR</status>
            <returnCode>NOT_FOUND</returnCode>
            <transaction>
                <mpayTID>102030</mpayTID>
                <tStatus>FAILED</tStatus>
                <tid></tid>
            </transaction>
        </etp:ManualCreditResponse>
    </SOAP-ENV:Body>
</SOAP-ENV:Envelope>
"""
        
        let res: ETP.ManualCreditResponse? = decode(xml)
        #expect(res != nil, "Failed to decode")
        #expect(res?.status == .ERROR)
        #expect(res?.returnCode == "NOT_FOUND")
        #expect(res?.transaction.mpayTID == 102030)
        #expect(res?.transaction.tStatus == .FAILED)
        #expect(res?.transaction.tid.isEmpty == true)
    }

}
