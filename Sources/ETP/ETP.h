#import <Foundation/Foundation.h>
#import "USAdditions.h"
#import <libxml/tree.h>
#import <libxml/xmlsave.h>
#import "USGlobals.h"
#import <objc/runtime.h>
@class ETP_PaymentData;
@class ETP_PaymentDataTOKEN;
@class ETP_PaymentDataCC;
@class ETP_PaymentDataELV;
@class ETP_Payment;
@class ETP_PaymentTOKEN;
@class ETP_PaymentCC;
@class ETP_PaymentCB;
@class ETP_PaymentMAESTRO;
@class ETP_PaymentEPS;
@class ETP_PaymentPB;
@class ETP_PaymentELV;
@class ETP_PaymentGIROPAY;
@class ETP_PaymentPAYPAL;
@class ETP_PaymentBILLPAY;
@class ETP_PaymentKLARNA;
@class ETP_PaymentMASTERPASS;
@class ETP_PaymentPSC;
@class ETP_PaymentPOSTFINANCE;
@class ETP_PaymentIDEAL;
@class ETP_ProfilePaymentCC;
@class ETP_ProfilePaymentPB;
@class ETP_ProfilePaymentELV;
@class ETP_Withdraw;
@class ETP_WithdrawCC;
@class ETP_WithdrawMAESTRO;
@class ETP_WithdrawELV;
@class ETP_Item;
@class ETP_ShoppingCart;
@class ETP_IndustrySpecific;
@class ETP_AirlineTicket;
@class ETP_Address;
@class ETP_Order;
@class ETP_Callback;
@class ETP_CallbackPAYPAL;
@class ETP_CallbackMASTERPASS;
@class ETP_ClearingDetails;
@class ETP_Transaction;
@class ETP_TransactionDetails;
@class ETP_Parameter;
@class ETP_HistoryEntry;
@class ETP_Confirmation;
@class ETP_PaymentMethod;
@class ETP_PaymentProfile;
@class ETP_Profile;
@class ETP_SelectPayment;
@class ETP_SelectPaymentResponse;
@class ETP_CreatePaymentToken;
@class ETP_CreatePaymentTokenResponse;
@class ETP_CreateApplePayToken;
@class ETP_CreateApplePayTokenResponse;
@class ETP_CreateGooglePayToken;
@class ETP_CreateGooglePayTokenResponse;
@class ETP_CreateCustomer;
@class ETP_CreateCustomerResponse;
@class ETP_AcceptPayment;
@class ETP_AcceptPaymentResponse;
@class ETP_ManualCallback;
@class ETP_ManualCallbackResponse;
@class ETP_ManualClear;
@class ETP_ManualClearResponse;
@class ETP_ManualReverse;
@class ETP_ManualReverseResponse;
@class ETP_ManualCredit;
@class ETP_ManualCreditResponse;
@class ETP_AcceptWithdraw;
@class ETP_AcceptWithdrawResponse;
@class ETP_TransactionStatus;
@class ETP_TransactionStatusResponse;
@class ETP_TransactionConfirmation;
@class ETP_TransactionConfirmationResponse;
@class ETP_TransactionHistory;
@class ETP_TransactionHistoryResponse;
@class ETP_ListNotCleared;
@class ETP_ListNotClearedResponse;
@class ETP_ListPaymentMethods;
@class ETP_ListPaymentMethodsResponse;
@class ETP_CreateProfile;
@class ETP_CreateProfileResponse;
@class ETP_ListProfiles;
@class ETP_ListProfilesResponse;
@class ETP_DeleteProfile;
@class ETP_DeleteProfileResponse;
typedef enum {
	ETP_Status_none = 0,
	ETP_Status_OK,
	ETP_Status_ERROR,
} ETP_Status;
ETP_Status ETP_Status_enumFromString(NSString *string);
NSString * ETP_Status_stringFromEnum(ETP_Status enumValue);
typedef enum {
	ETP_PaymentType_none = 0,
	ETP_PaymentType_CC,
	ETP_PaymentType_CB,
	ETP_PaymentType_MAESTRO,
	ETP_PaymentType_EPS,
	ETP_PaymentType_PB,
	ETP_PaymentType_PSC,
	ETP_PaymentType_CASHTICKET,
	ETP_PaymentType_ELV,
	ETP_PaymentType_QUICK,
	ETP_PaymentType_GIROPAY,
	ETP_PaymentType_PAYPAL,
	ETP_PaymentType_MPASS,
	ETP_PaymentType_BILLPAY,
	ETP_PaymentType_INVOICE,
	ETP_PaymentType_HP,
	ETP_PaymentType_SAFETYPAY,
	ETP_PaymentType_KLARNA,
	ETP_PaymentType_SOFORT,
	ETP_PaymentType_MASTERPASS,
	ETP_PaymentType_PAYOLUTION,
	ETP_PaymentType_POSTFINANCE,
	ETP_PaymentType_ELVSECURE,
	ETP_PaymentType_IDEAL,
	ETP_PaymentType_ALIPAY,
	ETP_PaymentType_WECHATPAY,
    ETP_PaymentType_PREPAYMENT,
	ETP_PaymentType_TOKEN,
	ETP_PaymentType_PROFILE,
} ETP_PaymentType;
ETP_PaymentType ETP_PaymentType_enumFromString(NSString *string);
NSString * ETP_PaymentType_stringFromEnum(ETP_PaymentType enumValue);
typedef enum {
	ETP_TxState_none = 0,
	ETP_TxState_INIT,
	ETP_TxState_CREATED,
	ETP_TxState_AUTHORIZE,
	ETP_TxState_SUSPENDED,
	ETP_TxState_REDIRECTED,
	ETP_TxState_CALLBACK,
	ETP_TxState_RESERVED,
	ETP_TxState_RESERVED_REVERSAL,
	ETP_TxState_EXECUTE,
	ETP_TxState_BILLED,
	ETP_TxState_BILLED_REVERSAL,
	ETP_TxState_REVOKE,
	ETP_TxState_CREDITED,
	ETP_TxState_CREDITED_REVERSAL,
	ETP_TxState_REJECT,
	ETP_TxState_ARCHIVED,
	ETP_TxState_WITHDRAW,
	ETP_TxState_WITHDRAWN,
	ETP_TxState_ERROR,
} ETP_TxState;
ETP_TxState ETP_TxState_enumFromString(NSString *string);
NSString * ETP_TxState_stringFromEnum(ETP_TxState enumValue);
typedef enum {
	ETP_TStatus_none = 0,
	ETP_TStatus_NOTFOUND,
	ETP_TStatus_FAILED,
	ETP_TStatus_RESERVED,
	ETP_TStatus_BILLED,
	ETP_TStatus_REVERSED,
	ETP_TStatus_CREDITED,
} ETP_TStatus;
ETP_TStatus ETP_TStatus_enumFromString(NSString *string);
NSString * ETP_TStatus_stringFromEnum(ETP_TStatus enumValue);
typedef enum {
	ETP_ConfirmationStatus_none = 0,
	ETP_ConfirmationStatus_OK,
	ETP_ConfirmationStatus_ERROR,
	ETP_ConfirmationStatus_PENDING,
	ETP_ConfirmationStatus_FAILURE,
} ETP_ConfirmationStatus;
ETP_ConfirmationStatus ETP_ConfirmationStatus_enumFromString(NSString *string);
NSString * ETP_ConfirmationStatus_stringFromEnum(ETP_ConfirmationStatus enumValue);
typedef enum {
	ETP_Confirmed_none = 0,
	ETP_Confirmed_VALIDATED,
	ETP_Confirmed_RESERVED,
	ETP_Confirmed_RESERVED_REVERSAL,
	ETP_Confirmed_BILLED,
	ETP_Confirmed_BILLED_REVERSAL,
	ETP_Confirmed_REVERSED,
	ETP_Confirmed_CREDITED,
	ETP_Confirmed_CREDITED_REVERSAL,
	ETP_Confirmed_WITHDRAWN,
	ETP_Confirmed_SUSPENDED,
	ETP_Confirmed_ERROR,
} ETP_Confirmed;
ETP_Confirmed ETP_Confirmed_enumFromString(NSString *string);
NSString * ETP_Confirmed_stringFromEnum(ETP_Confirmed enumValue);
typedef enum {
	ETP_SortField_none = 0,
	ETP_SortField_MPAYTID,
	ETP_SortField_PTYPE,
	ETP_SortField_BRAND,
	ETP_SortField_CURRENCY,
	ETP_SortField_TID,
	ETP_SortField_ORDERDESC,
	ETP_SortField_ORDERNUMBER,
	ETP_SortField_CURRDATE,
	ETP_SortField_CURRTIME,
} ETP_SortField;
ETP_SortField ETP_SortField_enumFromString(NSString *string);
NSString * ETP_SortField_stringFromEnum(ETP_SortField enumValue);
typedef enum {
	ETP_SortType_none = 0,
	ETP_SortType_ASC,
	ETP_SortType_DESC,
} ETP_SortType;
ETP_SortType ETP_SortType_enumFromString(NSString *string);
NSString * ETP_SortType_stringFromEnum(ETP_SortType enumValue);
typedef enum {
	ETP_AddressMode_none = 0,
	ETP_AddressMode_READONLY,
	ETP_AddressMode_READWRITE,
} ETP_AddressMode;
ETP_AddressMode ETP_AddressMode_enumFromString(NSString *string);
NSString * ETP_AddressMode_stringFromEnum(ETP_AddressMode enumValue);
typedef enum {
	ETP_Gender_none = 0,
	ETP_Gender_MALE,
	ETP_Gender_FEMALE,
} ETP_Gender;
ETP_Gender ETP_Gender_enumFromString(NSString *string);
NSString * ETP_Gender_stringFromEnum(ETP_Gender enumValue);
@interface ETP_PaymentData : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	USBoolean * validate;
	NSString * profileID;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_PaymentData *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, retain) USBoolean * validate;
