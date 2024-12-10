import Foundation
import XMLCoder

public struct ETP: WSDLService {
    public var endpoint = "https://www.mpay24.com/app/bin/etpproxy_v15"
    public var targetNamespace = "https://www.mpay24.com/soap/etp/1.5/ETP.wsdl"
    public var authentication: Authentication = .none
    public var characterSet: CharacterSet = .unspecified
    public var soapRequest: ((_ request: String) -> Void)?
    public var soapResponse: ((_ response: String) -> Void)?
    public init(_ domain: String? = nil) {
        if let domain {
            self.endpoint = "\(domain)/app/bin/etpproxy_v15"
        }
    }
    
    /// Interactive payment interface
    public func SelectPayment(_ req: SelectPayment) async throws -> SelectPaymentResponse {
        return try await operation(req)
    }
    
    /// Interactive interface for tokenization of sensitive payment data
    public func CreatePaymentToken(_ req: CreatePaymentToken) async throws -> CreatePaymentTokenResponse {
        return try await operation(req)
    }
    
    /// Interactive interface for integrating apple pay
    public func CreateApplePayToken(_ req: CreateApplePayToken) async throws -> CreateApplePayTokenResponse {
        return try await operation(req)
    }
    
    /// Interactive interface for integrating google pay
    public func CreateGooglePayToken(_ req: CreateGooglePayToken) async throws -> CreateGooglePayTokenResponse {
        return try await operation(req)
    }
    
    /// Store customer payment and billing address data for future use
    public func CreateCustomer(_ req: CreateCustomer) async throws -> CreateCustomerResponse {
        return try await operation(req)
    }
    
    /// Direct payment interface
    public func AcceptPayment(_ req: AcceptPayment) async throws -> AcceptPaymentResponse {
        return try await operation(req)
    }
    
    /// Process suspended payment
    public func ManualCallback(_ req: ManualCallback) async throws -> ManualCallbackResponse {
        return try await operation(req)
    }
    
    /// Clear transaction(s)
    public func ManualClear(_ req: ManualClear) async throws -> ManualClearResponse {
        return try await operation(req)
    }
    
    /// Reversal (not cleared) transaction
    public func ManualReverse(_ req: ManualReverse) async throws -> ManualReverseResponse {
        return try await operation(req)
    }
    
    /// Credit already cleared transaction
    public func ManualCredit(_ req: ManualCredit) async throws -> ManualCreditResponse {
        return try await operation(req)
    }
    
    /// Direct withdraw interface
    public func AcceptWithdraw(_ req: AcceptWithdraw) async throws -> AcceptWithdrawResponse {
        return try await operation(req)
    }
    
    /// Get transaction status for specified mpayTID or tid
    public func TransactionStatus(_ req: TransactionStatus) async throws -> TransactionStatusResponse {
        return try await operation(req)
    }
    
    /// Get transaction confirmation calls for specified mpayTID
    public func TransactionConfirmation(_ req: TransactionConfirmation) async throws -> TransactionConfirmationResponse {
        return try await operation(req)
    }
    
    /// Get all transaction's states for specified mpayTID or the last transaction with the specified TID
    public func TransactionHistory(_ req: TransactionHistory) async throws -> TransactionHistoryResponse {
        return try await operation(req)
    }
    
    /// List transactions to be cleared
    public func ListNotCleared(_ req: ListNotCleared) async throws -> ListNotClearedResponse {
        return try await operation(req)
    }
    
    /// List available payment methods (for specific pType)
    public func ListPaymentMethods(_ req: ListPaymentMethods) async throws -> ListPaymentMethodsResponse {
        return try await operation(req)
    }
    
    /// Interactive creation of payment profiles
    public func CreateProfile(_ req: CreateProfile) async throws -> CreateProfileResponse {
        return try await operation(req)
    }
    
    /// List stored payment profiles
    public func ListProfiles(_ req: ListProfiles) async throws -> ListProfilesResponse {
        return try await operation(req)
    }
    
    /// Delete stored payment profile
    public func DeleteProfile(_ req: DeleteProfile) async throws -> DeleteProfileResponse {
        return try await operation(req)
    }
    
    /// Operation status
    public enum Status: String, Codable, CustomStringConvertible, CaseIterable, Equatable, Hashable {
        case OK
        case ERROR
        public var description: String { rawValue }
    }
    
    /// Possible payment systems
    public enum PaymentType: String, Codable, CustomStringConvertible, CaseIterable, Equatable, Hashable {
        case CC
        case CB
        case MAESTRO
        case EPS
        case PB
        case PSC
        case CASH_TICKET
        case ELV
        case GIROPAY
        case PAYPAL
        case BILLPAY
        case INVOICE
        case HP
        case SAFETYPAY
        case KLARNA
        case SOFORT
        case PAYOLUTION
        case POSTFINANCE
        case ELVSECURE
        case IDEAL
        case ALIPAY
        case WECHATPAY
        case PREPAYMENT
        case TWINT
        case TOKEN
        case PROFILE
        public var description: String { rawValue }
    }
    
    /// Transaction states
    public enum TxState: String, Codable, CustomStringConvertible, CaseIterable, Equatable, Hashable {
        case INIT
        case CREATED
        case AUTHORIZE
        case SUSPENDED
        case REDIRECTED
        case CALLBACK
        case RESERVED
        case RESERVED_REVERSAL
        case EXECUTE
        case BILLED
        case BILLED_REVERSAL
        case REVOKE
        case CREDITED
        case CREDITED_REVERSAL
        case REJECT
        case ARCHIVED
        case WITHDRAW
        case WITHDRAWN
        case ERROR
        public var description: String { rawValue }
    }
    
    /// Transaction status
    public enum TStatus: String, Codable, CustomStringConvertible, CaseIterable, Equatable, Hashable {
        case NOTFOUND
        case FAILED
        case RESERVED
        case BILLED
        case REVERSED
        case CREDITED
        public var description: String { rawValue }
    }
    
    /// Status of the confirmation-url call
    public enum ConfirmationStatus: String, Codable, CustomStringConvertible, CaseIterable, Equatable, Hashable {
        case OK
        case ERROR
        case PENDING
        case FAILURE
        public var description: String { rawValue }
    }
    
    /// Transaction status confirmed on the confirmation-url call
    public enum Confirmed: String, Codable, CustomStringConvertible, CaseIterable, Equatable, Hashable {
        case VALIDATED
        case RESERVED
        case RESERVED_REVERSAL
        case BILLED
        case BILLED_REVERSAL
        case REVERSED
        case CREDITED
        case CREDITED_REVERSAL
        case WITHDRAWN
        case SUSPENDED
        case ERROR
        public var description: String { rawValue }
    }
    
