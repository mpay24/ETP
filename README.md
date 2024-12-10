## mPAY24 SOAP API Swift Package ##

[![Build](https://github.com/mpay24/ETP/actions/workflows/build.yml/badge.svg)](https://github.com/mpay24/ETP/actions/workflows/build.yml)

Add the package to your project using Swift Package Managger

Example usage:

```
import ETP

let authUser = "u9xxxx"
let authPassword = "xxxxx"
let merchantID: UInt32 = 90000

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
```