@property (nonatomic, retain) NSString * profileID;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_PaymentDataTOKEN : ETP_PaymentData {
/* elements */
	NSString * token;
	USBoolean * auth3DS;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_PaymentDataTOKEN *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (nonatomic, retain) NSString * token;
@property (nonatomic, retain) USBoolean * auth3DS;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_PaymentDataCC : ETP_PaymentData {
/* elements */
	NSString * brand;
	NSString * identifier;
	NSNumber * expiry;
	NSString * cvc;
	USBoolean * auth3DS;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_PaymentDataCC *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (nonatomic, retain) NSString * brand;
@property (nonatomic, retain) NSString * identifier;
@property (nonatomic, retain) NSNumber * expiry;
@property (nonatomic, retain) NSString * cvc;
@property (nonatomic, retain) USBoolean * auth3DS;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_PaymentDataELV : ETP_PaymentData {
/* elements */
	NSString * brand;
	NSString * iban;
	NSString * bic;
	NSString * mandateID;
	NSDate * dateOfSignature;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_PaymentDataELV *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (nonatomic, retain) NSString * brand;
@property (nonatomic, retain) NSString * iban;
@property (nonatomic, retain) NSString * bic;
@property (nonatomic, retain) NSString * mandateID;
@property (nonatomic, retain) NSDate * dateOfSignature;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_Payment : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	NSNumber * amount;
	NSString * currency;
	NSNumber * timeout;
	USBoolean * manualClearing;
	USBoolean * useProfile;
	NSString * profileID;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_Payment *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, retain) NSNumber * amount;
@property (nonatomic, retain) NSString * currency;
@property (nonatomic, retain) NSNumber * timeout;
@property (nonatomic, retain) USBoolean * manualClearing;
@property (nonatomic, retain) USBoolean * useProfile;
@property (nonatomic, retain) NSString * profileID;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_PaymentTOKEN : ETP_Payment {
/* elements */
	NSString * token;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_PaymentTOKEN *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (nonatomic, retain) NSString * token;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_PaymentCC : ETP_Payment {
/* elements */
	NSString * brand;
	NSString * identifier;
	NSNumber * expiry;
	NSString * cvc;
	USBoolean * auth3DS;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_PaymentCC *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (nonatomic, retain) NSString * brand;
@property (nonatomic, retain) NSString * identifier;
@property (nonatomic, retain) NSNumber * expiry;
@property (nonatomic, retain) NSString * cvc;
@property (nonatomic, retain) USBoolean * auth3DS;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_PaymentCB : ETP_Payment {
/* elements */
	NSString * identifier;
	NSNumber * expiry;
	NSString * cvc;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_PaymentCB *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (nonatomic, retain) NSString * identifier;
@property (nonatomic, retain) NSNumber * expiry;
@property (nonatomic, retain) NSString * cvc;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_PaymentMAESTRO : ETP_Payment {
/* elements */
	NSString * identifier;
	NSNumber * expiry;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_PaymentMAESTRO *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (nonatomic, retain) NSString * identifier;
@property (nonatomic, retain) NSNumber * expiry;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_PaymentEPS : ETP_Payment {
/* elements */
	NSString * brand;
	NSNumber * bankID;
	NSString * bic;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_PaymentEPS *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (nonatomic, retain) NSString * brand;
@property (nonatomic, retain) NSNumber * bankID;
@property (nonatomic, retain) NSString * bic;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_PaymentPB : ETP_Payment {
/* elements */
	NSString * identifier;
	NSNumber * payDays;
	NSNumber * reserveDays;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_PaymentPB *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (nonatomic, retain) NSString * identifier;
@property (nonatomic, retain) NSNumber * payDays;
@property (nonatomic, retain) NSNumber * reserveDays;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_PaymentELV : ETP_Payment {
/* elements */
	NSString * brand;
	NSString * iban;
	NSString * bic;
	NSString * mandateID;
	NSDate * dateOfSignature;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_PaymentELV *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (nonatomic, retain) NSString * brand;
@property (nonatomic, retain) NSString * iban;
@property (nonatomic, retain) NSString * bic;
@property (nonatomic, retain) NSString * mandateID;
@property (nonatomic, retain) NSDate * dateOfSignature;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_PaymentGIROPAY : ETP_Payment {
/* elements */
	NSString * iban;
	NSString * bic;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_PaymentGIROPAY *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (nonatomic, retain) NSString * iban;
@property (nonatomic, retain) NSString * bic;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_PaymentPAYPAL : ETP_Payment {
/* elements */
	USBoolean * commit;
	NSString * custom;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_PaymentPAYPAL *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (nonatomic, retain) USBoolean * commit;
@property (nonatomic, retain) NSString * custom;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_PaymentBILLPAY : ETP_Payment {
/* elements */
	NSString * brand;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_PaymentBILLPAY *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (nonatomic, retain) NSString * brand;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_PaymentKLARNA : ETP_Payment {
/* elements */
	NSString * brand;
	NSString * personalNumber;
	NSNumber * pClass;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_PaymentKLARNA *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (nonatomic, retain) NSString * brand;
@property (nonatomic, retain) NSString * personalNumber;
@property (nonatomic, retain) NSNumber * pClass;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_PaymentMASTERPASS : ETP_Payment {
/* elements */
	USBoolean * auth3DS;
	USBoolean * commit;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_PaymentMASTERPASS *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (nonatomic, retain) USBoolean * auth3DS;
@property (nonatomic, retain) USBoolean * commit;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_PaymentPSC : ETP_Payment {
/* elements */
	NSString * brand;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_PaymentPSC *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (nonatomic, retain) NSString * brand;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_PaymentPOSTFINANCE : ETP_Payment {
/* elements */
	NSString * brand;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_PaymentPOSTFINANCE *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (nonatomic, retain) NSString * brand;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_PaymentIDEAL : ETP_Payment {
/* elements */
	NSString * bank;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_PaymentIDEAL *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (nonatomic, retain) NSString * bank;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_ProfilePaymentCC : ETP_Payment {
/* elements */
	NSString * cvc;
	USBoolean * auth3DS;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_ProfilePaymentCC *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (nonatomic, retain) NSString * cvc;
@property (nonatomic, retain) USBoolean * auth3DS;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_ProfilePaymentPB : ETP_Payment {
/* elements */
	NSNumber * payDays;
	NSNumber * reserveDays;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_ProfilePaymentPB *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (nonatomic, retain) NSNumber * payDays;
@property (nonatomic, retain) NSNumber * reserveDays;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_ProfilePaymentELV : ETP_Payment {
/* elements */
	NSString * mandateID;
	NSDate * dateOfSignature;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_ProfilePaymentELV *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (nonatomic, retain) NSString * mandateID;
@property (nonatomic, retain) NSDate * dateOfSignature;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_Withdraw : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	NSNumber * amount;
	NSString * currency;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_Withdraw *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, retain) NSNumber * amount;
@property (nonatomic, retain) NSString * currency;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_WithdrawCC : ETP_Withdraw {
/* elements */
	NSString * brand;
	NSString * identifier;
	NSNumber * expiry;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_WithdrawCC *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (nonatomic, retain) NSString * brand;
@property (nonatomic, retain) NSString * identifier;
@property (nonatomic, retain) NSNumber * expiry;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_WithdrawMAESTRO : ETP_Withdraw {
/* elements */
	NSString * identifier;
	NSNumber * expiry;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_WithdrawMAESTRO *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (nonatomic, retain) NSString * identifier;
@property (nonatomic, retain) NSNumber * expiry;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_WithdrawELV : ETP_Withdraw {
/* elements */
	NSString * brand;
	NSString * iban;
	NSString * bic;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_WithdrawELV *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (nonatomic, retain) NSString * brand;
@property (nonatomic, retain) NSString * iban;
@property (nonatomic, retain) NSString * bic;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_Item : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	NSString * number;
	NSString * productNr;
	NSString * description;
	NSString * package;
	NSNumber * quantity;
	NSNumber * tax;
	NSNumber * amount;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_Item *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, retain) NSString * number;
@property (nonatomic, retain) NSString * productNr;
@property (nonatomic, retain) NSString * description;
@property (nonatomic, retain) NSString * package;
@property (nonatomic, retain) NSNumber * quantity;
@property (nonatomic, retain) NSNumber * tax;
@property (nonatomic, retain) NSNumber * amount;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_ShoppingCart : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	NSMutableArray *item;
	NSNumber * discount;
	NSNumber * shippingCosts;
	NSNumber * shippingTax;
	NSNumber * tax;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_ShoppingCart *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
- (void)addItem:(ETP_Item *)toAdd;
@property (nonatomic, readonly) NSMutableArray * item;
@property (nonatomic, retain) NSNumber * discount;
@property (nonatomic, retain) NSNumber * shippingCosts;
@property (nonatomic, retain) NSNumber * shippingTax;
@property (nonatomic, retain) NSNumber * tax;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_IndustrySpecific : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_IndustrySpecific *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_AirlineTicket : ETP_IndustrySpecific {
/* elements */
	NSString * iataCode;
	NSString * ticketID;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_AirlineTicket *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (nonatomic, retain) NSString * iataCode;
@property (nonatomic, retain) NSString * ticketID;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_Address : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	ETP_AddressMode mode;
	NSString * name;
	ETP_Gender gender;
	NSDate * birthday;
	NSString * street;
	NSString * street2;
	NSString * zip;
	NSString * city;
	NSString * state;
	NSString * countryCode;
	NSString * email;
	NSString * phone;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_Address *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, assign) ETP_AddressMode mode;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, assign) ETP_Gender gender;
@property (nonatomic, retain) NSDate * birthday;
@property (nonatomic, retain) NSString * street;
@property (nonatomic, retain) NSString * street2;
@property (nonatomic, retain) NSString * zip;
@property (nonatomic, retain) NSString * city;
@property (nonatomic, retain) NSString * state;
@property (nonatomic, retain) NSString * countryCode;
@property (nonatomic, retain) NSString * email;
@property (nonatomic, retain) NSString * phone;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_Order : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	NSString * clientIP;
	NSString * description;
	NSString * userField;
	ETP_ShoppingCart * shoppingCart;
	ETP_IndustrySpecific * industrySpecific;
	ETP_Address * billing;
	ETP_Address * shipping;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_Order *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, retain) NSString * clientIP;
@property (nonatomic, retain) NSString * description;
@property (nonatomic, retain) NSString * userField;
@property (nonatomic, retain) ETP_ShoppingCart * shoppingCart;
@property (nonatomic, retain) ETP_IndustrySpecific * industrySpecific;
@property (nonatomic, retain) ETP_Address * billing;
@property (nonatomic, retain) ETP_Address * shipping;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_Callback : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	NSNumber * amount;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_Callback *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, retain) NSNumber * amount;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_CallbackPAYPAL : ETP_Callback {
/* elements */
	USBoolean * cancel;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_CallbackPAYPAL *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (nonatomic, retain) USBoolean * cancel;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_CallbackMASTERPASS : ETP_Callback {
/* elements */
	USBoolean * cancel;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_CallbackMASTERPASS *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (nonatomic, retain) USBoolean * cancel;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_ClearingDetails : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	NSNumber * mpayTID;
	NSNumber * amount;
	ETP_Order * order;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_ClearingDetails *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, retain) NSNumber * mpayTID;
@property (nonatomic, retain) NSNumber * amount;
@property (nonatomic, retain) ETP_Order * order;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_Transaction : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	NSNumber * mpayTID;
	ETP_TStatus tStatus;
	NSNumber * stateID;
	NSString * tid;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_Transaction *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, retain) NSNumber * mpayTID;
@property (nonatomic, assign) ETP_TStatus tStatus;
@property (nonatomic, retain) NSNumber * stateID;
@property (nonatomic, retain) NSString * tid;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_TransactionDetails : ETP_Transaction {
/* elements */
	NSString * orderDescription;
	ETP_PaymentType pType;
	NSString * brand;
	NSNumber * amount;
	NSString * currency;
	NSString * bifStatus;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_TransactionDetails *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (nonatomic, retain) NSString * orderDescription;
@property (nonatomic, assign) ETP_PaymentType pType;
@property (nonatomic, retain) NSString * brand;
@property (nonatomic, retain) NSNumber * amount;
@property (nonatomic, retain) NSString * currency;
@property (nonatomic, retain) NSString * bifStatus;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_Parameter : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	NSString * name;
	NSString * value;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_Parameter *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * value;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_HistoryEntry : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	NSNumber * stateID;
	NSNumber * parentStateID;
	ETP_TxState txState;
	NSNumber * amount;
	NSDate * timeStamp;
	NSString * approvalCode;
	NSNumber * errNo;
	NSString * errText;
	NSString * profileStatus;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_HistoryEntry *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, retain) NSNumber * stateID;
@property (nonatomic, retain) NSNumber * parentStateID;
@property (nonatomic, assign) ETP_TxState txState;
@property (nonatomic, retain) NSNumber * amount;
@property (nonatomic, retain) NSDate * timeStamp;
@property (nonatomic, retain) NSString * approvalCode;
@property (nonatomic, retain) NSNumber * errNo;
@property (nonatomic, retain) NSString * errText;
@property (nonatomic, retain) NSString * profileStatus;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_Confirmation : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	ETP_ConfirmationStatus status;
	ETP_Confirmed confirmed;
	NSDate * timeStamp;
	NSString * url;
	NSString * result;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_Confirmation *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, assign) ETP_ConfirmationStatus status;
@property (nonatomic, assign) ETP_Confirmed confirmed;
@property (nonatomic, retain) NSDate * timeStamp;
@property (nonatomic, retain) NSString * url;
@property (nonatomic, retain) NSString * result;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_PaymentMethod : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	ETP_PaymentType pType;
	NSString * brand;
	NSString * description;
/* attributes */
	NSNumber * id_;
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_PaymentMethod *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, assign) ETP_PaymentType pType;
@property (nonatomic, retain) NSString * brand;
@property (nonatomic, retain) NSString * description;
/* attributes */
- (NSDictionary *)attributes;
@property (nonatomic, retain) NSNumber * id_;
@end
@interface ETP_PaymentProfile : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	NSNumber * pMethodID;
	NSString * profileID;
	NSDate * updated;
	NSString * identifier;
	NSDate * expires;
	ETP_Address * address;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_PaymentProfile *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, retain) NSNumber * pMethodID;
@property (nonatomic, retain) NSString * profileID;
@property (nonatomic, retain) NSDate * updated;
@property (nonatomic, retain) NSString * identifier;
@property (nonatomic, retain) NSDate * expires;
@property (nonatomic, retain) ETP_Address * address;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_Profile : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	NSString * customerID;
	NSDate * updated;
	NSMutableArray *payment;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_Profile *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, retain) NSString * customerID;
@property (nonatomic, retain) NSDate * updated;
- (void)addPayment:(ETP_PaymentProfile *)toAdd;
@property (nonatomic, readonly) NSMutableArray * payment;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_SelectPayment : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	NSNumber * merchantID;
	NSString * mdxi;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_SelectPayment *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, retain) NSNumber * merchantID;
@property (nonatomic, retain) NSString * mdxi;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_SelectPaymentResponse : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	ETP_Status status;
	NSString * returnCode;
	NSNumber * errNo;
	NSString * errText;
	NSString * location;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_SelectPaymentResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, assign) ETP_Status status;
@property (nonatomic, retain) NSString * returnCode;
@property (nonatomic, retain) NSNumber * errNo;
@property (nonatomic, retain) NSString * errText;
@property (nonatomic, retain) NSString * location;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_CreatePaymentToken : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	NSNumber * merchantID;
	ETP_PaymentType pType;
	NSString * templateSet;
	NSString * style_;
	NSString * customerID;
	NSString * profileID;
	NSString * domain;
	NSString * language;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_CreatePaymentToken *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, retain) NSNumber * merchantID;
@property (nonatomic, assign) ETP_PaymentType pType;
@property (nonatomic, retain) NSString * templateSet;
@property (nonatomic, retain) NSString * style_;
@property (nonatomic, retain) NSString * customerID;
@property (nonatomic, retain) NSString * profileID;
@property (nonatomic, retain) NSString * domain;
@property (nonatomic, retain) NSString * language;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_CreatePaymentTokenResponse : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	ETP_Status status;
	NSString * returnCode;
	NSString * token;
	NSString * apiKey;
	NSNumber * errNo;
	NSString * errText;
	NSString * location;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_CreatePaymentTokenResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, assign) ETP_Status status;
@property (nonatomic, retain) NSString * returnCode;
@property (nonatomic, retain) NSString * token;
@property (nonatomic, retain) NSString * apiKey;
@property (nonatomic, retain) NSNumber * errNo;
@property (nonatomic, retain) NSString * errText;
@property (nonatomic, retain) NSString * location;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_CreateApplePayToken : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
    NSNumber * merchantID;
    NSNumber * amount;
    NSString * currency;
    ETP_Order * order;
    NSString * domain;
    NSString * language;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_CreateApplePayToken *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, retain) NSNumber * merchantID;
@property (nonatomic, retain) NSNumber * amount;
@property (nonatomic, retain) NSString * currency;
@property (nonatomic, retain) ETP_Order * order;
@property (nonatomic, retain) NSString * domain;
@property (nonatomic, retain) NSString * language;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_CreateApplePayTokenResponse : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
    ETP_Status status;
    NSString * returnCode;
    NSString * token;
    NSString * apiKey;
    NSNumber * errNo;
    NSString * errText;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_CreateApplePayTokenResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, assign) ETP_Status status;
@property (nonatomic, retain) NSString * returnCode;
@property (nonatomic, retain) NSString * token;
@property (nonatomic, retain) NSString * apiKey;
@property (nonatomic, retain) NSNumber * errNo;
@property (nonatomic, retain) NSString * errText;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_CreateGooglePayToken : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
    NSNumber * merchantID;
    NSNumber * amount;
    NSString * currency;
    ETP_Order * order;
    NSString * language;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_CreateApplePayToken *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, retain) NSNumber * merchantID;
@property (nonatomic, retain) NSNumber * amount;
@property (nonatomic, retain) NSString * currency;
@property (nonatomic, retain) ETP_Order * order;
@property (nonatomic, retain) NSString * language;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_CreateGooglePayTokenResponse : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
    ETP_Status status;
    NSString * returnCode;
    NSString * token;
    NSString * apiKey;
    NSNumber * errNo;
    NSString * errText;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_CreateGooglePayTokenResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, assign) ETP_Status status;
@property (nonatomic, retain) NSString * returnCode;
@property (nonatomic, retain) NSString * token;
@property (nonatomic, retain) NSString * apiKey;
@property (nonatomic, retain) NSNumber * errNo;
@property (nonatomic, retain) NSString * errText;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_CreateCustomer : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	NSNumber * merchantID;
	NSString * tid;
	ETP_PaymentType pType;
	ETP_PaymentData * paymentData;
	NSString * customerID;
	NSString * customerName;
	ETP_Order * order;
	ETP_Address * billingAddress;
	NSString * successURL;
	NSString * errorURL;
	NSString * confirmationURL;
	NSString * language;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_CreateCustomer *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, retain) NSNumber * merchantID;
@property (nonatomic, retain) NSString * tid;
@property (nonatomic, assign) ETP_PaymentType pType;
@property (nonatomic, retain) ETP_PaymentData * paymentData;
@property (nonatomic, retain) NSString * customerID;
@property (nonatomic, retain) NSString * customerName;
@property (nonatomic, retain) ETP_Order * order;
@property (nonatomic, retain) ETP_Address * billingAddress;
@property (nonatomic, retain) NSString * successURL;
@property (nonatomic, retain) NSString * errorURL;
@property (nonatomic, retain) NSString * confirmationURL;
@property (nonatomic, retain) NSString * language;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_CreateCustomerResponse : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	ETP_Status status;
	NSString * returnCode;
	NSNumber * mpayTID;
	NSNumber * errNo;
	NSString * errText;
	NSString * location;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_CreateCustomerResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, assign) ETP_Status status;
@property (nonatomic, retain) NSString * returnCode;
@property (nonatomic, retain) NSNumber * mpayTID;
@property (nonatomic, retain) NSNumber * errNo;
@property (nonatomic, retain) NSString * errText;
@property (nonatomic, retain) NSString * location;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_AcceptPayment : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	NSNumber * merchantID;
	NSString * tid;
	ETP_PaymentType pType;
	ETP_Payment * payment;
	NSString * customerID;
	NSString * customerName;
	ETP_Order * order;
	NSString * successURL;
	NSString * errorURL;
	NSString * confirmationURL;
	NSString * language;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_AcceptPayment *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, retain) NSNumber * merchantID;
@property (nonatomic, retain) NSString * tid;
@property (nonatomic, assign) ETP_PaymentType pType;
@property (nonatomic, retain) ETP_Payment * payment;
@property (nonatomic, retain) NSString * customerID;
@property (nonatomic, retain) NSString * customerName;
@property (nonatomic, retain) ETP_Order * order;
@property (nonatomic, retain) NSString * successURL;
@property (nonatomic, retain) NSString * errorURL;
@property (nonatomic, retain) NSString * confirmationURL;
@property (nonatomic, retain) NSString * language;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_AcceptPaymentResponse : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	ETP_Status status;
	NSString * returnCode;
	NSNumber * mpayTID;
	NSNumber * errNo;
	NSString * errText;
	NSString * location;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_AcceptPaymentResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, assign) ETP_Status status;
@property (nonatomic, retain) NSString * returnCode;
@property (nonatomic, retain) NSNumber * mpayTID;
@property (nonatomic, retain) NSNumber * errNo;
@property (nonatomic, retain) NSString * errText;
@property (nonatomic, retain) NSString * location;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_ManualCallback : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	NSNumber * merchantID;
	NSNumber * mpayTID;
	ETP_Callback * paymentCallback;
	ETP_Order * order;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_ManualCallback *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, retain) NSNumber * merchantID;
@property (nonatomic, retain) NSNumber * mpayTID;
@property (nonatomic, retain) ETP_Callback * paymentCallback;
@property (nonatomic, retain) ETP_Order * order;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_ManualCallbackResponse : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	ETP_Status status;
	NSString * returnCode;
	NSNumber * mpayTID;
	NSNumber * errNo;
	NSString * errText;
	NSString * location;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_ManualCallbackResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, assign) ETP_Status status;