    /// Transaction field to be used for sorting
    public enum SortField: String, Codable, CustomStringConvertible, CaseIterable, Equatable, Hashable {
        case MPAYTID
        case PTYPE
        case BRAND
        case CURRENCY
        case TID
        case ORDERDESC
        case ORDERNUMBER
        case CURRDATE
        case CURRTIME
        public var description: String { rawValue }
    }
    
    /// Sort type to be used
    public enum SortType: String, Codable, CustomStringConvertible, CaseIterable, Equatable, Hashable {
        case ASC
        case DESC
        public var description: String { rawValue }
    }
    
    /// Address fields modification mode
    public enum AddressMode: String, Codable, CustomStringConvertible, CaseIterable, Equatable, Hashable {
        case READONLY
        case READWRITE
        public var description: String { rawValue }
    }
    
    /// Person gender
    public enum Gender: String, Codable, CustomStringConvertible, CaseIterable, Equatable, Hashable {
        case MALE
        case FEMALE
        public var description: String { rawValue }
    }
    
    /// enables PaymentData extensions
    public protocol PaymentDataProtocol: Codable, DynamicNodeEncoding {
        var validate: Bool? { get set }
        var profileID: String? { get set }
    }
    
    /// Common payment data parameters
    public struct PaymentData: Codable, DynamicNodeEncoding, PaymentDataProtocol {
        public var xsiType: String = "tns:PaymentData"
        public var validate: Bool?
        public var profileID: String?
        
        enum CodingKeys: String, CodingKey {
            case xsiType = "xsi:type"
            case validate, profileID
        }
        