@property (nonatomic, retain) NSString * returnCode;
@property (nonatomic, retain) NSNumber * mpayTID;
@property (nonatomic, retain) NSNumber * errNo;
@property (nonatomic, retain) NSString * errText;
@property (nonatomic, retain) NSString * location;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_ManualClear : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	NSNumber * merchantID;
	NSMutableArray *clearingDetails;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_ManualClear *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, retain) NSNumber * merchantID;
- (void)addClearingDetails:(ETP_ClearingDetails *)toAdd;
@property (nonatomic, readonly) NSMutableArray * clearingDetails;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_ManualClearResponse : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	ETP_Status status;
	NSString * returnCode;
	NSMutableArray *transaction;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_ManualClearResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, assign) ETP_Status status;
@property (nonatomic, retain) NSString * returnCode;
- (void)addTransaction:(ETP_Transaction *)toAdd;
@property (nonatomic, readonly) NSMutableArray * transaction;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_ManualReverse : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	NSNumber * merchantID;
	NSNumber * mpayTID;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_ManualReverse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, retain) NSNumber * merchantID;
@property (nonatomic, retain) NSNumber * mpayTID;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_ManualReverseResponse : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	ETP_Status status;
	NSString * returnCode;
	ETP_Transaction * transaction;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_ManualReverseResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, assign) ETP_Status status;
@property (nonatomic, retain) NSString * returnCode;
@property (nonatomic, retain) ETP_Transaction * transaction;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_ManualCredit : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	NSNumber * merchantID;
	NSNumber * mpayTID;
	NSNumber * stateID;
	NSNumber * amount;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_ManualCredit *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, retain) NSNumber * merchantID;
@property (nonatomic, retain) NSNumber * mpayTID;
@property (nonatomic, retain) NSNumber * stateID;
@property (nonatomic, retain) NSNumber * amount;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_ManualCreditResponse : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	ETP_Status status;
	NSString * returnCode;
	ETP_Transaction * transaction;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_ManualCreditResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, assign) ETP_Status status;
@property (nonatomic, retain) NSString * returnCode;
@property (nonatomic, retain) ETP_Transaction * transaction;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_AcceptWithdraw : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	NSNumber * merchantID;
	NSString * tid;
	ETP_PaymentType pType;
	ETP_Withdraw * withdraw;
	NSString * customerID;
	NSString * customerName;
	ETP_Order * order;
	NSString * confirmationURL;
	NSString * language;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_AcceptWithdraw *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, retain) NSNumber * merchantID;
@property (nonatomic, retain) NSString * tid;
@property (nonatomic, assign) ETP_PaymentType pType;
@property (nonatomic, retain) ETP_Withdraw * withdraw;
@property (nonatomic, retain) NSString * customerID;
@property (nonatomic, retain) NSString * customerName;
@property (nonatomic, retain) ETP_Order * order;
@property (nonatomic, retain) NSString * confirmationURL;
@property (nonatomic, retain) NSString * language;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_AcceptWithdrawResponse : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	ETP_Status status;
	NSString * returnCode;
	NSNumber * mpayTID;
	NSNumber * errNo;
	NSString * errText;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_AcceptWithdrawResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, assign) ETP_Status status;