        public static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
            switch key {
            case PaymentData.CodingKeys.xsiType: return .attribute
            default: return .element
            }
        }
    }
    
    /// Payment with token specific payment data parameters
    public struct PaymentDataTOKEN: Codable, DynamicNodeEncoding, PaymentDataProtocol {
        public var xsiType: String = "tns:PaymentDataTOKEN"
        // properties inherited from PaymentDataProtocol
        public var validate: Bool?
        public var profileID: String?
        // own properties
        public var token: String
        public var auth3DS: Bool?
        
        enum CodingKeys: String, CodingKey {
            case xsiType = "xsi:type"
            case validate, profileID, token, auth3DS
        }
        
        public static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
            switch key {
            case PaymentDataTOKEN.CodingKeys.xsiType: return .attribute
            default: return .element
            }
        }
    }
    
    /// CreditCard specific payment data parameters
    public struct PaymentDataCC: Codable, DynamicNodeEncoding, PaymentDataProtocol {
        public var xsiType: String = "tns:PaymentDataCC"
        // properties inherited from PaymentDataProtocol
        public var validate: Bool?
        public var profileID: String?
        // own properties
        public var brand: String
        public var identifier: String
        public var expiry: UInt32
        public var cvc: String?
        public var auth3DS: Bool?
        
        enum CodingKeys: String, CodingKey {
            case xsiType = "xsi:type"
            case validate, profileID, brand, identifier, expiry, cvc, auth3DS
        }
        
        public static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
            switch key {
            case PaymentDataCC.CodingKeys.xsiType: return .attribute
            default: return .element
            }
        }
    }
    
    /// Direct debit specific payment data parameters
    public struct PaymentDataELV: Codable, DynamicNodeEncoding, PaymentDataProtocol {
        public var xsiType: String = "tns:PaymentDataELV"
        // properties inherited from PaymentDataProtocol
        public var validate: Bool?
        public var profileID: String?
        // own properties
        public var brand: String
        public var iban: String
        public var bic: String?
        public var mandateID: String?
        public var dateOfSignature: Date?
        
        enum CodingKeys: String, CodingKey {
            case xsiType = "xsi:type"
            case validate, profileID, brand, iban, bic, mandateID, dateOfSignature
        }
        
        public static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
            switch key {
            case PaymentDataELV.CodingKeys.xsiType: return .attribute
            default: return .element
            }
        }
    }
    
    /// enables Payment extensions
    public protocol PaymentProtocol: Codable, DynamicNodeEncoding {
        var amount: UInt32 { get set }
        var currency: String { get set }
        var timeout: UInt32? { get set }
        var manualClearing: Bool? { get set }
        var useProfile: Bool? { get set }
        var profileID: String? { get set }
    }
    
    /// Common payment parameters
    public struct Payment: Codable, DynamicNodeEncoding, PaymentProtocol {
        public var xsiType: String = "tns:Payment"
        public var amount: UInt32
        public var currency: String
        public var timeout: UInt32?
        public var manualClearing: Bool?
        public var useProfile: Bool?
        public var profileID: String?
        
        enum CodingKeys: String, CodingKey {
            case xsiType = "xsi:type"
            case amount, currency, timeout, manualClearing, useProfile, profileID
        }
        
        public static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
            switch key {
            case Payment.CodingKeys.xsiType: return .attribute
            default: return .element
            }
        }
    }
    
    /// Payment with token specific payment parameters
    public struct PaymentTOKEN: Codable, DynamicNodeEncoding, PaymentProtocol {
        public var xsiType: String = "tns:PaymentTOKEN"
        // properties inherited from PaymentProtocol
        public var amount: UInt32
        public var currency: String
        public var timeout: UInt32?
        public var manualClearing: Bool?
        public var useProfile: Bool?
        public var profileID: String?
        // own properties
        public var token: String
        
        enum CodingKeys: String, CodingKey {
            case xsiType = "xsi:type"
            case amount, currency, timeout, manualClearing, useProfile, profileID, token
        }
        
        public static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
            switch key {
            case PaymentTOKEN.CodingKeys.xsiType: return .attribute
            default: return .element
            }
        }
    }
    
    /// CreditCard specific payment parameters
    public struct PaymentCC: Codable, DynamicNodeEncoding, PaymentProtocol {
        public var xsiType: String = "tns:PaymentCC"
        // properties inherited from PaymentProtocol
        public var amount: UInt32
        public var currency: String
        public var timeout: UInt32?
        public var manualClearing: Bool?
        public var useProfile: Bool?
        public var profileID: String?
        // own properties
        public var brand: String
        public var identifier: String
        public var expiry: UInt32
        public var cvc: String?
        public var auth3DS: Bool?
        
        enum CodingKeys: String, CodingKey {
            case xsiType = "xsi:type"
            case amount, currency, timeout, manualClearing, useProfile, profileID, brand, identifier, expiry, cvc, auth3DS
        }
        
        public static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
            switch key {
            case PaymentCC.CodingKeys.xsiType: return .attribute
            default: return .element
            }
        }
    }
    
    /// Carte Bleue specific payment parameters
    public struct PaymentCB: Codable, DynamicNodeEncoding, PaymentProtocol {
        public var xsiType: String = "tns:PaymentCB"
        // properties inherited from PaymentProtocol
        public var amount: UInt32
        public var currency: String
        public var timeout: UInt32?
        public var manualClearing: Bool?
        public var useProfile: Bool?
        public var profileID: String?
        // own properties
        public var identifier: String
        public var expiry: UInt32
        public var cvc: String?
        
        enum CodingKeys: String, CodingKey {
            case xsiType = "xsi:type"
            case amount, currency, timeout, manualClearing, useProfile, profileID, identifier, expiry, cvc
        }
        
        public static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
            switch key {
            case PaymentCB.CodingKeys.xsiType: return .attribute
            default: return .element
            }
        }
    }
    
    /// Maestro specific payment parameters
    public struct PaymentMAESTRO: Codable, DynamicNodeEncoding, PaymentProtocol {
        public var xsiType: String = "tns:PaymentMAESTRO"
        // properties inherited from PaymentProtocol
        public var amount: UInt32
        public var currency: String
        public var timeout: UInt32?
        public var manualClearing: Bool?
        public var useProfile: Bool?
        public var profileID: String?
        // own properties
        public var identifier: String
        public var expiry: UInt32
        
        enum CodingKeys: String, CodingKey {
            case xsiType = "xsi:type"
            case amount, currency, timeout, manualClearing, useProfile, profileID, identifier, expiry
        }
        
        public static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
            switch key {
            case PaymentMAESTRO.CodingKeys.xsiType: return .attribute
            default: return .element
            }
        }
    }
    
    /// EPS online bank transfer specific payment parameters
    public struct PaymentEPS: Codable, DynamicNodeEncoding, PaymentProtocol {
        public var xsiType: String = "tns:PaymentEPS"
        // properties inherited from PaymentProtocol
        public var amount: UInt32
        public var currency: String
        public var timeout: UInt32?
        public var manualClearing: Bool?
        public var useProfile: Bool?
        public var profileID: String?
        // own properties
        public var brand: String
        public var bankID: UInt32?
        public var bic: String?
        
        enum CodingKeys: String, CodingKey {
            case xsiType = "xsi:type"
            case amount, currency, timeout, manualClearing, useProfile, profileID, brand, bankID, bic
        }
        
        public static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
            switch key {
            case PaymentEPS.CodingKeys.xsiType: return .attribute
            default: return .element
            }
        }
    }
    
    /// Paybox specific payment parameters
    public struct PaymentPB: Codable, DynamicNodeEncoding, PaymentProtocol {
        public var xsiType: String = "tns:PaymentPB"
        // properties inherited from PaymentProtocol
        public var amount: UInt32
        public var currency: String
        public var timeout: UInt32?
        public var manualClearing: Bool?
        public var useProfile: Bool?
        public var profileID: String?
        // own properties
        public var identifier: String
        public var payDays: UInt32?
        public var reserveDays: UInt32?
        
        enum CodingKeys: String, CodingKey {
            case xsiType = "xsi:type"
            case amount, currency, timeout, manualClearing, useProfile, profileID, identifier, payDays, reserveDays
        }
        
        public static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
            switch key {
            case PaymentPB.CodingKeys.xsiType: return .attribute
            default: return .element
            }
        }
    }
    
    /// Direct debit specific payment parameters
    public struct PaymentELV: Codable, DynamicNodeEncoding, PaymentProtocol {
        public var xsiType: String = "tns:PaymentELV"
        // properties inherited from PaymentProtocol
        public var amount: UInt32
        public var currency: String
        public var timeout: UInt32?
        public var manualClearing: Bool?
        public var useProfile: Bool?
        public var profileID: String?
        // own properties
        public var brand: String
        public var iban: String
        public var bic: String?
        public var mandateID: String?
        public var dateOfSignature: Date?
        
        enum CodingKeys: String, CodingKey {
            case xsiType = "xsi:type"
            case amount, currency, timeout, manualClearing, useProfile, profileID, brand, iban, bic, mandateID, dateOfSignature
        }
        
        public static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
            switch key {
            case PaymentELV.CodingKeys.xsiType: return .attribute
            default: return .element
            }
        }
    }
    
    /// Giropay online bank transfer specific payment parameters
    public struct PaymentGIROPAY: Codable, DynamicNodeEncoding, PaymentProtocol {
        public var xsiType: String = "tns:PaymentGIROPAY"
        // properties inherited from PaymentProtocol
        public var amount: UInt32
        public var currency: String
        public var timeout: UInt32?
        public var manualClearing: Bool?
        public var useProfile: Bool?
        public var profileID: String?
        // own properties
        public var iban: String?
        public var bic: String
        
        enum CodingKeys: String, CodingKey {
            case xsiType = "xsi:type"
            case amount, currency, timeout, manualClearing, useProfile, profileID, iban, bic
        }
        
        public static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
            switch key {
            case PaymentGIROPAY.CodingKeys.xsiType: return .attribute
            default: return .element
            }
        }
    }
    
    /// PayPal specific payment parameters
    public struct PaymentPAYPAL: Codable, DynamicNodeEncoding, PaymentProtocol {
        public var xsiType: String = "tns:PaymentPAYPAL"
        // properties inherited from PaymentProtocol
        public var amount: UInt32
        public var currency: String
        public var timeout: UInt32?
        public var manualClearing: Bool?
        public var useProfile: Bool?
        public var profileID: String?
        // own properties
        public var commit: Bool?
        public var custom: String?
        
        enum CodingKeys: String, CodingKey {
            case xsiType = "xsi:type"
            case amount, currency, timeout, manualClearing, useProfile, profileID, commit, custom
        }
        
        public static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
            switch key {
            case PaymentPAYPAL.CodingKeys.xsiType: return .attribute
            default: return .element
            }
        }
    }
    
    /// BillPay specific payment parameters
    public struct PaymentBILLPAY: Codable, DynamicNodeEncoding, PaymentProtocol {
        public var xsiType: String = "tns:PaymentBILLPAY"
        // properties inherited from PaymentProtocol
        public var amount: UInt32
        public var currency: String
        public var timeout: UInt32?
        public var manualClearing: Bool?
        public var useProfile: Bool?
        public var profileID: String?
        // own properties
        public var brand: String
        
        enum CodingKeys: String, CodingKey {
            case xsiType = "xsi:type"
            case amount, currency, timeout, manualClearing, useProfile, profileID, brand
        }
        
        public static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
            switch key {
            case PaymentBILLPAY.CodingKeys.xsiType: return .attribute
            default: return .element
            }
        }
    }
    
    /// Klarna specific payment parameters
    public struct PaymentKLARNA: Codable, DynamicNodeEncoding, PaymentProtocol {
        public var xsiType: String = "tns:PaymentKLARNA"
        // properties inherited from PaymentProtocol
        public var amount: UInt32
        public var currency: String
        public var timeout: UInt32?
        public var manualClearing: Bool?
        public var useProfile: Bool?
        public var profileID: String?
        // own properties
        public var brand: String
        public var personalNumber: String
        public var pClass: UInt32?
        
        enum CodingKeys: String, CodingKey {
            case xsiType = "xsi:type"
            case amount, currency, timeout, manualClearing, useProfile, profileID, brand, personalNumber, pClass
        }
        
        public static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
            switch key {
            case PaymentKLARNA.CodingKeys.xsiType: return .attribute
            default: return .element
            }
        }
    }
    
    /// PaySafecard specific payment parameters
    public struct PaymentPSC: Codable, DynamicNodeEncoding, PaymentProtocol {
        public var xsiType: String = "tns:PaymentPSC"
        // properties inherited from PaymentProtocol
        public var amount: UInt32
        public var currency: String
        public var timeout: UInt32?
        public var manualClearing: Bool?
        public var useProfile: Bool?
        public var profileID: String?
        // own properties
        public var brand: String
        
        enum CodingKeys: String, CodingKey {
            case xsiType = "xsi:type"
            case amount, currency, timeout, manualClearing, useProfile, profileID, brand
        }
        
        public static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
            switch key {
            case PaymentPSC.CodingKeys.xsiType: return .attribute
            default: return .element
            }
        }
    }
    
    /// PostFinance specific payment parameters
    public struct PaymentPOSTFINANCE: Codable, DynamicNodeEncoding, PaymentProtocol {
        public var xsiType: String = "tns:PaymentPOSTFINANCE"
        // properties inherited from PaymentProtocol
        public var amount: UInt32
        public var currency: String
        public var timeout: UInt32?
        public var manualClearing: Bool?
        public var useProfile: Bool?
        public var profileID: String?
        // own properties
        public var brand: String
        
        enum CodingKeys: String, CodingKey {
            case xsiType = "xsi:type"
            case amount, currency, timeout, manualClearing, useProfile, profileID, brand
        }
        
        public static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
            switch key {
            case PaymentPOSTFINANCE.CodingKeys.xsiType: return .attribute
            default: return .element
            }
        }
    }
    
    /// Secure direct debit specific payment parameters
    public struct PaymentELVSECURE: Codable, DynamicNodeEncoding, PaymentProtocol {
        public var xsiType: String = "tns:PaymentELVSECURE"
        // properties inherited from PaymentProtocol
        public var amount: UInt32
        public var currency: String
        public var timeout: UInt32?
        public var manualClearing: Bool?
        public var useProfile: Bool?
        public var profileID: String?
        // own properties
        public var brand: String
        public var mandateID: String?
        public var dateOfSignature: Date?
        
        enum CodingKeys: String, CodingKey {
            case xsiType = "xsi:type"
            case amount, currency, timeout, manualClearing, useProfile, profileID, brand, mandateID, dateOfSignature
        }
        
        public static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
            switch key {
            case PaymentELVSECURE.CodingKeys.xsiType: return .attribute
            default: return .element
            }
        }
    }
    
    /// iDEAL specific payment parameters
    public struct PaymentIDEAL: Codable, DynamicNodeEncoding, PaymentProtocol {
        public var xsiType: String = "tns:PaymentIDEAL"
        // properties inherited from PaymentProtocol
        public var amount: UInt32
        public var currency: String
        public var timeout: UInt32?
        public var manualClearing: Bool?
        public var useProfile: Bool?
        public var profileID: String?
        // own properties
        public var bank: String
        
        enum CodingKeys: String, CodingKey {
            case xsiType = "xsi:type"
            case amount, currency, timeout, manualClearing, useProfile, profileID, bank
        }
        
        public static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
            switch key {
            case PaymentIDEAL.CodingKeys.xsiType: return .attribute
            default: return .element
            }
        }
    }
    
    /// CreditCard specific profile payment parameters
    public struct ProfilePaymentCC: Codable, DynamicNodeEncoding, PaymentProtocol {
        public var xsiType: String = "tns:ProfilePaymentCC"
        // properties inherited from PaymentProtocol
        public var amount: UInt32
        public var currency: String
        public var timeout: UInt32?
        public var manualClearing: Bool?
        public var useProfile: Bool?
        public var profileID: String?
        // own properties
        public var cvc: String?
        public var auth3DS: Bool?
        
        enum CodingKeys: String, CodingKey {
            case xsiType = "xsi:type"
            case amount, currency, timeout, manualClearing, useProfile, profileID, cvc, auth3DS
        }
        
        public static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
            switch key {
            case ProfilePaymentCC.CodingKeys.xsiType: return .attribute
            default: return .element
            }
        }
    }
    
    /// Paybox specific profile payment parameters
    public struct ProfilePaymentPB: Codable, DynamicNodeEncoding, PaymentProtocol {
        public var xsiType: String = "tns:ProfilePaymentPB"
        // properties inherited from PaymentProtocol
        public var amount: UInt32
        public var currency: String
        public var timeout: UInt32?
        public var manualClearing: Bool?
        public var useProfile: Bool?
        public var profileID: String?
        // own properties
        public var payDays: UInt32?
        public var reserveDays: UInt32?
        
        enum CodingKeys: String, CodingKey {
            case xsiType = "xsi:type"
            case amount, currency, timeout, manualClearing, useProfile, profileID, payDays, reserveDays
        }
        
        public static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
            switch key {
            case ProfilePaymentPB.CodingKeys.xsiType: return .attribute
            default: return .element
            }
        }
    }
    
    /// Direct debit specific profile payment parameters
    public struct ProfilePaymentELV: Codable, DynamicNodeEncoding, PaymentProtocol {
        public var xsiType: String = "tns:ProfilePaymentELV"
        // properties inherited from PaymentProtocol
        public var amount: UInt32
        public var currency: String
        public var timeout: UInt32?
        public var manualClearing: Bool?
        public var useProfile: Bool?
        public var profileID: String?
        // own properties
        public var mandateID: String?
        public var dateOfSignature: Date?
        
        enum CodingKeys: String, CodingKey {
            case xsiType = "xsi:type"
            case amount, currency, timeout, manualClearing, useProfile, profileID, mandateID, dateOfSignature
        }
        
        public static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
            switch key {
            case ProfilePaymentELV.CodingKeys.xsiType: return .attribute
            default: return .element
            }
        }
    }
    
    /// enables Withdraw extensions
    public protocol WithdrawProtocol: Codable, DynamicNodeEncoding {
        var amount: UInt32 { get set }
        var currency: String { get set }
    }
    
    /// Common withdraw parameters
    public struct Withdraw: Codable, DynamicNodeEncoding, WithdrawProtocol {
        public var xsiType: String = "tns:Withdraw"
        public var amount: UInt32
        public var currency: String
        
        enum CodingKeys: String, CodingKey {
            case xsiType = "xsi:type"
            case amount, currency
        }
        
        public static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
            switch key {
            case Withdraw.CodingKeys.xsiType: return .attribute
            default: return .element
            }
        }
    }
    
    /// CreditCard specific withdraw parameters
    public struct WithdrawCC: Codable, DynamicNodeEncoding, WithdrawProtocol {
        public var xsiType: String = "tns:WithdrawCC"
        // properties inherited from WithdrawProtocol
        public var amount: UInt32
        public var currency: String
        // own properties
        public var brand: String
        public var identifier: String
        public var expiry: UInt32
        
        enum CodingKeys: String, CodingKey {
            case xsiType = "xsi:type"
            case amount, currency, brand, identifier, expiry
        }
        
        public static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
            switch key {
            case WithdrawCC.CodingKeys.xsiType: return .attribute
            default: return .element
            }
        }
    }
    
    /// Maestro Card specific withdraw parameters
    public struct WithdrawMAESTRO: Codable, DynamicNodeEncoding, WithdrawProtocol {
        public var xsiType: String = "tns:WithdrawMAESTRO"
        // properties inherited from WithdrawProtocol
        public var amount: UInt32
        public var currency: String
        // own properties
        public var identifier: String
        public var expiry: UInt32
        
        enum CodingKeys: String, CodingKey {
            case xsiType = "xsi:type"
            case amount, currency, identifier, expiry
        }
        
        public static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
            switch key {
            case WithdrawMAESTRO.CodingKeys.xsiType: return .attribute
            default: return .element
            }
        }
    }
    
    /// Direct debit specific withdraw parameters
    public struct WithdrawELV: Codable, DynamicNodeEncoding, WithdrawProtocol {
        public var xsiType: String = "tns:WithdrawELV"
        // properties inherited from WithdrawProtocol
        public var amount: UInt32
        public var currency: String
        // own properties
        public var brand: String
        public var iban: String
        public var bic: String
        
        enum CodingKeys: String, CodingKey {
            case xsiType = "xsi:type"
            case amount, currency, brand, iban, bic
        }
        
        public static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
            switch key {
            case WithdrawELV.CodingKeys.xsiType: return .attribute
            default: return .element
            }
        }
    }
    
    /// Shopping cart item
    public struct Item: Codable {
        public var number: String?
        public var productNr: String?
        public var description: String?
        public var package: String?
        public var quantity: UInt32?
        public var tax: Int32?
        public var amount: Int32
    }
    
    /// Shopping cart content
    public struct ShoppingCart: Codable {
        public var item: [Item]?
        public var discount: Int32?
        public var shippingCosts: Int32?
        public var shippingTax: Int32?
        public var tax: Int32?
    }
    
    /// enables IndustrySpecific extensions
    public protocol IndustrySpecificProtocol: Codable, DynamicNodeEncoding {
    }
    
    /// Common industry specific parameters
    public struct IndustrySpecific: Codable, DynamicNodeEncoding, IndustrySpecificProtocol {
        public var xsiType: String = "tns:IndustrySpecific"
        
        enum CodingKeys: String, CodingKey {
            case xsiType = "xsi:type"
        }
        
        public static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
            switch key {
            case IndustrySpecific.CodingKeys.xsiType: return .attribute
            default: return .element
            }
        }
    }
    
    /// Industry specific parameters for airline tickets
    public struct AirlineTicket: Codable, DynamicNodeEncoding, IndustrySpecificProtocol {
        public var xsiType: String = "tns:AirlineTicket"
        public var iataCode: String
        public var ticketID: String
        
        enum CodingKeys: String, CodingKey {
            case xsiType = "xsi:type"
            case iataCode, ticketID
        }
        
        public static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
            switch key {
            case AirlineTicket.CodingKeys.xsiType: return .attribute
            default: return .element
            }
        }
    }
    
    /// Customer address definition
    public struct Address: Codable {
        public var mode: AddressMode?
        public var name: String
        public var gender: Gender?
        public var birthday: Date?
        public var street: String?
        public var street2: String?
        public var zip: String?
        public var city: String?
        public var state: String?
        public var countryCode: String?
        public var email: String?
        public var phone: String?
    }
    
    /// Customer order definition
    public struct Order: Codable {
        public var clientIP: String?
        public var description: String?
        public var userField: String?
        public var shoppingCart: ShoppingCart?
        public var industrySpecific: IndustrySpecific?
        public var billing: Address?
        public var shipping: Address?
        
        enum CodingKeys: CodingKey {
            case clientIP, description, userField, shoppingCart, industrySpecific, billing, shipping
        }

        public init(
            clientIP: String? = nil,
            description: String? = nil,
            userField: String? = nil,
            shoppingCart: ShoppingCart? = nil,
            industrySpecific: IndustrySpecific? = nil,
            billing: Address? = nil,
            shipping: Address? = nil
        )  {
            self.clientIP = clientIP
            self.description = description
            self.userField = userField
            self.shoppingCart = shoppingCart
            self.industrySpecific = industrySpecific
            self.billing = billing
            self.shipping = shipping
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.clientIP = try container.decodeIfPresent(String.self, forKey: .clientIP)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.userField = try container.decodeIfPresent(String.self, forKey: .userField)
            self.shoppingCart = try container.decodeIfPresent(ShoppingCart.self, forKey: .shoppingCart)
            self.industrySpecific = try container.decodeIfPresent(IndustrySpecific.self, forKey: .industrySpecific)
            self.billing = try container.decodeIfPresent(Address.self, forKey: .billing)
            self.shipping = try container.decodeIfPresent(Address.self, forKey: .shipping)
        }

        public func encode(to encoder: any Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encodeIfPresent(self.clientIP, forKey: .clientIP)
            try container.encodeIfPresent(self.description, forKey: .description)
            try container.encodeIfPresent(self.userField, forKey: .userField)
            try container.encodeIfPresent(self.shoppingCart, forKey: .shoppingCart)
            try container.encodeIfPresent(self.industrySpecific, forKey: .industrySpecific)
            try container.encodeIfPresent(self.billing, forKey: .billing)
            try container.encodeIfPresent(self.shipping, forKey: .shipping)
        }
    }
    
    /// enables Callback extensions
    public protocol CallbackProtocol: Codable, DynamicNodeEncoding {
        var amount: UInt32? { get set }
    }
    
    /// Common payment callback parameters
    public struct Callback: Codable, DynamicNodeEncoding, CallbackProtocol {
        public var xsiType: String = "tns:Callback"
        public var amount: UInt32?
        
        enum CodingKeys: String, CodingKey {
            case xsiType = "xsi:type"
            case amount
        }
        
        public static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
            switch key {
            case Callback.CodingKeys.xsiType: return .attribute
            default: return .element
            }
        }
    }
    
    /// PayPal specific payment callback parameters
    public struct CallbackPAYPAL: Codable, DynamicNodeEncoding, CallbackProtocol {
        public var xsiType: String = "tns:CallbackPAYPAL"
        // properties inherited from CallbackProtocol
        public var amount: UInt32?
        // own properties
        public var cancel: Bool?
        
        enum CodingKeys: String, CodingKey {
            case xsiType = "xsi:type"
            case amount, cancel
        }
        
        public static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
            switch key {
            case CallbackPAYPAL.CodingKeys.xsiType: return .attribute
            default: return .element
            }
        }
    }
    
    /// Clearing transaction details
    public struct ClearingDetails: Codable {
        public var mpayTID: UInt64
        public var amount: UInt32?
        public var order: Order?
    }
    
    /// enables Transaction extensions
    public protocol TransactionProtocol: Codable, DynamicNodeEncoding {
        var mpayTID: UInt64 { get set }
        var tStatus: TStatus { get set }
        var stateID: UInt64? { get set }
        var tid: String { get set }
    }
    
    /// Transaction status
    public struct Transaction: Codable, DynamicNodeEncoding, TransactionProtocol {
        public var xsiType: String = "tns:Transaction"
        public var mpayTID: UInt64
        public var tStatus: TStatus
        public var stateID: UInt64?
        public var tid: String
        
        enum CodingKeys: String, CodingKey {
            case xsiType = "xsi:type"
            case mpayTID, tStatus, stateID, tid
        }
        
        public static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
            switch key {
            case Transaction.CodingKeys.xsiType: return .attribute
            default: return .element
            }
        }
    }
    
    /// Detailed transaction status
    public struct TransactionDetails: Codable, DynamicNodeEncoding, TransactionProtocol {
        public var xsiType: String = "tns:TransactionDetails"
        // properties inherited from TransactionProtocol
        public var mpayTID: UInt64
        public var tStatus: TStatus
        public var stateID: UInt64?
        public var tid: String
        // own properties
        public var orderDescription: String
        public var pType: PaymentType
        public var brand: String
        public var amount: UInt32
        public var currency: String
        public var bifStatus: String
        
        enum CodingKeys: String, CodingKey {
            case xsiType = "xsi:type"
            case mpayTID, tStatus, stateID, tid, orderDescription, pType, brand, amount, currency, bifStatus
        }
        
        public static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
            switch key {
            case TransactionDetails.CodingKeys.xsiType: return .attribute
            default: return .element
            }
        }
    }
    
    /// Basic name/value parameter
    public struct Parameter: Codable {
        public var name: String
        public var value: String
    }
    
    /// Entries in the transaction history
    public struct HistoryEntry: Codable {
        public var stateID: UInt64
        public var parentStateID: UInt64?
        public var txState: TxState
        public var amount: UInt32
        public var timeStamp: Date
        public var approvalCode: String?
        public var errNo: Int32?
        public var errText: String?
        public var profileStatus: String
    }
    
    /// Results of a confirmation-url call
    public struct Confirmation: Codable {
        public var status: ConfirmationStatus
        public var confirmed: Confirmed
        public var timeStamp: Date
        public var url: URL
        public var result: String
    }
    
    /// Configured payment method
    public struct PaymentMethod: Codable {
        public var pType: PaymentType
        public var brand: String
        public var description: String
    }
    
    /// Payment profile details
    public struct PaymentProfile: Codable {
        public var pMethodID: UInt32?
        public var profileID: String
        public var updated: Date
        public var identifier: String
        public var expires: Date?
        public var address: Address?
    }
    
    /// Customer profile with payment data
    public struct Profile: Codable {
        public var customerID: String
        public var updated: Date
        public var payment: [PaymentProfile]?
    }
    
    public struct SelectPayment: Codable {
        public var merchantID: UInt32
        public var mdxi: String
    }
    
    public struct SelectPaymentResponse: Codable {
        public var status: Status
        public var returnCode: String
        public var errNo: Int32?
        public var errText: String?
        public var location: URL
    }
    
    public struct CreatePaymentToken: Codable {
        public var merchantID: UInt32
        public var pType: PaymentType
        public var templateSet: String?
        public var style: String?
        public var customerID: String?
        public var profileID: String?
        public var domain: String?
        public var language: String?
    }
    
    public struct CreatePaymentTokenResponse: Codable {
        public var status: Status
        public var returnCode: String
        public var token: String?
        public var apiKey: String?
        public var errNo: Int32?
        public var errText: String?
        public var location: URL?
    }
    
    public struct CreateApplePayToken: Codable {
        public var merchantID: UInt32
        public var amount: UInt32
        public var currency: String
        public var order: Order?
        public var domain: String?
        public var language: String?
    }
    
    public struct CreateApplePayTokenResponse: Codable {
        public var status: Status
        public var returnCode: String
        public var token: String?
        public var apiKey: String?
        public var errNo: Int32?
        public var errText: String?
    }
    
    public struct CreateGooglePayToken: Codable {
        public var merchantID: UInt32
        public var amount: UInt32
        public var currency: String
        public var order: Order?
        public var language: String?
    }
    
    public struct CreateGooglePayTokenResponse: Codable {
        public var status: Status
        public var returnCode: String
        public var token: String?
        public var apiKey: String?
        public var errNo: Int32?
        public var errText: String?
    }
    
    public struct CreateCustomer: Codable {
        public var merchantID: UInt32
        public var tid: String?
        public var pType: PaymentType
        public var paymentData: PaymentDataProtocol
        public var customerID: String
        public var customerName: String?
        public var order: Order?
        public var billingAddress: Address?
        public var successURL: URL?
        public var errorURL: URL?
        public var confirmationURL: URL?
        public var language: String?
        
        enum CodingKeys: CodingKey {
            case merchantID, tid, pType, paymentData, customerID, customerName, order, billingAddress, successURL, errorURL, confirmationURL, language
        }

        public init(
            merchantID: UInt32,
            tid: String? = nil,
            pType: PaymentType,
            paymentData: PaymentDataProtocol,
            customerID: String,
            customerName: String? = nil,
            order: Order? = nil,
            billingAddress: Address? = nil,
            successURL: URL? = nil,
            errorURL: URL? = nil,
            confirmationURL: URL? = nil,
            language: String? = nil
        )  {
            self.merchantID = merchantID
            self.tid = tid
            self.pType = pType
            self.paymentData = paymentData
            self.customerID = customerID
            self.customerName = customerName
            self.order = order
            self.billingAddress = billingAddress
            self.successURL = successURL
            self.errorURL = errorURL
            self.confirmationURL = confirmationURL
            self.language = language
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.merchantID = try container.decode(UInt32.self, forKey: .merchantID)
            self.tid = try container.decodeIfPresent(String.self, forKey: .tid)
            self.pType = try container.decode(PaymentType.self, forKey: .pType)
            self.paymentData = try container.decode(PaymentData.self, forKey: .paymentData)
            self.customerID = try container.decode(String.self, forKey: .customerID)
            self.customerName = try container.decodeIfPresent(String.self, forKey: .customerName)
            self.order = try container.decodeIfPresent(Order.self, forKey: .order)
            self.billingAddress = try container.decodeIfPresent(Address.self, forKey: .billingAddress)
            self.successURL = try container.decodeIfPresent(URL.self, forKey: .successURL)
            self.errorURL = try container.decodeIfPresent(URL.self, forKey: .errorURL)
            self.confirmationURL = try container.decodeIfPresent(URL.self, forKey: .confirmationURL)
            self.language = try container.decodeIfPresent(String.self, forKey: .language)
        }

        public func encode(to encoder: any Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(self.merchantID, forKey: .merchantID)
            try container.encodeIfPresent(self.tid, forKey: .tid)
            try container.encode(self.pType, forKey: .pType)
            try container.encode(self.paymentData, forKey: .paymentData)
            try container.encode(self.customerID, forKey: .customerID)
            try container.encodeIfPresent(self.customerName, forKey: .customerName)
            try container.encodeIfPresent(self.order, forKey: .order)
            try container.encodeIfPresent(self.billingAddress, forKey: .billingAddress)
            try container.encodeIfPresent(self.successURL, forKey: .successURL)
            try container.encodeIfPresent(self.errorURL, forKey: .errorURL)
            try container.encodeIfPresent(self.confirmationURL, forKey: .confirmationURL)
            try container.encodeIfPresent(self.language, forKey: .language)
        }
    }
    
    public struct CreateCustomerResponse: Codable {
        public var status: Status
        public var returnCode: String
        public var mpayTID: UInt64?
        public var errNo: Int32?
        public var errText: String?
        public var location: URL?
    }
    
    public struct AcceptPayment: Codable {
        public var merchantID: UInt32
        public var tid: String
        public var pType: PaymentType
        public var payment: PaymentProtocol
        public var customerID: String?
        public var customerName: String?
        public var order: Order?
        public var successURL: URL?
        public var errorURL: URL?
        public var confirmationURL: URL?
        public var language: String?
        
        enum CodingKeys: CodingKey {
            case merchantID, tid, pType, payment, customerID, customerName, order, successURL, errorURL, confirmationURL, language
        }

        public init(
            merchantID: UInt32,
            tid: String,
            pType: PaymentType,
            payment: PaymentProtocol,
            customerID: String? = nil,
            customerName: String? = nil,
            order: Order? = nil,
            successURL: URL? = nil,
            errorURL: URL? = nil,
            confirmationURL: URL? = nil,
            language: String? = nil
        )  {
            self.merchantID = merchantID
            self.tid = tid
            self.pType = pType
            self.payment = payment
            self.customerID = customerID
            self.customerName = customerName
            self.order = order
            self.successURL = successURL
            self.errorURL = errorURL
            self.confirmationURL = confirmationURL
            self.language = language
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.merchantID = try container.decode(UInt32.self, forKey: .merchantID)
            self.tid = try container.decode(String.self, forKey: .tid)
            self.pType = try container.decode(PaymentType.self, forKey: .pType)
            self.payment = try container.decode(Payment.self, forKey: .payment)
            self.customerID = try container.decodeIfPresent(String.self, forKey: .customerID)
            self.customerName = try container.decodeIfPresent(String.self, forKey: .customerName)
            self.order = try container.decodeIfPresent(Order.self, forKey: .order)
            self.successURL = try container.decodeIfPresent(URL.self, forKey: .successURL)
            self.errorURL = try container.decodeIfPresent(URL.self, forKey: .errorURL)
            self.confirmationURL = try container.decodeIfPresent(URL.self, forKey: .confirmationURL)
            self.language = try container.decodeIfPresent(String.self, forKey: .language)
        }

        public func encode(to encoder: any Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(self.merchantID, forKey: .merchantID)
            try container.encode(self.tid, forKey: .tid)
            try container.encode(self.pType, forKey: .pType)
            try container.encode(self.payment, forKey: .payment)
            try container.encodeIfPresent(self.customerID, forKey: .customerID)
            try container.encodeIfPresent(self.customerName, forKey: .customerName)
            try container.encodeIfPresent(self.order, forKey: .order)
            try container.encodeIfPresent(self.successURL, forKey: .successURL)
            try container.encodeIfPresent(self.errorURL, forKey: .errorURL)
            try container.encodeIfPresent(self.confirmationURL, forKey: .confirmationURL)
            try container.encodeIfPresent(self.language, forKey: .language)
        }
    }
    
    public struct AcceptPaymentResponse: Codable {
        public var status: Status
        public var returnCode: String
        public var mpayTID: UInt64?
        public var errNo: Int32?
        public var errText: String?
        public var location: URL?
    }
    
    public struct ManualCallback: Codable {
        public var merchantID: UInt32
        public var mpayTID: UInt64
        public var paymentCallback: CallbackProtocol
        public var order: Order?
        
        enum CodingKeys: CodingKey {
            case merchantID, mpayTID, paymentCallback, order
        }

        public init(
            merchantID: UInt32,
            mpayTID: UInt64,
            paymentCallback: CallbackProtocol,
            order: Order? = nil
        )  {
            self.merchantID = merchantID
            self.mpayTID = mpayTID
            self.paymentCallback = paymentCallback
            self.order = order
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.merchantID = try container.decode(UInt32.self, forKey: .merchantID)
            self.mpayTID = try container.decode(UInt64.self, forKey: .mpayTID)
            self.paymentCallback = try container.decode(Callback.self, forKey: .paymentCallback)
            self.order = try container.decodeIfPresent(Order.self, forKey: .order)
        }

        public func encode(to encoder: any Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(self.merchantID, forKey: .merchantID)
            try container.encode(self.mpayTID, forKey: .mpayTID)
            try container.encode(self.paymentCallback, forKey: .paymentCallback)
            try container.encodeIfPresent(self.order, forKey: .order)
        }
    }
    
    public struct ManualCallbackResponse: Codable {
        public var status: Status
        public var returnCode: String
        public var mpayTID: UInt64?
        public var errNo: Int32?
        public var errText: String?
        public var location: URL?
    }
    
    public struct ManualClear: Codable {
        public var merchantID: UInt32
        public var clearingDetails: [ClearingDetails]?
    }
    
    public struct ManualClearResponse: Codable {
        public var status: Status
        public var returnCode: String
        public var transaction: [Transaction]?
    }
    
    public struct ManualReverse: Codable {
        public var merchantID: UInt32
        public var mpayTID: UInt64
    }
    
    public struct ManualReverseResponse: Codable {
        public var status: Status
        public var returnCode: String
        public var transaction: TransactionProtocol
        
        enum CodingKeys: CodingKey {
            case status, returnCode, transaction
        }

        public init(
            status: Status,
            returnCode: String,
            transaction: TransactionProtocol
        )  {
            self.status = status
            self.returnCode = returnCode
            self.transaction = transaction
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.status = try container.decode(Status.self, forKey: .status)
            self.returnCode = try container.decode(String.self, forKey: .returnCode)
            self.transaction = try container.decode(Transaction.self, forKey: .transaction)
        }

        public func encode(to encoder: any Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(self.status, forKey: .status)
            try container.encode(self.returnCode, forKey: .returnCode)
            try container.encode(self.transaction, forKey: .transaction)
        }
    }
    
    public struct ManualCredit: Codable {
        public var merchantID: UInt32
        public var mpayTID: UInt64
        public var stateID: UInt64?
        public var amount: UInt32?
    }
    
    public struct ManualCreditResponse: Codable {
        public var status: Status
        public var returnCode: String
        public var transaction: TransactionProtocol
        
        enum CodingKeys: CodingKey {
            case status, returnCode, transaction
        }

        public init(
            status: Status,
            returnCode: String,
            transaction: TransactionProtocol
        )  {
            self.status = status
            self.returnCode = returnCode
            self.transaction = transaction
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.status = try container.decode(Status.self, forKey: .status)
            self.returnCode = try container.decode(String.self, forKey: .returnCode)
            self.transaction = try container.decode(Transaction.self, forKey: .transaction)
        }

        public func encode(to encoder: any Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(self.status, forKey: .status)
            try container.encode(self.returnCode, forKey: .returnCode)
            try container.encode(self.transaction, forKey: .transaction)
        }
    }
    
    public struct AcceptWithdraw: Codable {
        public var merchantID: UInt32
        public var tid: String
        public var pType: PaymentType
        public var withdraw: WithdrawProtocol
        public var customerID: String?
        public var customerName: String?
        public var order: Order?
        public var confirmationURL: URL?
        public var language: String?
        
        enum CodingKeys: CodingKey {
            case merchantID, tid, pType, withdraw, customerID, customerName, order, confirmationURL, language
        }

        public init(
            merchantID: UInt32,
            tid: String,
            pType: PaymentType,
            withdraw: WithdrawProtocol,
            customerID: String? = nil,
            customerName: String? = nil,
            order: Order? = nil,
            confirmationURL: URL? = nil,
            language: String? = nil
        )  {
            self.merchantID = merchantID
            self.tid = tid
            self.pType = pType
            self.withdraw = withdraw
            self.customerID = customerID
            self.customerName = customerName
            self.order = order
            self.confirmationURL = confirmationURL
            self.language = language
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.merchantID = try container.decode(UInt32.self, forKey: .merchantID)
            self.tid = try container.decode(String.self, forKey: .tid)
            self.pType = try container.decode(PaymentType.self, forKey: .pType)
            self.withdraw = try container.decode(Withdraw.self, forKey: .withdraw)
            self.customerID = try container.decodeIfPresent(String.self, forKey: .customerID)
            self.customerName = try container.decodeIfPresent(String.self, forKey: .customerName)
            self.order = try container.decodeIfPresent(Order.self, forKey: .order)
            self.confirmationURL = try container.decodeIfPresent(URL.self, forKey: .confirmationURL)
            self.language = try container.decodeIfPresent(String.self, forKey: .language)
        }

        public func encode(to encoder: any Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(self.merchantID, forKey: .merchantID)
            try container.encode(self.tid, forKey: .tid)
            try container.encode(self.pType, forKey: .pType)
            try container.encode(self.withdraw, forKey: .withdraw)
            try container.encodeIfPresent(self.customerID, forKey: .customerID)
            try container.encodeIfPresent(self.customerName, forKey: .customerName)
            try container.encodeIfPresent(self.order, forKey: .order)
            try container.encodeIfPresent(self.confirmationURL, forKey: .confirmationURL)
            try container.encodeIfPresent(self.language, forKey: .language)
        }
    }
    
    public struct AcceptWithdrawResponse: Codable {
        public var status: Status
        public var returnCode: String
        public var mpayTID: UInt64?
        public var errNo: Int32?
        public var errText: String?
    }
    
    public struct TransactionStatus: Codable {
        public var merchantID: UInt32
        public var mpayTID: UInt64?
        public var tid: String?
    }
    
    public struct TransactionStatusResponse: Codable {
        public var status: Status
        public var returnCode: String
        public var parameter: [Parameter]?
    }
    
    public struct TransactionConfirmation: Codable {
        public var merchantID: UInt32
        public var mpayTID: UInt64
    }
    
    public struct TransactionConfirmationResponse: Codable {
        public var status: Status
        public var returnCode: String
        public var confirmation: [Confirmation]?
    }
    
    public struct TransactionHistory: Codable {
        public var merchantID: UInt32
        public var mpayTID: UInt64
    }
    
    public struct TransactionHistoryResponse: Codable {
        public var status: Status
        public var returnCode: String
        public var historyEntry: [HistoryEntry]?
    }
    
    public struct ListNotCleared: Codable {
        public var merchantID: UInt32
        public var begin: UInt32?
        public var size: UInt32?
        public var sortField: SortField?
        public var sortType: SortType?
        public var listInProgress: Bool?
    }
    
    public struct ListNotClearedResponse: Codable {
        public var status: Status
        public var returnCode: String
        public var transactionDetails: [TransactionDetails]?
        public var all: UInt32
    }
    
    public struct ListPaymentMethods: Codable {
        public var merchantID: UInt32
        public var pType: PaymentType?
    }
    
    public struct ListPaymentMethodsResponse: Codable {
        public var status: Status
        public var returnCode: String
        public var paymentMethod: [PaymentMethod]?
        public var all: UInt32
    }
    
    public struct CreateProfile: Codable {
        public var merchantID: UInt32
        public var mdxi: String
    }
    
    public struct CreateProfileResponse: Codable {
        public var status: Status
        public var returnCode: String
        public var errNo: Int32?
        public var errText: String?
        public var location: URL?
    }
    
    public struct ListProfiles: Codable {
        public var merchantID: UInt32
        public var customerID: String?
        public var expiredBy: Date?
        public var begin: UInt32?
        public var size: UInt32?
    }
    
    public struct ListProfilesResponse: Codable {
        public var status: Status
        public var returnCode: String
        public var profile: [Profile]?
        public var all: UInt32
    }
    
    public struct DeleteProfile: Codable {
        public var merchantID: UInt32
        public var customerID: String
        public var profileID: String?
    }
    
    public struct DeleteProfileResponse: Codable {
        public var status: Status
        public var returnCode: String
    }
}