@property (nonatomic, retain) NSString * returnCode;
@property (nonatomic, retain) NSNumber * mpayTID;
@property (nonatomic, retain) NSNumber * errNo;
@property (nonatomic, retain) NSString * errText;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_TransactionStatus : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	NSNumber * merchantID;
	NSNumber * mpayTID;
	NSString * tid;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_TransactionStatus *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, retain) NSNumber * merchantID;
@property (nonatomic, retain) NSNumber * mpayTID;
@property (nonatomic, retain) NSString * tid;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_TransactionStatusResponse : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	ETP_Status status;
	NSString * returnCode;
	NSMutableArray *parameter;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_TransactionStatusResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, assign) ETP_Status status;
@property (nonatomic, retain) NSString * returnCode;
- (void)addParameter:(ETP_Parameter *)toAdd;
@property (nonatomic, readonly) NSMutableArray * parameter;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_TransactionConfirmation : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	NSNumber * merchantID;
	NSNumber * mpayTID;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_TransactionConfirmation *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, retain) NSNumber * merchantID;
@property (nonatomic, retain) NSNumber * mpayTID;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_TransactionConfirmationResponse : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	ETP_Status status;
	NSString * returnCode;
	NSMutableArray *confirmation;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_TransactionConfirmationResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, assign) ETP_Status status;
@property (nonatomic, retain) NSString * returnCode;
- (void)addConfirmation:(ETP_Confirmation *)toAdd;
@property (nonatomic, readonly) NSMutableArray * confirmation;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_TransactionHistory : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	NSNumber * merchantID;
	NSNumber * mpayTID;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_TransactionHistory *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, retain) NSNumber * merchantID;
@property (nonatomic, retain) NSNumber * mpayTID;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_TransactionHistoryResponse : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	ETP_Status status;
	NSString * returnCode;
	NSMutableArray *historyEntry;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_TransactionHistoryResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, assign) ETP_Status status;
@property (nonatomic, retain) NSString * returnCode;
- (void)addHistoryEntry:(ETP_HistoryEntry *)toAdd;
@property (nonatomic, readonly) NSMutableArray * historyEntry;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_ListNotCleared : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	NSNumber * merchantID;
	NSNumber * begin;
	NSNumber * size_;
	ETP_SortField sortField;
	ETP_SortType sortType;
	USBoolean * listInProgress;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_ListNotCleared *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, retain) NSNumber * merchantID;
@property (nonatomic, retain) NSNumber * begin;
@property (nonatomic, retain) NSNumber * size_;
@property (nonatomic, assign) ETP_SortField sortField;
@property (nonatomic, assign) ETP_SortType sortType;
@property (nonatomic, retain) USBoolean * listInProgress;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_ListNotClearedResponse : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	ETP_Status status;
	NSString * returnCode;
	NSMutableArray *transactionDetails;
	NSNumber * all;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_ListNotClearedResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, assign) ETP_Status status;
@property (nonatomic, retain) NSString * returnCode;
- (void)addTransactionDetails:(ETP_TransactionDetails *)toAdd;
@property (nonatomic, readonly) NSMutableArray * transactionDetails;
@property (nonatomic, retain) NSNumber * all;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_ListPaymentMethods : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	NSNumber * merchantID;
	ETP_PaymentType pType;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_ListPaymentMethods *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, retain) NSNumber * merchantID;
@property (nonatomic, assign) ETP_PaymentType pType;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_ListPaymentMethodsResponse : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	ETP_Status status;
	NSString * returnCode;
	NSMutableArray *paymentMethod;
	NSNumber * all;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_ListPaymentMethodsResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, assign) ETP_Status status;
@property (nonatomic, retain) NSString * returnCode;
- (void)addPaymentMethod:(ETP_PaymentMethod *)toAdd;
@property (nonatomic, readonly) NSMutableArray * paymentMethod;
@property (nonatomic, retain) NSNumber * all;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_CreateProfile : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	NSNumber * merchantID;
	NSString * mdxi;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_CreateProfile *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, retain) NSNumber * merchantID;
@property (nonatomic, retain) NSString * mdxi;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_CreateProfileResponse : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	ETP_Status status;
	NSString * returnCode;
	NSNumber * errNo;
	NSString * errText;
	NSString * location;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_CreateProfileResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, assign) ETP_Status status;
@property (nonatomic, retain) NSString * returnCode;
@property (nonatomic, retain) NSNumber * errNo;
@property (nonatomic, retain) NSString * errText;
@property (nonatomic, retain) NSString * location;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_ListProfiles : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	NSNumber * merchantID;
	NSString * customerID;
	NSDate * expiredBy;
	NSNumber * begin;
	NSNumber * size_;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_ListProfiles *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, retain) NSNumber * merchantID;
@property (nonatomic, retain) NSString * customerID;
@property (nonatomic, retain) NSDate * expiredBy;
@property (nonatomic, retain) NSNumber * begin;
@property (nonatomic, retain) NSNumber * size_;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_ListProfilesResponse : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	ETP_Status status;
	NSString * returnCode;
	NSMutableArray *profile;
	NSNumber * all;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_ListProfilesResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, assign) ETP_Status status;
@property (nonatomic, retain) NSString * returnCode;
- (void)addProfile:(ETP_Profile *)toAdd;
@property (nonatomic, readonly) NSMutableArray * profile;
@property (nonatomic, retain) NSNumber * all;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_DeleteProfile : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	NSNumber * merchantID;
	NSString * customerID;
	NSString * profileID;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_DeleteProfile *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, retain) NSNumber * merchantID;
@property (nonatomic, retain) NSString * customerID;
@property (nonatomic, retain) NSString * profileID;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface ETP_DeleteProfileResponse : NSObject <NSCoding> {
SOAPSigner *soapSigner;
/* elements */
	ETP_Status status;
	NSString * returnCode;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (ETP_DeleteProfileResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
@property (retain) SOAPSigner *soapSigner;
/* elements */
@property (nonatomic, assign) ETP_Status status;
@property (nonatomic, retain) NSString * returnCode;
/* attributes */
- (NSDictionary *)attributes;
@end
/* Cookies handling provided by http://en.wikibooks.org/wiki/Programming:WebObjects/Web_Services/Web_Service_Provider */
#import <libxml/parser.h>
#import "ns1.h"
#import "ETP.h"
@class ETPBinding;
@interface ETP : NSObject {
	
}
+ (ETPBinding *)ETPBinding;
@end
@class ETPBindingResponse;
@class ETPBindingOperation;
@protocol ETPBindingResponseDelegate <NSObject>
- (void) operation:(ETPBindingOperation *)operation completedWithResponse:(ETPBindingResponse *)response;
@optional
- (void) operation:(ETPBindingOperation *)operation sentSOAPRequest:(NSString *)request;
- (void) operation:(ETPBindingOperation *)operation receivedSOAPResponse:(NSString *)response;
@end
#define kServerAnchorCertificates   @"kServerAnchorCertificates"
#define kServerAnchorsOnly          @"kServerAnchorsOnly"
#define kClientIdentity             @"kClientIdentity"
#define kClientCertificates         @"kClientCertificates"
#define kClientUsername             @"kClientUsername"
#define kClientPassword             @"kClientPassword"
#define kNSURLCredentialPersistence @"kNSURLCredentialPersistence"
#define kValidateResult             @"kValidateResult"
@interface ETPBinding : NSObject <ETPBindingResponseDelegate> {
	NSURL *address;
	NSTimeInterval timeout;
	NSMutableArray *cookies;
	NSMutableDictionary *customHeaders;
	BOOL logXMLInOut;
	BOOL ignoreEmptyResponse;
	BOOL synchronousOperationComplete;
	id<SSLCredentialsManaging> sslManager;
	SOAPSigner *soapSigner;
}
@property (nonatomic, copy) NSURL *address;
@property (nonatomic) BOOL logXMLInOut;
@property (nonatomic) BOOL ignoreEmptyResponse;
@property (nonatomic) NSTimeInterval timeout;
@property (nonatomic, retain) NSMutableArray *cookies;
@property (nonatomic, retain) NSMutableDictionary *customHeaders;
@property (nonatomic, retain) id<SSLCredentialsManaging> sslManager;
@property (nonatomic, retain) SOAPSigner *soapSigner;
+ (NSTimeInterval) defaultTimeout;
- (id)initWithAddress:(NSString *)anAddress;
- (void)sendHTTPCallUsingBody:(NSString *)body soapAction:(NSString *)soapAction forOperation:(ETPBindingOperation *)operation;
- (void)addCookie:(NSHTTPCookie *)toAdd;
- (NSString *)MIMEType;
- (ETPBindingResponse *)SelectPaymentUsingParameters:(ETP_SelectPayment *)aParameters ;
- (void)SelectPaymentAsyncUsingParameters:(ETP_SelectPayment *)aParameters  delegate:(id<ETPBindingResponseDelegate>)responseDelegate;
- (ETPBindingResponse *)CreatePaymentTokenUsingParameters:(ETP_CreatePaymentToken *)aParameters ;
- (void)CreatePaymentTokenAsyncUsingParameters:(ETP_CreatePaymentToken *)aParameters  delegate:(id<ETPBindingResponseDelegate>)responseDelegate;
- (ETPBindingResponse *)CreateApplePayTokenUsingParameters:(ETP_CreateApplePayToken *)aParameters ;
- (void)CreateApplePayTokenAsyncUsingParameters:(ETP_CreateApplePayToken *)aParameters  delegate:(id<ETPBindingResponseDelegate>)responseDelegate;
- (ETPBindingResponse *)CreateGooglePayTokenUsingParameters:(ETP_CreateGooglePayToken *)aParameters ;
- (void)CreateGooglePayTokenAsyncUsingParameters:(ETP_CreateGooglePayToken *)aParameters  delegate:(id<ETPBindingResponseDelegate>)responseDelegate;
- (ETPBindingResponse *)CreateCustomerUsingParameters:(ETP_CreateCustomer *)aParameters ;
- (void)CreateCustomerAsyncUsingParameters:(ETP_CreateCustomer *)aParameters  delegate:(id<ETPBindingResponseDelegate>)responseDelegate;
- (ETPBindingResponse *)AcceptPaymentUsingParameters:(ETP_AcceptPayment *)aParameters ;
- (void)AcceptPaymentAsyncUsingParameters:(ETP_AcceptPayment *)aParameters  delegate:(id<ETPBindingResponseDelegate>)responseDelegate;
- (ETPBindingResponse *)ManualCallbackUsingParameters:(ETP_ManualCallback *)aParameters ;
- (void)ManualCallbackAsyncUsingParameters:(ETP_ManualCallback *)aParameters  delegate:(id<ETPBindingResponseDelegate>)responseDelegate;
- (ETPBindingResponse *)ManualClearUsingParameters:(ETP_ManualClear *)aParameters ;
- (void)ManualClearAsyncUsingParameters:(ETP_ManualClear *)aParameters  delegate:(id<ETPBindingResponseDelegate>)responseDelegate;
- (ETPBindingResponse *)ManualReverseUsingParameters:(ETP_ManualReverse *)aParameters ;
- (void)ManualReverseAsyncUsingParameters:(ETP_ManualReverse *)aParameters  delegate:(id<ETPBindingResponseDelegate>)responseDelegate;
- (ETPBindingResponse *)ManualCreditUsingParameters:(ETP_ManualCredit *)aParameters ;
- (void)ManualCreditAsyncUsingParameters:(ETP_ManualCredit *)aParameters  delegate:(id<ETPBindingResponseDelegate>)responseDelegate;
- (ETPBindingResponse *)AcceptWithdrawUsingParameters:(ETP_AcceptWithdraw *)aParameters ;
- (void)AcceptWithdrawAsyncUsingParameters:(ETP_AcceptWithdraw *)aParameters  delegate:(id<ETPBindingResponseDelegate>)responseDelegate;
- (ETPBindingResponse *)TransactionStatusUsingParameters:(ETP_TransactionStatus *)aParameters ;
- (void)TransactionStatusAsyncUsingParameters:(ETP_TransactionStatus *)aParameters  delegate:(id<ETPBindingResponseDelegate>)responseDelegate;
- (ETPBindingResponse *)TransactionConfirmationUsingParameters:(ETP_TransactionConfirmation *)aParameters ;
- (void)TransactionConfirmationAsyncUsingParameters:(ETP_TransactionConfirmation *)aParameters  delegate:(id<ETPBindingResponseDelegate>)responseDelegate;
- (ETPBindingResponse *)TransactionHistoryUsingParameters:(ETP_TransactionHistory *)aParameters ;
- (void)TransactionHistoryAsyncUsingParameters:(ETP_TransactionHistory *)aParameters  delegate:(id<ETPBindingResponseDelegate>)responseDelegate;
- (ETPBindingResponse *)ListNotClearedUsingParameters:(ETP_ListNotCleared *)aParameters ;
- (void)ListNotClearedAsyncUsingParameters:(ETP_ListNotCleared *)aParameters  delegate:(id<ETPBindingResponseDelegate>)responseDelegate;
- (ETPBindingResponse *)ListPaymentMethodsUsingParameters:(ETP_ListPaymentMethods *)aParameters ;
- (void)ListPaymentMethodsAsyncUsingParameters:(ETP_ListPaymentMethods *)aParameters  delegate:(id<ETPBindingResponseDelegate>)responseDelegate;
- (ETPBindingResponse *)CreateProfileUsingParameters:(ETP_CreateProfile *)aParameters ;
- (void)CreateProfileAsyncUsingParameters:(ETP_CreateProfile *)aParameters  delegate:(id<ETPBindingResponseDelegate>)responseDelegate;
- (ETPBindingResponse *)ListProfilesUsingParameters:(ETP_ListProfiles *)aParameters ;
- (void)ListProfilesAsyncUsingParameters:(ETP_ListProfiles *)aParameters  delegate:(id<ETPBindingResponseDelegate>)responseDelegate;
- (ETPBindingResponse *)DeleteProfileUsingParameters:(ETP_DeleteProfile *)aParameters ;
- (void)DeleteProfileAsyncUsingParameters:(ETP_DeleteProfile *)aParameters  delegate:(id<ETPBindingResponseDelegate>)responseDelegate;
@end
@interface ETPBindingOperation : NSOperation {
	ETPBinding *binding;
	ETPBindingResponse *response;
	id<ETPBindingResponseDelegate> delegate;
	NSMutableData *responseData;
	NSURLConnection *urlConnection;
}
@property (nonatomic, retain) ETPBinding *binding;
@property (nonatomic, readonly) ETPBindingResponse *response;
@property (nonatomic, assign) id<ETPBindingResponseDelegate> delegate;
@property (nonatomic, retain) NSMutableData *responseData;
@property (nonatomic, retain) NSURLConnection *urlConnection;
- (id)initWithBinding:(ETPBinding *)aBinding delegate:(id<ETPBindingResponseDelegate>)aDelegate;
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error;
@end
@interface ETPBinding_SelectPayment : ETPBindingOperation {
	ETP_SelectPayment * parameters;
}
@property (nonatomic, retain) ETP_SelectPayment * parameters;
- (id)initWithBinding:(ETPBinding *)aBinding delegate:(id<ETPBindingResponseDelegate>)aDelegate
	parameters:(ETP_SelectPayment *)aParameters
;
@end
@interface ETPBinding_CreatePaymentToken : ETPBindingOperation {
	ETP_CreatePaymentToken * parameters;
}
@property (nonatomic, retain) ETP_CreatePaymentToken * parameters;
- (id)initWithBinding:(ETPBinding *)aBinding delegate:(id<ETPBindingResponseDelegate>)aDelegate
	parameters:(ETP_CreatePaymentToken *)aParameters
;
@end
@interface ETPBinding_CreateApplePayToken : ETPBindingOperation {
    ETP_CreateApplePayToken * parameters;
}
@property (nonatomic, retain) ETP_CreateApplePayToken * parameters;
- (id)initWithBinding:(ETPBinding *)aBinding delegate:(id<ETPBindingResponseDelegate>)aDelegate
    parameters:(ETP_CreateApplePayToken *)aParameters
;
@end
@interface ETPBinding_CreateGooglePayToken : ETPBindingOperation {
    ETP_CreateGooglePayToken * parameters;
}
@property (nonatomic, retain) ETP_CreateGooglePayToken * parameters;
- (id)initWithBinding:(ETPBinding *)aBinding delegate:(id<ETPBindingResponseDelegate>)aDelegate
    parameters:(ETP_CreateGooglePayToken *)aParameters
;
@end
@interface ETPBinding_CreateCustomer : ETPBindingOperation {
	ETP_CreateCustomer * parameters;
}
@property (nonatomic, retain) ETP_CreateCustomer * parameters;
- (id)initWithBinding:(ETPBinding *)aBinding delegate:(id<ETPBindingResponseDelegate>)aDelegate
	parameters:(ETP_CreateCustomer *)aParameters
;
@end
@interface ETPBinding_AcceptPayment : ETPBindingOperation {
	ETP_AcceptPayment * parameters;
}
@property (nonatomic, retain) ETP_AcceptPayment * parameters;
- (id)initWithBinding:(ETPBinding *)aBinding delegate:(id<ETPBindingResponseDelegate>)aDelegate
	parameters:(ETP_AcceptPayment *)aParameters
;
@end
@interface ETPBinding_ManualCallback : ETPBindingOperation {
	ETP_ManualCallback * parameters;
}
@property (nonatomic, retain) ETP_ManualCallback * parameters;
- (id)initWithBinding:(ETPBinding *)aBinding delegate:(id<ETPBindingResponseDelegate>)aDelegate
	parameters:(ETP_ManualCallback *)aParameters
;
@end
@interface ETPBinding_ManualClear : ETPBindingOperation {
	ETP_ManualClear * parameters;
}
@property (nonatomic, retain) ETP_ManualClear * parameters;
- (id)initWithBinding:(ETPBinding *)aBinding delegate:(id<ETPBindingResponseDelegate>)aDelegate
	parameters:(ETP_ManualClear *)aParameters
;
@end
@interface ETPBinding_ManualReverse : ETPBindingOperation {
	ETP_ManualReverse * parameters;
}
@property (nonatomic, retain) ETP_ManualReverse * parameters;
- (id)initWithBinding:(ETPBinding *)aBinding delegate:(id<ETPBindingResponseDelegate>)aDelegate
	parameters:(ETP_ManualReverse *)aParameters
;
@end
@interface ETPBinding_ManualCredit : ETPBindingOperation {
	ETP_ManualCredit * parameters;
}
@property (nonatomic, retain) ETP_ManualCredit * parameters;
- (id)initWithBinding:(ETPBinding *)aBinding delegate:(id<ETPBindingResponseDelegate>)aDelegate
	parameters:(ETP_ManualCredit *)aParameters
;
@end
@interface ETPBinding_AcceptWithdraw : ETPBindingOperation {
	ETP_AcceptWithdraw * parameters;
}
@property (nonatomic, retain) ETP_AcceptWithdraw * parameters;
- (id)initWithBinding:(ETPBinding *)aBinding delegate:(id<ETPBindingResponseDelegate>)aDelegate
	parameters:(ETP_AcceptWithdraw *)aParameters
;
@end
@interface ETPBinding_TransactionStatus : ETPBindingOperation {
	ETP_TransactionStatus * parameters;
}
@property (nonatomic, retain) ETP_TransactionStatus * parameters;
- (id)initWithBinding:(ETPBinding *)aBinding delegate:(id<ETPBindingResponseDelegate>)aDelegate
	parameters:(ETP_TransactionStatus *)aParameters
;
@end
@interface ETPBinding_TransactionConfirmation : ETPBindingOperation {
	ETP_TransactionConfirmation * parameters;
}
@property (nonatomic, retain) ETP_TransactionConfirmation * parameters;
- (id)initWithBinding:(ETPBinding *)aBinding delegate:(id<ETPBindingResponseDelegate>)aDelegate
	parameters:(ETP_TransactionConfirmation *)aParameters
;
@end
@interface ETPBinding_TransactionHistory : ETPBindingOperation {
	ETP_TransactionHistory * parameters;
}
@property (nonatomic, retain) ETP_TransactionHistory * parameters;
- (id)initWithBinding:(ETPBinding *)aBinding delegate:(id<ETPBindingResponseDelegate>)aDelegate
	parameters:(ETP_TransactionHistory *)aParameters
;
@end
@interface ETPBinding_ListNotCleared : ETPBindingOperation {
	ETP_ListNotCleared * parameters;
}
@property (nonatomic, retain) ETP_ListNotCleared * parameters;
- (id)initWithBinding:(ETPBinding *)aBinding delegate:(id<ETPBindingResponseDelegate>)aDelegate
	parameters:(ETP_ListNotCleared *)aParameters
;
@end
@interface ETPBinding_ListPaymentMethods : ETPBindingOperation {
	ETP_ListPaymentMethods * parameters;
}
@property (nonatomic, retain) ETP_ListPaymentMethods * parameters;
- (id)initWithBinding:(ETPBinding *)aBinding delegate:(id<ETPBindingResponseDelegate>)aDelegate
	parameters:(ETP_ListPaymentMethods *)aParameters
;
@end
@interface ETPBinding_CreateProfile : ETPBindingOperation {
	ETP_CreateProfile * parameters;
}
@property (nonatomic, retain) ETP_CreateProfile * parameters;
- (id)initWithBinding:(ETPBinding *)aBinding delegate:(id<ETPBindingResponseDelegate>)aDelegate
	parameters:(ETP_CreateProfile *)aParameters
;
@end
@interface ETPBinding_ListProfiles : ETPBindingOperation {
	ETP_ListProfiles * parameters;
}
@property (nonatomic, retain) ETP_ListProfiles * parameters;
- (id)initWithBinding:(ETPBinding *)aBinding delegate:(id<ETPBindingResponseDelegate>)aDelegate
	parameters:(ETP_ListProfiles *)aParameters
;
@end
@interface ETPBinding_DeleteProfile : ETPBindingOperation {
	ETP_DeleteProfile * parameters;
}
@property (nonatomic, retain) ETP_DeleteProfile * parameters;
- (id)initWithBinding:(ETPBinding *)aBinding delegate:(id<ETPBindingResponseDelegate>)aDelegate
	parameters:(ETP_DeleteProfile *)aParameters
;
@end
@interface ETPBinding_envelope : NSObject {
}
+ (ETPBinding_envelope *)sharedInstance;
- (NSString *)serializedFormUsingHeaderElements:(NSDictionary *)headerElements bodyElements:(NSDictionary *)bodyElements bodyKeys:(NSArray *)bodyKeys;
@end
@interface ETPBindingResponse : NSObject {
	NSArray *headers;
	NSArray *bodyParts;
	NSError *error;
}
@property (nonatomic, retain) NSArray *headers;
@property (nonatomic, retain) NSArray *bodyParts;
@property (nonatomic, retain) NSError *error;
@end
