#import "ETP.h"
#import <libxml/xmlstring.h>
#if TARGET_OS_IPHONE
#import <CFNetwork/CFNetwork.h>
#endif
#ifndef ADVANCED_AUTHENTICATION
#define ADVANCED_AUTHENTICATION 0
#endif
#if ADVANCED_AUTHENTICATION && TARGET_OS_IPHONE
#import <Security/Security.h>
#endif
ETP_Status ETP_Status_enumFromString(NSString *string)
{
	if([string isEqualToString:@"OK"]) {
		return ETP_Status_OK;
	}
	if([string isEqualToString:@"ERROR"]) {
		return ETP_Status_ERROR;
	}
	
	return ETP_Status_none;
}
NSString * ETP_Status_stringFromEnum(ETP_Status enumValue)
{
	switch (enumValue) {
		case ETP_Status_OK:
			return @"OK";
			break;
		case ETP_Status_ERROR:
			return @"ERROR";
			break;
		default:
			return @"";
	}
}
ETP_PaymentType ETP_PaymentType_enumFromString(NSString *string)
{
	if([string isEqualToString:@"CC"]) {
		return ETP_PaymentType_CC;
	}
	if([string isEqualToString:@"CB"]) {
		return ETP_PaymentType_CB;
	}
	if([string isEqualToString:@"MAESTRO"]) {
		return ETP_PaymentType_MAESTRO;
	}
	if([string isEqualToString:@"EPS"]) {
		return ETP_PaymentType_EPS;
	}
	if([string isEqualToString:@"PB"]) {
		return ETP_PaymentType_PB;
	}
	if([string isEqualToString:@"PSC"]) {
		return ETP_PaymentType_PSC;
	}
	if([string isEqualToString:@"CASHTICKET"]) {
		return ETP_PaymentType_CASHTICKET;
	}
	if([string isEqualToString:@"ELV"]) {
		return ETP_PaymentType_ELV;
	}
	if([string isEqualToString:@"QUICK"]) {
		return ETP_PaymentType_QUICK;
	}
	if([string isEqualToString:@"GIROPAY"]) {
		return ETP_PaymentType_GIROPAY;
	}
	if([string isEqualToString:@"PAYPAL"]) {
		return ETP_PaymentType_PAYPAL;
	}
	if([string isEqualToString:@"MPASS"]) {
		return ETP_PaymentType_MPASS;
	}
	if([string isEqualToString:@"BILLPAY"]) {
		return ETP_PaymentType_BILLPAY;
	}
	if([string isEqualToString:@"INVOICE"]) {
		return ETP_PaymentType_INVOICE;
	}
	if([string isEqualToString:@"HP"]) {
		return ETP_PaymentType_HP;
	}
	if([string isEqualToString:@"SAFETYPAY"]) {
		return ETP_PaymentType_SAFETYPAY;
	}
	if([string isEqualToString:@"KLARNA"]) {
		return ETP_PaymentType_KLARNA;
	}
	if([string isEqualToString:@"SOFORT"]) {
		return ETP_PaymentType_SOFORT;
	}
	if([string isEqualToString:@"MASTERPASS"]) {
		return ETP_PaymentType_MASTERPASS;
	}
	if([string isEqualToString:@"PAYOLUTION"]) {
		return ETP_PaymentType_PAYOLUTION;
	}
	if([string isEqualToString:@"POSTFINANCE"]) {
		return ETP_PaymentType_POSTFINANCE;
	}
	if([string isEqualToString:@"ELVSECURE"]) {
		return ETP_PaymentType_ELVSECURE;
	}
	if([string isEqualToString:@"IDEAL"]) {
		return ETP_PaymentType_IDEAL;
	}
	if([string isEqualToString:@"ALIPAY"]) {
		return ETP_PaymentType_ALIPAY;
	}
	if([string isEqualToString:@"WECHATPAY"]) {
		return ETP_PaymentType_WECHATPAY;
	}
    if([string isEqualToString:@"PREPAYMENT"]) {
        return ETP_PaymentType_PREPAYMENT;
    }
	if([string isEqualToString:@"TOKEN"]) {
		return ETP_PaymentType_TOKEN;
	}
	if([string isEqualToString:@"PROFILE"]) {
		return ETP_PaymentType_PROFILE;
	}
	
	return ETP_PaymentType_none;
}
NSString * ETP_PaymentType_stringFromEnum(ETP_PaymentType enumValue)
{
	switch (enumValue) {
		case ETP_PaymentType_CC:
			return @"CC";
			break;
		case ETP_PaymentType_CB:
			return @"CB";
			break;
		case ETP_PaymentType_MAESTRO:
			return @"MAESTRO";
			break;
		case ETP_PaymentType_EPS:
			return @"EPS";
			break;
		case ETP_PaymentType_PB:
			return @"PB";
			break;
		case ETP_PaymentType_PSC:
			return @"PSC";
			break;
		case ETP_PaymentType_CASHTICKET:
			return @"CASHTICKET";
			break;
		case ETP_PaymentType_ELV:
			return @"ELV";
			break;
		case ETP_PaymentType_QUICK:
			return @"QUICK";
			break;
		case ETP_PaymentType_GIROPAY:
			return @"GIROPAY";
			break;
		case ETP_PaymentType_PAYPAL:
			return @"PAYPAL";
			break;
		case ETP_PaymentType_MPASS:
			return @"MPASS";
			break;
		case ETP_PaymentType_BILLPAY:
			return @"BILLPAY";
			break;
		case ETP_PaymentType_INVOICE:
			return @"INVOICE";
			break;
		case ETP_PaymentType_HP:
			return @"HP";
			break;
		case ETP_PaymentType_SAFETYPAY:
			return @"SAFETYPAY";
			break;
		case ETP_PaymentType_KLARNA:
			return @"KLARNA";
			break;
		case ETP_PaymentType_SOFORT:
			return @"SOFORT";
			break;
		case ETP_PaymentType_MASTERPASS:
			return @"MASTERPASS";
			break;
		case ETP_PaymentType_PAYOLUTION:
			return @"PAYOLUTION";
			break;
		case ETP_PaymentType_POSTFINANCE:
			return @"POSTFINANCE";
			break;
		case ETP_PaymentType_ELVSECURE:
			return @"ELVSECURE";
			break;
		case ETP_PaymentType_IDEAL:
			return @"IDEAL";
			break;
		case ETP_PaymentType_ALIPAY:
			return @"ALIPAY";
			break;
		case ETP_PaymentType_WECHATPAY:
			return @"WECHATPAY";
			break;
        case ETP_PaymentType_PREPAYMENT:
            return @"PREPAYMENT";
            break;
		case ETP_PaymentType_TOKEN:
			return @"TOKEN";
			break;
		case ETP_PaymentType_PROFILE:
			return @"PROFILE";
			break;
		default:
			return @"";
	}
}
ETP_TxState ETP_TxState_enumFromString(NSString *string)
{
	if([string isEqualToString:@"INIT"]) {
		return ETP_TxState_INIT;
	}
	if([string isEqualToString:@"CREATED"]) {
		return ETP_TxState_CREATED;
	}
	if([string isEqualToString:@"AUTHORIZE"]) {
		return ETP_TxState_AUTHORIZE;
	}
	if([string isEqualToString:@"SUSPENDED"]) {
		return ETP_TxState_SUSPENDED;
	}
	if([string isEqualToString:@"REDIRECTED"]) {
		return ETP_TxState_REDIRECTED;
	}
	if([string isEqualToString:@"CALLBACK"]) {
		return ETP_TxState_CALLBACK;
	}
	if([string isEqualToString:@"RESERVED"]) {
		return ETP_TxState_RESERVED;
	}
	if([string isEqualToString:@"RESERVED_REVERSAL"]) {
		return ETP_TxState_RESERVED_REVERSAL;
	}
	if([string isEqualToString:@"EXECUTE"]) {
		return ETP_TxState_EXECUTE;
	}
	if([string isEqualToString:@"BILLED"]) {
		return ETP_TxState_BILLED;
	}
	if([string isEqualToString:@"BILLED_REVERSAL"]) {
		return ETP_TxState_BILLED_REVERSAL;
	}
	if([string isEqualToString:@"REVOKE"]) {
		return ETP_TxState_REVOKE;
	}
	if([string isEqualToString:@"CREDITED"]) {
		return ETP_TxState_CREDITED;
	}
	if([string isEqualToString:@"CREDITED_REVERSAL"]) {
		return ETP_TxState_CREDITED_REVERSAL;
	}
	if([string isEqualToString:@"REJECT"]) {
		return ETP_TxState_REJECT;
	}
	if([string isEqualToString:@"ARCHIVED"]) {
		return ETP_TxState_ARCHIVED;
	}
	if([string isEqualToString:@"WITHDRAW"]) {
		return ETP_TxState_WITHDRAW;
	}
	if([string isEqualToString:@"WITHDRAWN"]) {
		return ETP_TxState_WITHDRAWN;
	}
	if([string isEqualToString:@"ERROR"]) {
		return ETP_TxState_ERROR;
	}
	
	return ETP_TxState_none;
}
NSString * ETP_TxState_stringFromEnum(ETP_TxState enumValue)
{
	switch (enumValue) {
		case ETP_TxState_INIT:
			return @"INIT";
			break;
		case ETP_TxState_CREATED:
			return @"CREATED";
			break;
		case ETP_TxState_AUTHORIZE:
			return @"AUTHORIZE";
			break;
		case ETP_TxState_SUSPENDED:
			return @"SUSPENDED";
			break;
		case ETP_TxState_REDIRECTED:
			return @"REDIRECTED";
			break;
		case ETP_TxState_CALLBACK:
			return @"CALLBACK";
			break;
		case ETP_TxState_RESERVED:
			return @"RESERVED";
			break;
		case ETP_TxState_RESERVED_REVERSAL:
			return @"RESERVED_REVERSAL";
			break;
		case ETP_TxState_EXECUTE:
			return @"EXECUTE";
			break;
		case ETP_TxState_BILLED:
			return @"BILLED";
			break;
		case ETP_TxState_BILLED_REVERSAL:
			return @"BILLED_REVERSAL";
			break;
		case ETP_TxState_REVOKE:
			return @"REVOKE";
			break;
		case ETP_TxState_CREDITED:
			return @"CREDITED";
			break;
		case ETP_TxState_CREDITED_REVERSAL:
			return @"CREDITED_REVERSAL";
			break;
		case ETP_TxState_REJECT:
			return @"REJECT";
			break;
		case ETP_TxState_ARCHIVED:
			return @"ARCHIVED";
			break;
		case ETP_TxState_WITHDRAW:
			return @"WITHDRAW";
			break;
		case ETP_TxState_WITHDRAWN:
			return @"WITHDRAWN";
			break;
		case ETP_TxState_ERROR:
			return @"ERROR";
			break;
		default:
			return @"";
	}
}
ETP_TStatus ETP_TStatus_enumFromString(NSString *string)
{
	if([string isEqualToString:@"NOTFOUND"]) {
		return ETP_TStatus_NOTFOUND;
	}
	if([string isEqualToString:@"FAILED"]) {
		return ETP_TStatus_FAILED;
	}
	if([string isEqualToString:@"RESERVED"]) {
		return ETP_TStatus_RESERVED;
	}
	if([string isEqualToString:@"BILLED"]) {
		return ETP_TStatus_BILLED;
	}
	if([string isEqualToString:@"REVERSED"]) {
		return ETP_TStatus_REVERSED;
	}
	if([string isEqualToString:@"CREDITED"]) {
		return ETP_TStatus_CREDITED;
	}
	
	return ETP_TStatus_none;
}
NSString * ETP_TStatus_stringFromEnum(ETP_TStatus enumValue)
{
	switch (enumValue) {
		case ETP_TStatus_NOTFOUND:
			return @"NOTFOUND";
			break;
		case ETP_TStatus_FAILED:
			return @"FAILED";
			break;
		case ETP_TStatus_RESERVED:
			return @"RESERVED";
			break;
		case ETP_TStatus_BILLED:
			return @"BILLED";
			break;
		case ETP_TStatus_REVERSED:
			return @"REVERSED";
			break;
		case ETP_TStatus_CREDITED:
			return @"CREDITED";
			break;
		default:
			return @"";
	}
}
ETP_ConfirmationStatus ETP_ConfirmationStatus_enumFromString(NSString *string)
{
	if([string isEqualToString:@"OK"]) {
		return ETP_ConfirmationStatus_OK;
	}
	if([string isEqualToString:@"ERROR"]) {
		return ETP_ConfirmationStatus_ERROR;
	}
	if([string isEqualToString:@"PENDING"]) {
		return ETP_ConfirmationStatus_PENDING;
	}
	if([string isEqualToString:@"FAILURE"]) {
		return ETP_ConfirmationStatus_FAILURE;
	}
	
	return ETP_ConfirmationStatus_none;
}
NSString * ETP_ConfirmationStatus_stringFromEnum(ETP_ConfirmationStatus enumValue)
{
	switch (enumValue) {
		case ETP_ConfirmationStatus_OK:
			return @"OK";
			break;
		case ETP_ConfirmationStatus_ERROR:
			return @"ERROR";
			break;
		case ETP_ConfirmationStatus_PENDING:
			return @"PENDING";
			break;
		case ETP_ConfirmationStatus_FAILURE:
			return @"FAILURE";
			break;
		default:
			return @"";
	}
}
ETP_Confirmed ETP_Confirmed_enumFromString(NSString *string)
{
	if([string isEqualToString:@"VALIDATED"]) {
		return ETP_Confirmed_VALIDATED;
	}
	if([string isEqualToString:@"RESERVED"]) {
		return ETP_Confirmed_RESERVED;
	}
	if([string isEqualToString:@"RESERVED_REVERSAL"]) {
		return ETP_Confirmed_RESERVED_REVERSAL;
	}
	if([string isEqualToString:@"BILLED"]) {
		return ETP_Confirmed_BILLED;
	}
	if([string isEqualToString:@"BILLED_REVERSAL"]) {
		return ETP_Confirmed_BILLED_REVERSAL;
	}
	if([string isEqualToString:@"REVERSED"]) {
		return ETP_Confirmed_REVERSED;
	}
	if([string isEqualToString:@"CREDITED"]) {
		return ETP_Confirmed_CREDITED;
	}
	if([string isEqualToString:@"CREDITED_REVERSAL"]) {
		return ETP_Confirmed_CREDITED_REVERSAL;
	}
	if([string isEqualToString:@"WITHDRAWN"]) {
		return ETP_Confirmed_WITHDRAWN;
	}
	if([string isEqualToString:@"SUSPENDED"]) {
		return ETP_Confirmed_SUSPENDED;
	}
	if([string isEqualToString:@"ERROR"]) {
		return ETP_Confirmed_ERROR;
	}
	
	return ETP_Confirmed_none;
}
NSString * ETP_Confirmed_stringFromEnum(ETP_Confirmed enumValue)
{
	switch (enumValue) {
		case ETP_Confirmed_VALIDATED:
			return @"VALIDATED";
			break;
		case ETP_Confirmed_RESERVED:
			return @"RESERVED";
			break;
		case ETP_Confirmed_RESERVED_REVERSAL:
			return @"RESERVED_REVERSAL";
			break;
		case ETP_Confirmed_BILLED:
			return @"BILLED";
			break;
		case ETP_Confirmed_BILLED_REVERSAL:
			return @"BILLED_REVERSAL";
			break;
		case ETP_Confirmed_REVERSED:
			return @"REVERSED";
			break;
		case ETP_Confirmed_CREDITED:
			return @"CREDITED";
			break;
		case ETP_Confirmed_CREDITED_REVERSAL:
			return @"CREDITED_REVERSAL";
			break;
		case ETP_Confirmed_WITHDRAWN:
			return @"WITHDRAWN";
			break;
		case ETP_Confirmed_SUSPENDED:
			return @"SUSPENDED";
			break;
		case ETP_Confirmed_ERROR:
			return @"ERROR";
			break;
		default:
			return @"";
	}
}
ETP_SortField ETP_SortField_enumFromString(NSString *string)
{
	if([string isEqualToString:@"MPAYTID"]) {
		return ETP_SortField_MPAYTID;
	}
	if([string isEqualToString:@"PTYPE"]) {
		return ETP_SortField_PTYPE;
	}
	if([string isEqualToString:@"BRAND"]) {
		return ETP_SortField_BRAND;
	}
	if([string isEqualToString:@"CURRENCY"]) {
		return ETP_SortField_CURRENCY;
	}
	if([string isEqualToString:@"TID"]) {
		return ETP_SortField_TID;
	}
	if([string isEqualToString:@"ORDERDESC"]) {
		return ETP_SortField_ORDERDESC;
	}
	if([string isEqualToString:@"ORDERNUMBER"]) {
		return ETP_SortField_ORDERNUMBER;
	}
	if([string isEqualToString:@"CURRDATE"]) {
		return ETP_SortField_CURRDATE;
	}
	if([string isEqualToString:@"CURRTIME"]) {
		return ETP_SortField_CURRTIME;
	}
	
	return ETP_SortField_none;
}
NSString * ETP_SortField_stringFromEnum(ETP_SortField enumValue)
{
	switch (enumValue) {
		case ETP_SortField_MPAYTID:
			return @"MPAYTID";
			break;
		case ETP_SortField_PTYPE:
			return @"PTYPE";
			break;
		case ETP_SortField_BRAND:
			return @"BRAND";
			break;
		case ETP_SortField_CURRENCY:
			return @"CURRENCY";
			break;
		case ETP_SortField_TID:
			return @"TID";
			break;
		case ETP_SortField_ORDERDESC:
			return @"ORDERDESC";
			break;
		case ETP_SortField_ORDERNUMBER:
			return @"ORDERNUMBER";
			break;
		case ETP_SortField_CURRDATE:
			return @"CURRDATE";
			break;
		case ETP_SortField_CURRTIME:
			return @"CURRTIME";
			break;
		default:
			return @"";
	}
}
ETP_SortType ETP_SortType_enumFromString(NSString *string)
{
	if([string isEqualToString:@"ASC"]) {
		return ETP_SortType_ASC;
	}
	if([string isEqualToString:@"DESC"]) {
		return ETP_SortType_DESC;
	}
	
	return ETP_SortType_none;
}
NSString * ETP_SortType_stringFromEnum(ETP_SortType enumValue)
{
	switch (enumValue) {
		case ETP_SortType_ASC:
			return @"ASC";
			break;
		case ETP_SortType_DESC:
			return @"DESC";
			break;
		default:
			return @"";
	}
}
ETP_AddressMode ETP_AddressMode_enumFromString(NSString *string)
{
	if([string isEqualToString:@"READONLY"]) {
		return ETP_AddressMode_READONLY;
	}
	if([string isEqualToString:@"READWRITE"]) {
		return ETP_AddressMode_READWRITE;
	}
	
	return ETP_AddressMode_none;
}
NSString * ETP_AddressMode_stringFromEnum(ETP_AddressMode enumValue)
{
	switch (enumValue) {
		case ETP_AddressMode_READONLY:
			return @"READONLY";
			break;
		case ETP_AddressMode_READWRITE:
			return @"READWRITE";
			break;
		default:
			return @"";
	}
}
ETP_Gender ETP_Gender_enumFromString(NSString *string)
{
	if([string isEqualToString:@"MALE"]) {
		return ETP_Gender_MALE;
	}
	if([string isEqualToString:@"FEMALE"]) {
		return ETP_Gender_FEMALE;
	}
	
	return ETP_Gender_none;
}
NSString * ETP_Gender_stringFromEnum(ETP_Gender enumValue)
{
	switch (enumValue) {
		case ETP_Gender_MALE:
			return @"MALE";
			break;
		case ETP_Gender_FEMALE:
			return @"FEMALE";
			break;
		default:
			return @"";
	}
}
@implementation ETP_PaymentData
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		validate = 0;
		profileID = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(validate != nil) [validate release];
	if(profileID != nil) [profileID release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.validate != 0) {
		xmlAddChild(node, [self.validate xmlNodeForDoc:node->doc elementName:@"validate" elementNSPrefix:nil]);
	}
	if(self.profileID != 0) {
		xmlAddChild(node, [self.profileID xmlNodeForDoc:node->doc elementName:@"profileID" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize validate;
@synthesize profileID;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_PaymentData *)deserializeNode:(xmlNodePtr)cur
{
	ETP_PaymentData *newObject = [[ETP_PaymentData new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "validate")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [USBoolean class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.validate = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "profileID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.profileID = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_PaymentDataTOKEN
- (id)init
{
	if((self = [super init])) {
		token = 0;
		auth3DS = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(token != nil) [token release];
	if(auth3DS != nil) [auth3DS release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	xmlNodePtr root = xmlDocGetRootElement(doc);
	xmlNsPtr xsi = xmlSearchNs(doc, root, (const xmlChar*)"xsi");
	xmlSetNsProp(node, xsi, (const xmlChar*)"type", (const xmlChar*)"etp:PaymentDataTOKEN");
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	[super addAttributesToNode:node];
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	[super addElementsToNode:node];
	
	if(self.token != 0) {
		xmlAddChild(node, [self.token xmlNodeForDoc:node->doc elementName:@"token" elementNSPrefix:nil]);
	}
	if(self.auth3DS != 0) {
		xmlAddChild(node, [self.auth3DS xmlNodeForDoc:node->doc elementName:@"auth3DS" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize token;
@synthesize auth3DS;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_PaymentDataTOKEN *)deserializeNode:(xmlNodePtr)cur
{
	ETP_PaymentDataTOKEN *newObject = [[ETP_PaymentDataTOKEN new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
	[super deserializeAttributesFromNode:cur];
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	[super deserializeElementsFromNode:cur];
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "token")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.token = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "auth3DS")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [USBoolean class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.auth3DS = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_PaymentDataCC
- (id)init
{
	if((self = [super init])) {
		brand = 0;
		identifier = 0;
		expiry = 0;
		cvc = 0;
		auth3DS = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(brand != nil) [brand release];
	if(identifier != nil) [identifier release];
	if(expiry != nil) [expiry release];
	if(cvc != nil) [cvc release];
	if(auth3DS != nil) [auth3DS release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	xmlNodePtr root = xmlDocGetRootElement(doc);
	xmlNsPtr xsi = xmlSearchNs(doc, root, (const xmlChar*)"xsi");
	xmlSetNsProp(node, xsi, (const xmlChar*)"type", (const xmlChar*)"etp:PaymentDataCC");
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	[super addAttributesToNode:node];
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	[super addElementsToNode:node];
	
	if(self.brand != 0) {
		xmlAddChild(node, [self.brand xmlNodeForDoc:node->doc elementName:@"brand" elementNSPrefix:nil]);
	}
	if(self.identifier != 0) {
		xmlAddChild(node, [self.identifier xmlNodeForDoc:node->doc elementName:@"identifier" elementNSPrefix:nil]);
	}
	if(self.expiry != 0) {
		xmlAddChild(node, [self.expiry xmlNodeForDoc:node->doc elementName:@"expiry" elementNSPrefix:nil]);
	}
	if(self.cvc != 0) {
		xmlAddChild(node, [self.cvc xmlNodeForDoc:node->doc elementName:@"cvc" elementNSPrefix:nil]);
	}
	if(self.auth3DS != 0) {
		xmlAddChild(node, [self.auth3DS xmlNodeForDoc:node->doc elementName:@"auth3DS" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize brand;
@synthesize identifier;
@synthesize expiry;
@synthesize cvc;
@synthesize auth3DS;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_PaymentDataCC *)deserializeNode:(xmlNodePtr)cur
{
	ETP_PaymentDataCC *newObject = [[ETP_PaymentDataCC new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
	[super deserializeAttributesFromNode:cur];
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	[super deserializeElementsFromNode:cur];
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "brand")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.brand = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "identifier")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.identifier = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "expiry")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.expiry = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "cvc")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.cvc = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "auth3DS")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [USBoolean class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.auth3DS = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_PaymentDataELV
- (id)init
{
	if((self = [super init])) {
		brand = 0;
		iban = 0;
		bic = 0;
		mandateID = 0;
		dateOfSignature = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(brand != nil) [brand release];
	if(iban != nil) [iban release];
	if(bic != nil) [bic release];
	if(mandateID != nil) [mandateID release];
	if(dateOfSignature != nil) [dateOfSignature release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	xmlNodePtr root = xmlDocGetRootElement(doc);
	xmlNsPtr xsi = xmlSearchNs(doc, root, (const xmlChar*)"xsi");
	xmlSetNsProp(node, xsi, (const xmlChar*)"type", (const xmlChar*)"etp:PaymentDataELV");
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	[super addAttributesToNode:node];
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	[super addElementsToNode:node];
	
	if(self.brand != 0) {
		xmlAddChild(node, [self.brand xmlNodeForDoc:node->doc elementName:@"brand" elementNSPrefix:nil]);
	}
	if(self.iban != 0) {
		xmlAddChild(node, [self.iban xmlNodeForDoc:node->doc elementName:@"iban" elementNSPrefix:nil]);
	}
	if(self.bic != 0) {
		xmlAddChild(node, [self.bic xmlNodeForDoc:node->doc elementName:@"bic" elementNSPrefix:nil]);
	}
	if(self.mandateID != 0) {
		xmlAddChild(node, [self.mandateID xmlNodeForDoc:node->doc elementName:@"mandateID" elementNSPrefix:nil]);
	}
	if(self.dateOfSignature != 0) {
		xmlAddChild(node, [self.dateOfSignature xmlNodeForDoc:node->doc elementName:@"dateOfSignature" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize brand;
@synthesize iban;
@synthesize bic;
@synthesize mandateID;
@synthesize dateOfSignature;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_PaymentDataELV *)deserializeNode:(xmlNodePtr)cur
{
	ETP_PaymentDataELV *newObject = [[ETP_PaymentDataELV new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
	[super deserializeAttributesFromNode:cur];
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	[super deserializeElementsFromNode:cur];
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "brand")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.brand = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "iban")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.iban = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "bic")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.bic = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "mandateID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.mandateID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "dateOfSignature")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSDate class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.dateOfSignature = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_Payment
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		amount = 0;
		currency = 0;
		timeout = 0;
		manualClearing = 0;
		useProfile = 0;
		profileID = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(amount != nil) [amount release];
	if(currency != nil) [currency release];
	if(timeout != nil) [timeout release];
	if(manualClearing != nil) [manualClearing release];
	if(useProfile != nil) [useProfile release];
	if(profileID != nil) [profileID release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.amount != 0) {
		xmlAddChild(node, [self.amount xmlNodeForDoc:node->doc elementName:@"amount" elementNSPrefix:nil]);
	}
	if(self.currency != 0) {
		xmlAddChild(node, [self.currency xmlNodeForDoc:node->doc elementName:@"currency" elementNSPrefix:nil]);
	}
	if(self.timeout != 0) {
		xmlAddChild(node, [self.timeout xmlNodeForDoc:node->doc elementName:@"timeout" elementNSPrefix:nil]);
	}
	if(self.manualClearing != 0) {
		xmlAddChild(node, [self.manualClearing xmlNodeForDoc:node->doc elementName:@"manualClearing" elementNSPrefix:nil]);
	}
	if(self.useProfile != 0) {
		xmlAddChild(node, [self.useProfile xmlNodeForDoc:node->doc elementName:@"useProfile" elementNSPrefix:nil]);
	}
	if(self.profileID != 0) {
		xmlAddChild(node, [self.profileID xmlNodeForDoc:node->doc elementName:@"profileID" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize amount;
@synthesize currency;
@synthesize timeout;
@synthesize manualClearing;
@synthesize useProfile;
@synthesize profileID;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_Payment *)deserializeNode:(xmlNodePtr)cur
{
	ETP_Payment *newObject = [[ETP_Payment new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "amount")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.amount = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "currency")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.currency = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "timeout")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.timeout = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "manualClearing")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [USBoolean class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.manualClearing = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "useProfile")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [USBoolean class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.useProfile = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "profileID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.profileID = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_PaymentTOKEN
- (id)init
{
	if((self = [super init])) {
		token = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(token != nil) [token release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	xmlNodePtr root = xmlDocGetRootElement(doc);
	xmlNsPtr xsi = xmlSearchNs(doc, root, (const xmlChar*)"xsi");
	xmlSetNsProp(node, xsi, (const xmlChar*)"type", (const xmlChar*)"etp:PaymentTOKEN");
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	[super addAttributesToNode:node];
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	[super addElementsToNode:node];
	
	if(self.token != 0) {
		xmlAddChild(node, [self.token xmlNodeForDoc:node->doc elementName:@"token" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize token;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_PaymentTOKEN *)deserializeNode:(xmlNodePtr)cur
{
	ETP_PaymentTOKEN *newObject = [[ETP_PaymentTOKEN new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
	[super deserializeAttributesFromNode:cur];
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	[super deserializeElementsFromNode:cur];
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "token")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.token = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_PaymentCC
- (id)init
{
	if((self = [super init])) {
		brand = 0;
		identifier = 0;
		expiry = 0;
		cvc = 0;
		auth3DS = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(brand != nil) [brand release];
	if(identifier != nil) [identifier release];
	if(expiry != nil) [expiry release];
	if(cvc != nil) [cvc release];
	if(auth3DS != nil) [auth3DS release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	xmlNodePtr root = xmlDocGetRootElement(doc);
	xmlNsPtr xsi = xmlSearchNs(doc, root, (const xmlChar*)"xsi");
	xmlSetNsProp(node, xsi, (const xmlChar*)"type", (const xmlChar*)"etp:PaymentCC");
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	[super addAttributesToNode:node];
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	[super addElementsToNode:node];
	
	if(self.brand != 0) {
		xmlAddChild(node, [self.brand xmlNodeForDoc:node->doc elementName:@"brand" elementNSPrefix:nil]);
	}
	if(self.identifier != 0) {
		xmlAddChild(node, [self.identifier xmlNodeForDoc:node->doc elementName:@"identifier" elementNSPrefix:nil]);
	}
	if(self.expiry != 0) {
		xmlAddChild(node, [self.expiry xmlNodeForDoc:node->doc elementName:@"expiry" elementNSPrefix:nil]);
	}
	if(self.cvc != 0) {
		xmlAddChild(node, [self.cvc xmlNodeForDoc:node->doc elementName:@"cvc" elementNSPrefix:nil]);
	}
	if(self.auth3DS != 0) {
		xmlAddChild(node, [self.auth3DS xmlNodeForDoc:node->doc elementName:@"auth3DS" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize brand;
@synthesize identifier;
@synthesize expiry;
@synthesize cvc;
@synthesize auth3DS;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_PaymentCC *)deserializeNode:(xmlNodePtr)cur
{
	ETP_PaymentCC *newObject = [[ETP_PaymentCC new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
	[super deserializeAttributesFromNode:cur];
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	[super deserializeElementsFromNode:cur];
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "brand")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.brand = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "identifier")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.identifier = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "expiry")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.expiry = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "cvc")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.cvc = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "auth3DS")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [USBoolean class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.auth3DS = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_PaymentCB
- (id)init
{
	if((self = [super init])) {
		identifier = 0;
		expiry = 0;
		cvc = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(identifier != nil) [identifier release];
	if(expiry != nil) [expiry release];
	if(cvc != nil) [cvc release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	xmlNodePtr root = xmlDocGetRootElement(doc);
	xmlNsPtr xsi = xmlSearchNs(doc, root, (const xmlChar*)"xsi");
	xmlSetNsProp(node, xsi, (const xmlChar*)"type", (const xmlChar*)"etp:PaymentCB");
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	[super addAttributesToNode:node];
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	[super addElementsToNode:node];
	
	if(self.identifier != 0) {
		xmlAddChild(node, [self.identifier xmlNodeForDoc:node->doc elementName:@"identifier" elementNSPrefix:nil]);
	}
	if(self.expiry != 0) {
		xmlAddChild(node, [self.expiry xmlNodeForDoc:node->doc elementName:@"expiry" elementNSPrefix:nil]);
	}
	if(self.cvc != 0) {
		xmlAddChild(node, [self.cvc xmlNodeForDoc:node->doc elementName:@"cvc" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize identifier;
@synthesize expiry;
@synthesize cvc;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_PaymentCB *)deserializeNode:(xmlNodePtr)cur
{
	ETP_PaymentCB *newObject = [[ETP_PaymentCB new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
	[super deserializeAttributesFromNode:cur];
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	[super deserializeElementsFromNode:cur];
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "identifier")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.identifier = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "expiry")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.expiry = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "cvc")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.cvc = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_PaymentMAESTRO
- (id)init
{
	if((self = [super init])) {
		identifier = 0;
		expiry = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(identifier != nil) [identifier release];
	if(expiry != nil) [expiry release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	xmlNodePtr root = xmlDocGetRootElement(doc);
	xmlNsPtr xsi = xmlSearchNs(doc, root, (const xmlChar*)"xsi");
	xmlSetNsProp(node, xsi, (const xmlChar*)"type", (const xmlChar*)"etp:PaymentMAESTRO");
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	[super addAttributesToNode:node];
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	[super addElementsToNode:node];
	
	if(self.identifier != 0) {
		xmlAddChild(node, [self.identifier xmlNodeForDoc:node->doc elementName:@"identifier" elementNSPrefix:nil]);
	}
	if(self.expiry != 0) {
		xmlAddChild(node, [self.expiry xmlNodeForDoc:node->doc elementName:@"expiry" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize identifier;
@synthesize expiry;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_PaymentMAESTRO *)deserializeNode:(xmlNodePtr)cur
{
	ETP_PaymentMAESTRO *newObject = [[ETP_PaymentMAESTRO new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
	[super deserializeAttributesFromNode:cur];
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	[super deserializeElementsFromNode:cur];
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "identifier")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.identifier = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "expiry")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.expiry = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_PaymentEPS
- (id)init
{
	if((self = [super init])) {
		brand = 0;
		bankID = 0;
		bic = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(brand != nil) [brand release];
	if(bankID != nil) [bankID release];
	if(bic != nil) [bic release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	xmlNodePtr root = xmlDocGetRootElement(doc);
	xmlNsPtr xsi = xmlSearchNs(doc, root, (const xmlChar*)"xsi");
	xmlSetNsProp(node, xsi, (const xmlChar*)"type", (const xmlChar*)"etp:PaymentEPS");
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	[super addAttributesToNode:node];
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	[super addElementsToNode:node];
	
	if(self.brand != 0) {
		xmlAddChild(node, [self.brand xmlNodeForDoc:node->doc elementName:@"brand" elementNSPrefix:nil]);
	}
	if(self.bankID != 0) {
		xmlAddChild(node, [self.bankID xmlNodeForDoc:node->doc elementName:@"bankID" elementNSPrefix:nil]);
	}
	if(self.bic != 0) {
		xmlAddChild(node, [self.bic xmlNodeForDoc:node->doc elementName:@"bic" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize brand;
@synthesize bankID;
@synthesize bic;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_PaymentEPS *)deserializeNode:(xmlNodePtr)cur
{
	ETP_PaymentEPS *newObject = [[ETP_PaymentEPS new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
	[super deserializeAttributesFromNode:cur];
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	[super deserializeElementsFromNode:cur];
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "brand")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.brand = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "bankID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.bankID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "bic")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.bic = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_PaymentPB
- (id)init
{
	if((self = [super init])) {
		identifier = 0;
		payDays = 0;
		reserveDays = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(identifier != nil) [identifier release];
	if(payDays != nil) [payDays release];
	if(reserveDays != nil) [reserveDays release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	xmlNodePtr root = xmlDocGetRootElement(doc);
	xmlNsPtr xsi = xmlSearchNs(doc, root, (const xmlChar*)"xsi");
	xmlSetNsProp(node, xsi, (const xmlChar*)"type", (const xmlChar*)"etp:PaymentPB");
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	[super addAttributesToNode:node];
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	[super addElementsToNode:node];
	
	if(self.identifier != 0) {
		xmlAddChild(node, [self.identifier xmlNodeForDoc:node->doc elementName:@"identifier" elementNSPrefix:nil]);
	}
	if(self.payDays != 0) {
		xmlAddChild(node, [self.payDays xmlNodeForDoc:node->doc elementName:@"payDays" elementNSPrefix:nil]);
	}
	if(self.reserveDays != 0) {
		xmlAddChild(node, [self.reserveDays xmlNodeForDoc:node->doc elementName:@"reserveDays" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize identifier;
@synthesize payDays;
@synthesize reserveDays;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_PaymentPB *)deserializeNode:(xmlNodePtr)cur
{
	ETP_PaymentPB *newObject = [[ETP_PaymentPB new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
	[super deserializeAttributesFromNode:cur];
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	[super deserializeElementsFromNode:cur];
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "identifier")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.identifier = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "payDays")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.payDays = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "reserveDays")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.reserveDays = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_PaymentELV
- (id)init
{
	if((self = [super init])) {
		brand = 0;
		iban = 0;
		bic = 0;
		mandateID = 0;
		dateOfSignature = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(brand != nil) [brand release];
	if(iban != nil) [iban release];
	if(bic != nil) [bic release];
	if(mandateID != nil) [mandateID release];
	if(dateOfSignature != nil) [dateOfSignature release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	xmlNodePtr root = xmlDocGetRootElement(doc);
	xmlNsPtr xsi = xmlSearchNs(doc, root, (const xmlChar*)"xsi");
	xmlSetNsProp(node, xsi, (const xmlChar*)"type", (const xmlChar*)"etp:PaymentELV");
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	[super addAttributesToNode:node];
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	[super addElementsToNode:node];
	
	if(self.brand != 0) {
		xmlAddChild(node, [self.brand xmlNodeForDoc:node->doc elementName:@"brand" elementNSPrefix:nil]);
	}
	if(self.iban != 0) {
		xmlAddChild(node, [self.iban xmlNodeForDoc:node->doc elementName:@"iban" elementNSPrefix:nil]);
	}
	if(self.bic != 0) {
		xmlAddChild(node, [self.bic xmlNodeForDoc:node->doc elementName:@"bic" elementNSPrefix:nil]);
	}
	if(self.mandateID != 0) {
		xmlAddChild(node, [self.mandateID xmlNodeForDoc:node->doc elementName:@"mandateID" elementNSPrefix:nil]);
	}
	if(self.dateOfSignature != 0) {
		xmlAddChild(node, [self.dateOfSignature xmlNodeForDoc:node->doc elementName:@"dateOfSignature" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize brand;
@synthesize iban;
@synthesize bic;
@synthesize mandateID;
@synthesize dateOfSignature;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_PaymentELV *)deserializeNode:(xmlNodePtr)cur
{
	ETP_PaymentELV *newObject = [[ETP_PaymentELV new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
	[super deserializeAttributesFromNode:cur];
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	[super deserializeElementsFromNode:cur];
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "brand")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.brand = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "iban")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.iban = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "bic")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.bic = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "mandateID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.mandateID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "dateOfSignature")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSDate class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.dateOfSignature = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_PaymentGIROPAY
- (id)init
{
	if((self = [super init])) {
		iban = 0;
		bic = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(iban != nil) [iban release];
	if(bic != nil) [bic release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	xmlNodePtr root = xmlDocGetRootElement(doc);
	xmlNsPtr xsi = xmlSearchNs(doc, root, (const xmlChar*)"xsi");
	xmlSetNsProp(node, xsi, (const xmlChar*)"type", (const xmlChar*)"etp:PaymentGIROPAY");
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	[super addAttributesToNode:node];
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	[super addElementsToNode:node];
	
	if(self.iban != 0) {
		xmlAddChild(node, [self.iban xmlNodeForDoc:node->doc elementName:@"iban" elementNSPrefix:nil]);
	}
	if(self.bic != 0) {
		xmlAddChild(node, [self.bic xmlNodeForDoc:node->doc elementName:@"bic" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize iban;
@synthesize bic;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_PaymentGIROPAY *)deserializeNode:(xmlNodePtr)cur
{
	ETP_PaymentGIROPAY *newObject = [[ETP_PaymentGIROPAY new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
	[super deserializeAttributesFromNode:cur];
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	[super deserializeElementsFromNode:cur];
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "iban")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.iban = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "bic")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.bic = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_PaymentPAYPAL
- (id)init
{
	if((self = [super init])) {
		commit = 0;
		custom = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(commit != nil) [commit release];
	if(custom != nil) [custom release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	xmlNodePtr root = xmlDocGetRootElement(doc);
	xmlNsPtr xsi = xmlSearchNs(doc, root, (const xmlChar*)"xsi");
	xmlSetNsProp(node, xsi, (const xmlChar*)"type", (const xmlChar*)"etp:PaymentPAYPAL");
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	[super addAttributesToNode:node];
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	[super addElementsToNode:node];
	
	if(self.commit != 0) {
		xmlAddChild(node, [self.commit xmlNodeForDoc:node->doc elementName:@"commit" elementNSPrefix:nil]);
	}
	if(self.custom != 0) {
		xmlAddChild(node, [self.custom xmlNodeForDoc:node->doc elementName:@"custom" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize commit;
@synthesize custom;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_PaymentPAYPAL *)deserializeNode:(xmlNodePtr)cur
{
	ETP_PaymentPAYPAL *newObject = [[ETP_PaymentPAYPAL new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
	[super deserializeAttributesFromNode:cur];
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	[super deserializeElementsFromNode:cur];
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "commit")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [USBoolean class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.commit = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "custom")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.custom = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_PaymentBILLPAY
- (id)init
{
	if((self = [super init])) {
		brand = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(brand != nil) [brand release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	xmlNodePtr root = xmlDocGetRootElement(doc);
	xmlNsPtr xsi = xmlSearchNs(doc, root, (const xmlChar*)"xsi");
	xmlSetNsProp(node, xsi, (const xmlChar*)"type", (const xmlChar*)"etp:PaymentBILLPAY");
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	[super addAttributesToNode:node];
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	[super addElementsToNode:node];
	
	if(self.brand != 0) {
		xmlAddChild(node, [self.brand xmlNodeForDoc:node->doc elementName:@"brand" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize brand;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_PaymentBILLPAY *)deserializeNode:(xmlNodePtr)cur
{
	ETP_PaymentBILLPAY *newObject = [[ETP_PaymentBILLPAY new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
	[super deserializeAttributesFromNode:cur];
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	[super deserializeElementsFromNode:cur];
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "brand")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.brand = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_PaymentKLARNA
- (id)init
{
	if((self = [super init])) {
		brand = 0;
		personalNumber = 0;
		pClass = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(brand != nil) [brand release];
	if(personalNumber != nil) [personalNumber release];
	if(pClass != nil) [pClass release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	xmlNodePtr root = xmlDocGetRootElement(doc);
	xmlNsPtr xsi = xmlSearchNs(doc, root, (const xmlChar*)"xsi");
	xmlSetNsProp(node, xsi, (const xmlChar*)"type", (const xmlChar*)"etp:PaymentKLARNA");
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	[super addAttributesToNode:node];
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	[super addElementsToNode:node];
	
	if(self.brand != 0) {
		xmlAddChild(node, [self.brand xmlNodeForDoc:node->doc elementName:@"brand" elementNSPrefix:nil]);
	}
	if(self.personalNumber != 0) {
		xmlAddChild(node, [self.personalNumber xmlNodeForDoc:node->doc elementName:@"personalNumber" elementNSPrefix:nil]);
	}
	if(self.pClass != 0) {
		xmlAddChild(node, [self.pClass xmlNodeForDoc:node->doc elementName:@"pClass" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize brand;
@synthesize personalNumber;
@synthesize pClass;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_PaymentKLARNA *)deserializeNode:(xmlNodePtr)cur
{
	ETP_PaymentKLARNA *newObject = [[ETP_PaymentKLARNA new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
	[super deserializeAttributesFromNode:cur];
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	[super deserializeElementsFromNode:cur];
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "brand")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.brand = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "personalNumber")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.personalNumber = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "pClass")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.pClass = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_PaymentMASTERPASS
- (id)init
{
	if((self = [super init])) {
		auth3DS = 0;
		commit = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(auth3DS != nil) [auth3DS release];
	if(commit != nil) [commit release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	xmlNodePtr root = xmlDocGetRootElement(doc);
	xmlNsPtr xsi = xmlSearchNs(doc, root, (const xmlChar*)"xsi");
	xmlSetNsProp(node, xsi, (const xmlChar*)"type", (const xmlChar*)"etp:PaymentMASTERPASS");
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	[super addAttributesToNode:node];
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	[super addElementsToNode:node];
	
	if(self.auth3DS != 0) {
		xmlAddChild(node, [self.auth3DS xmlNodeForDoc:node->doc elementName:@"auth3DS" elementNSPrefix:nil]);
	}
	if(self.commit != 0) {
		xmlAddChild(node, [self.commit xmlNodeForDoc:node->doc elementName:@"commit" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize auth3DS;
@synthesize commit;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_PaymentMASTERPASS *)deserializeNode:(xmlNodePtr)cur
{
	ETP_PaymentMASTERPASS *newObject = [[ETP_PaymentMASTERPASS new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
	[super deserializeAttributesFromNode:cur];
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	[super deserializeElementsFromNode:cur];
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "auth3DS")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [USBoolean class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.auth3DS = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "commit")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [USBoolean class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.commit = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_PaymentPSC
- (id)init
{
	if((self = [super init])) {
		brand = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(brand != nil) [brand release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	xmlNodePtr root = xmlDocGetRootElement(doc);
	xmlNsPtr xsi = xmlSearchNs(doc, root, (const xmlChar*)"xsi");
	xmlSetNsProp(node, xsi, (const xmlChar*)"type", (const xmlChar*)"etp:PaymentPSC");
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	[super addAttributesToNode:node];
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	[super addElementsToNode:node];
	
	if(self.brand != 0) {
		xmlAddChild(node, [self.brand xmlNodeForDoc:node->doc elementName:@"brand" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize brand;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_PaymentPSC *)deserializeNode:(xmlNodePtr)cur
{
	ETP_PaymentPSC *newObject = [[ETP_PaymentPSC new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
	[super deserializeAttributesFromNode:cur];
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	[super deserializeElementsFromNode:cur];
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "brand")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.brand = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_PaymentPOSTFINANCE
- (id)init
{
	if((self = [super init])) {
		brand = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(brand != nil) [brand release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	xmlNodePtr root = xmlDocGetRootElement(doc);
	xmlNsPtr xsi = xmlSearchNs(doc, root, (const xmlChar*)"xsi");
	xmlSetNsProp(node, xsi, (const xmlChar*)"type", (const xmlChar*)"etp:PaymentPOSTFINANCE");
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	[super addAttributesToNode:node];
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	[super addElementsToNode:node];
	
	if(self.brand != 0) {
		xmlAddChild(node, [self.brand xmlNodeForDoc:node->doc elementName:@"brand" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize brand;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_PaymentPOSTFINANCE *)deserializeNode:(xmlNodePtr)cur
{
	ETP_PaymentPOSTFINANCE *newObject = [[ETP_PaymentPOSTFINANCE new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
	[super deserializeAttributesFromNode:cur];
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	[super deserializeElementsFromNode:cur];
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "brand")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.brand = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_PaymentIDEAL
- (id)init
{
	if((self = [super init])) {
		bank = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(bank != nil) [bank release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	xmlNodePtr root = xmlDocGetRootElement(doc);
	xmlNsPtr xsi = xmlSearchNs(doc, root, (const xmlChar*)"xsi");
	xmlSetNsProp(node, xsi, (const xmlChar*)"type", (const xmlChar*)"etp:PaymentIDEAL");
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	[super addAttributesToNode:node];
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	[super addElementsToNode:node];
	
	if(self.bank != 0) {
		xmlAddChild(node, [self.bank xmlNodeForDoc:node->doc elementName:@"bank" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize bank;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_PaymentIDEAL *)deserializeNode:(xmlNodePtr)cur
{
	ETP_PaymentIDEAL *newObject = [[ETP_PaymentIDEAL new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
	[super deserializeAttributesFromNode:cur];
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	[super deserializeElementsFromNode:cur];
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "bank")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.bank = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_ProfilePaymentCC
- (id)init
{
	if((self = [super init])) {
		cvc = 0;
		auth3DS = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(cvc != nil) [cvc release];
	if(auth3DS != nil) [auth3DS release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	xmlNodePtr root = xmlDocGetRootElement(doc);
	xmlNsPtr xsi = xmlSearchNs(doc, root, (const xmlChar*)"xsi");
	xmlSetNsProp(node, xsi, (const xmlChar*)"type", (const xmlChar*)"etp:ProfilePaymentCC");
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	[super addAttributesToNode:node];
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	[super addElementsToNode:node];
	
	if(self.cvc != 0) {
		xmlAddChild(node, [self.cvc xmlNodeForDoc:node->doc elementName:@"cvc" elementNSPrefix:nil]);
	}
	if(self.auth3DS != 0) {
		xmlAddChild(node, [self.auth3DS xmlNodeForDoc:node->doc elementName:@"auth3DS" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize cvc;
@synthesize auth3DS;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_ProfilePaymentCC *)deserializeNode:(xmlNodePtr)cur
{
	ETP_ProfilePaymentCC *newObject = [[ETP_ProfilePaymentCC new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
	[super deserializeAttributesFromNode:cur];
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	[super deserializeElementsFromNode:cur];
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "cvc")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.cvc = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "auth3DS")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [USBoolean class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.auth3DS = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_ProfilePaymentPB
- (id)init
{
	if((self = [super init])) {
		payDays = 0;
		reserveDays = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(payDays != nil) [payDays release];
	if(reserveDays != nil) [reserveDays release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	xmlNodePtr root = xmlDocGetRootElement(doc);
	xmlNsPtr xsi = xmlSearchNs(doc, root, (const xmlChar*)"xsi");
	xmlSetNsProp(node, xsi, (const xmlChar*)"type", (const xmlChar*)"etp:ProfilePaymentPB");
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	[super addAttributesToNode:node];
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	[super addElementsToNode:node];
	
	if(self.payDays != 0) {
		xmlAddChild(node, [self.payDays xmlNodeForDoc:node->doc elementName:@"payDays" elementNSPrefix:nil]);
	}
	if(self.reserveDays != 0) {
		xmlAddChild(node, [self.reserveDays xmlNodeForDoc:node->doc elementName:@"reserveDays" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize payDays;
@synthesize reserveDays;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_ProfilePaymentPB *)deserializeNode:(xmlNodePtr)cur
{
	ETP_ProfilePaymentPB *newObject = [[ETP_ProfilePaymentPB new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
	[super deserializeAttributesFromNode:cur];
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	[super deserializeElementsFromNode:cur];
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "payDays")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.payDays = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "reserveDays")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.reserveDays = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_ProfilePaymentELV
- (id)init
{
	if((self = [super init])) {
		mandateID = 0;
		dateOfSignature = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(mandateID != nil) [mandateID release];
	if(dateOfSignature != nil) [dateOfSignature release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	xmlNodePtr root = xmlDocGetRootElement(doc);
	xmlNsPtr xsi = xmlSearchNs(doc, root, (const xmlChar*)"xsi");
	xmlSetNsProp(node, xsi, (const xmlChar*)"type", (const xmlChar*)"etp:ProfilePaymentELV");
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	[super addAttributesToNode:node];
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	[super addElementsToNode:node];
	
	if(self.mandateID != 0) {
		xmlAddChild(node, [self.mandateID xmlNodeForDoc:node->doc elementName:@"mandateID" elementNSPrefix:nil]);
	}
	if(self.dateOfSignature != 0) {
		xmlAddChild(node, [self.dateOfSignature xmlNodeForDoc:node->doc elementName:@"dateOfSignature" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize mandateID;
@synthesize dateOfSignature;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_ProfilePaymentELV *)deserializeNode:(xmlNodePtr)cur
{
	ETP_ProfilePaymentELV *newObject = [[ETP_ProfilePaymentELV new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
	[super deserializeAttributesFromNode:cur];
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	[super deserializeElementsFromNode:cur];
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "mandateID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.mandateID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "dateOfSignature")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSDate class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.dateOfSignature = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_Withdraw
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		amount = 0;
		currency = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(amount != nil) [amount release];
	if(currency != nil) [currency release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.amount != 0) {
		xmlAddChild(node, [self.amount xmlNodeForDoc:node->doc elementName:@"amount" elementNSPrefix:nil]);
	}
	if(self.currency != 0) {
		xmlAddChild(node, [self.currency xmlNodeForDoc:node->doc elementName:@"currency" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize amount;
@synthesize currency;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_Withdraw *)deserializeNode:(xmlNodePtr)cur
{
	ETP_Withdraw *newObject = [[ETP_Withdraw new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "amount")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.amount = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "currency")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.currency = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_WithdrawCC
- (id)init
{
	if((self = [super init])) {
		brand = 0;
		identifier = 0;
		expiry = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(brand != nil) [brand release];
	if(identifier != nil) [identifier release];
	if(expiry != nil) [expiry release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	xmlNodePtr root = xmlDocGetRootElement(doc);
	xmlNsPtr xsi = xmlSearchNs(doc, root, (const xmlChar*)"xsi");
	xmlSetNsProp(node, xsi, (const xmlChar*)"type", (const xmlChar*)"etp:WithdrawCC");
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	[super addAttributesToNode:node];
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	[super addElementsToNode:node];
	
	if(self.brand != 0) {
		xmlAddChild(node, [self.brand xmlNodeForDoc:node->doc elementName:@"brand" elementNSPrefix:nil]);
	}
	if(self.identifier != 0) {
		xmlAddChild(node, [self.identifier xmlNodeForDoc:node->doc elementName:@"identifier" elementNSPrefix:nil]);
	}
	if(self.expiry != 0) {
		xmlAddChild(node, [self.expiry xmlNodeForDoc:node->doc elementName:@"expiry" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize brand;
@synthesize identifier;
@synthesize expiry;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_WithdrawCC *)deserializeNode:(xmlNodePtr)cur
{
	ETP_WithdrawCC *newObject = [[ETP_WithdrawCC new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
	[super deserializeAttributesFromNode:cur];
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	[super deserializeElementsFromNode:cur];
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "brand")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.brand = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "identifier")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.identifier = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "expiry")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.expiry = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_WithdrawMAESTRO
- (id)init
{
	if((self = [super init])) {
		identifier = 0;
		expiry = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(identifier != nil) [identifier release];
	if(expiry != nil) [expiry release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	xmlNodePtr root = xmlDocGetRootElement(doc);
	xmlNsPtr xsi = xmlSearchNs(doc, root, (const xmlChar*)"xsi");
	xmlSetNsProp(node, xsi, (const xmlChar*)"type", (const xmlChar*)"etp:WithdrawMAESTRO");
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	[super addAttributesToNode:node];
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	[super addElementsToNode:node];
	
	if(self.identifier != 0) {
		xmlAddChild(node, [self.identifier xmlNodeForDoc:node->doc elementName:@"identifier" elementNSPrefix:nil]);
	}
	if(self.expiry != 0) {
		xmlAddChild(node, [self.expiry xmlNodeForDoc:node->doc elementName:@"expiry" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize identifier;
@synthesize expiry;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_WithdrawMAESTRO *)deserializeNode:(xmlNodePtr)cur
{
	ETP_WithdrawMAESTRO *newObject = [[ETP_WithdrawMAESTRO new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
	[super deserializeAttributesFromNode:cur];
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	[super deserializeElementsFromNode:cur];
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "identifier")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.identifier = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "expiry")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.expiry = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_WithdrawELV
- (id)init
{
	if((self = [super init])) {
		brand = 0;
		iban = 0;
		bic = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(brand != nil) [brand release];
	if(iban != nil) [iban release];
	if(bic != nil) [bic release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	xmlNodePtr root = xmlDocGetRootElement(doc);
	xmlNsPtr xsi = xmlSearchNs(doc, root, (const xmlChar*)"xsi");
	xmlSetNsProp(node, xsi, (const xmlChar*)"type", (const xmlChar*)"etp:WithdrawELV");
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	[super addAttributesToNode:node];
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	[super addElementsToNode:node];
	
	if(self.brand != 0) {
		xmlAddChild(node, [self.brand xmlNodeForDoc:node->doc elementName:@"brand" elementNSPrefix:nil]);
	}
	if(self.iban != 0) {
		xmlAddChild(node, [self.iban xmlNodeForDoc:node->doc elementName:@"iban" elementNSPrefix:nil]);
	}
	if(self.bic != 0) {
		xmlAddChild(node, [self.bic xmlNodeForDoc:node->doc elementName:@"bic" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize brand;
@synthesize iban;
@synthesize bic;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_WithdrawELV *)deserializeNode:(xmlNodePtr)cur
{
	ETP_WithdrawELV *newObject = [[ETP_WithdrawELV new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
	[super deserializeAttributesFromNode:cur];
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	[super deserializeElementsFromNode:cur];
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "brand")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.brand = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "iban")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.iban = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "bic")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.bic = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_Item
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		number = 0;
		productNr = 0;
		description = 0;
		package = 0;
		quantity = 0;
		tax = 0;
		amount = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(number != nil) [number release];
	if(productNr != nil) [productNr release];
	if(description != nil) [description release];
	if(package != nil) [package release];
	if(quantity != nil) [quantity release];
	if(tax != nil) [tax release];
	if(amount != nil) [amount release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.number != 0) {
		xmlAddChild(node, [self.number xmlNodeForDoc:node->doc elementName:@"number" elementNSPrefix:nil]);
	}
	if(self.productNr != 0) {
		xmlAddChild(node, [self.productNr xmlNodeForDoc:node->doc elementName:@"productNr" elementNSPrefix:nil]);
	}
	if(self.description != 0) {
		xmlAddChild(node, [self.description xmlNodeForDoc:node->doc elementName:@"description" elementNSPrefix:nil]);
	}
	if(self.package != 0) {
		xmlAddChild(node, [self.package xmlNodeForDoc:node->doc elementName:@"package" elementNSPrefix:nil]);
	}
	if(self.quantity != 0) {
		xmlAddChild(node, [self.quantity xmlNodeForDoc:node->doc elementName:@"quantity" elementNSPrefix:nil]);
	}
	if(self.tax != 0) {
		xmlAddChild(node, [self.tax xmlNodeForDoc:node->doc elementName:@"tax" elementNSPrefix:nil]);
	}
	if(self.amount != 0) {
		xmlAddChild(node, [self.amount xmlNodeForDoc:node->doc elementName:@"amount" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize number;
@synthesize productNr;
@synthesize description;
@synthesize package;
@synthesize quantity;
@synthesize tax;
@synthesize amount;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_Item *)deserializeNode:(xmlNodePtr)cur
{
	ETP_Item *newObject = [[ETP_Item new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "number")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.number = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "productNr")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.productNr = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "description")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.description = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "package")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.package = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "quantity")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.quantity = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "tax")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.tax = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "amount")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.amount = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_ShoppingCart
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		item = [[NSMutableArray alloc] init];
		discount = 0;
		shippingCosts = 0;
		shippingTax = 0;
		tax = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(item != nil) [item release];
	if(discount != nil) [discount release];
	if(shippingCosts != nil) [shippingCosts release];
	if(shippingTax != nil) [shippingTax release];
	if(tax != nil) [tax release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.item != 0) {
		for(ETP_Item * child in self.item) {
			xmlAddChild(node, [child xmlNodeForDoc:node->doc elementName:@"item" elementNSPrefix:nil]);
		}
	}
	if(self.discount != 0) {
		xmlAddChild(node, [self.discount xmlNodeForDoc:node->doc elementName:@"discount" elementNSPrefix:nil]);
	}
	if(self.shippingCosts != 0) {
		xmlAddChild(node, [self.shippingCosts xmlNodeForDoc:node->doc elementName:@"shippingCosts" elementNSPrefix:nil]);
	}
	if(self.shippingTax != 0) {
		xmlAddChild(node, [self.shippingTax xmlNodeForDoc:node->doc elementName:@"shippingTax" elementNSPrefix:nil]);
	}
	if(self.tax != 0) {
		xmlAddChild(node, [self.tax xmlNodeForDoc:node->doc elementName:@"tax" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize item;
- (void)addItem:(ETP_Item *)toAdd
{
	if(toAdd != nil) [item addObject:toAdd];
}
@synthesize discount;
@synthesize shippingCosts;
@synthesize shippingTax;
@synthesize tax;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_ShoppingCart *)deserializeNode:(xmlNodePtr)cur
{
	ETP_ShoppingCart *newObject = [[ETP_ShoppingCart new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "item")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [ETP_Item class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				if(newChild != nil) [self.item addObject:newChild];
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "discount")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.discount = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "shippingCosts")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.shippingCosts = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "shippingTax")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.shippingTax = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "tax")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.tax = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_IndustrySpecific
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
}
/* elements */
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_IndustrySpecific *)deserializeNode:(xmlNodePtr)cur
{
	ETP_IndustrySpecific *newObject = [[ETP_IndustrySpecific new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_AirlineTicket
- (id)init
{
	if((self = [super init])) {
		iataCode = 0;
		ticketID = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(iataCode != nil) [iataCode release];
	if(ticketID != nil) [ticketID release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	xmlNodePtr root = xmlDocGetRootElement(doc);
	xmlNsPtr xsi = xmlSearchNs(doc, root, (const xmlChar*)"xsi");
	xmlSetNsProp(node, xsi, (const xmlChar*)"type", (const xmlChar*)"etp:AirlineTicket");
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	[super addAttributesToNode:node];
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	[super addElementsToNode:node];
	
	if(self.iataCode != 0) {
		xmlAddChild(node, [self.iataCode xmlNodeForDoc:node->doc elementName:@"iataCode" elementNSPrefix:nil]);
	}
	if(self.ticketID != 0) {
		xmlAddChild(node, [self.ticketID xmlNodeForDoc:node->doc elementName:@"ticketID" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize iataCode;
@synthesize ticketID;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_AirlineTicket *)deserializeNode:(xmlNodePtr)cur
{
	ETP_AirlineTicket *newObject = [[ETP_AirlineTicket new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
	[super deserializeAttributesFromNode:cur];
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	[super deserializeElementsFromNode:cur];
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "iataCode")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.iataCode = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "ticketID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.ticketID = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_Address
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		mode = 0;
		name = 0;
		gender = 0;
		birthday = 0;
		street = 0;
		street2 = 0;
		zip = 0;
		city = 0;
		state = 0;
		countryCode = 0;
		email = 0;
		phone = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(name != nil) [name release];
	if(birthday != nil) [birthday release];
	if(street != nil) [street release];
	if(street2 != nil) [street2 release];
	if(zip != nil) [zip release];
	if(city != nil) [city release];
	if(state != nil) [state release];
	if(countryCode != nil) [countryCode release];
	if(email != nil) [email release];
	if(phone != nil) [phone release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.mode != 0) {
		xmlNewChild(node, NULL, (const xmlChar*)"mode", [ETP_AddressMode_stringFromEnum(self.mode) xmlString]);
	}
	if(self.name != 0) {
		xmlAddChild(node, [self.name xmlNodeForDoc:node->doc elementName:@"name" elementNSPrefix:nil]);
	}
	if(self.gender != 0) {
		xmlNewChild(node, NULL, (const xmlChar*)"gender", [ETP_Gender_stringFromEnum(self.gender) xmlString]);
	}
	if(self.birthday != 0) {
		xmlAddChild(node, [self.birthday xmlNodeForDoc:node->doc elementName:@"birthday" elementNSPrefix:nil]);
	}
	if(self.street != 0) {
		xmlAddChild(node, [self.street xmlNodeForDoc:node->doc elementName:@"street" elementNSPrefix:nil]);
	}
	if(self.street2 != 0) {
		xmlAddChild(node, [self.street2 xmlNodeForDoc:node->doc elementName:@"street2" elementNSPrefix:nil]);
	}
	if(self.zip != 0) {
		xmlAddChild(node, [self.zip xmlNodeForDoc:node->doc elementName:@"zip" elementNSPrefix:nil]);
	}
	if(self.city != 0) {
		xmlAddChild(node, [self.city xmlNodeForDoc:node->doc elementName:@"city" elementNSPrefix:nil]);
	}
	if(self.state != 0) {
		xmlAddChild(node, [self.state xmlNodeForDoc:node->doc elementName:@"state" elementNSPrefix:nil]);
	}
	if(self.countryCode != 0) {
		xmlAddChild(node, [self.countryCode xmlNodeForDoc:node->doc elementName:@"countryCode" elementNSPrefix:nil]);
	}
	if(self.email != 0) {
		xmlAddChild(node, [self.email xmlNodeForDoc:node->doc elementName:@"email" elementNSPrefix:nil]);
	}
	if(self.phone != 0) {
		xmlAddChild(node, [self.phone xmlNodeForDoc:node->doc elementName:@"phone" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize mode;
@synthesize name;
@synthesize gender;
@synthesize birthday;
@synthesize street;
@synthesize street2;
@synthesize zip;
@synthesize city;
@synthesize state;
@synthesize countryCode;
@synthesize email;
@synthesize phone;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_Address *)deserializeNode:(xmlNodePtr)cur
{
	ETP_Address *newObject = [[ETP_Address new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "mode")) {
				
				ETP_AddressMode enumRepresentation = ETP_AddressMode_enumFromString(elementString);
				self.mode = enumRepresentation;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "name")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.name = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "gender")) {
				
				ETP_Gender enumRepresentation = ETP_Gender_enumFromString(elementString);
				self.gender = enumRepresentation;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "birthday")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSDate class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.birthday = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "street")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.street = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "street2")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.street2 = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "zip")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.zip = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "city")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.city = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "state")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.state = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "countryCode")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.countryCode = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "email")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.email = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "phone")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.phone = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_Order
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		clientIP = 0;
		description = 0;
		userField = 0;
		shoppingCart = 0;
		industrySpecific = 0;
		billing = 0;
		shipping = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(clientIP != nil) [clientIP release];
	if(description != nil) [description release];
	if(userField != nil) [userField release];
	if(shoppingCart != nil) [shoppingCart release];
	if(industrySpecific != nil) [industrySpecific release];
	if(billing != nil) [billing release];
	if(shipping != nil) [shipping release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.clientIP != 0) {
		xmlAddChild(node, [self.clientIP xmlNodeForDoc:node->doc elementName:@"clientIP" elementNSPrefix:nil]);
	}
	if(self.description != 0) {
		xmlAddChild(node, [self.description xmlNodeForDoc:node->doc elementName:@"description" elementNSPrefix:nil]);
	}
	if(self.userField != 0) {
		xmlAddChild(node, [self.userField xmlNodeForDoc:node->doc elementName:@"userField" elementNSPrefix:nil]);
	}
	if(self.shoppingCart != 0) {
		xmlAddChild(node, [self.shoppingCart xmlNodeForDoc:node->doc elementName:@"shoppingCart" elementNSPrefix:nil]);
	}
	if(self.industrySpecific != 0) {
		xmlAddChild(node, [self.industrySpecific xmlNodeForDoc:node->doc elementName:@"industrySpecific" elementNSPrefix:nil]);
	}
	if(self.billing != 0) {
		xmlAddChild(node, [self.billing xmlNodeForDoc:node->doc elementName:@"billing" elementNSPrefix:nil]);
	}
	if(self.shipping != 0) {
		xmlAddChild(node, [self.shipping xmlNodeForDoc:node->doc elementName:@"shipping" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize clientIP;
@synthesize description;
@synthesize userField;
@synthesize shoppingCart;
@synthesize industrySpecific;
@synthesize billing;
@synthesize shipping;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_Order *)deserializeNode:(xmlNodePtr)cur
{
	ETP_Order *newObject = [[ETP_Order new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "clientIP")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.clientIP = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "description")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.description = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "userField")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.userField = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "shoppingCart")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [ETP_ShoppingCart class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.shoppingCart = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "industrySpecific")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [ETP_IndustrySpecific class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.industrySpecific = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "billing")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [ETP_Address class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.billing = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "shipping")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [ETP_Address class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.shipping = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_Callback
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		amount = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(amount != nil) [amount release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.amount != 0) {
		xmlAddChild(node, [self.amount xmlNodeForDoc:node->doc elementName:@"amount" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize amount;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_Callback *)deserializeNode:(xmlNodePtr)cur
{
	ETP_Callback *newObject = [[ETP_Callback new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "amount")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.amount = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_CallbackPAYPAL
- (id)init
{
	if((self = [super init])) {
		cancel = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(cancel != nil) [cancel release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	xmlNodePtr root = xmlDocGetRootElement(doc);
	xmlNsPtr xsi = xmlSearchNs(doc, root, (const xmlChar*)"xsi");
	xmlSetNsProp(node, xsi, (const xmlChar*)"type", (const xmlChar*)"etp:CallbackPAYPAL");
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	[super addAttributesToNode:node];
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	[super addElementsToNode:node];
	
	if(self.cancel != 0) {
		xmlAddChild(node, [self.cancel xmlNodeForDoc:node->doc elementName:@"cancel" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize cancel;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_CallbackPAYPAL *)deserializeNode:(xmlNodePtr)cur
{
	ETP_CallbackPAYPAL *newObject = [[ETP_CallbackPAYPAL new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
	[super deserializeAttributesFromNode:cur];
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	[super deserializeElementsFromNode:cur];
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "cancel")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [USBoolean class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.cancel = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_CallbackMASTERPASS
- (id)init
{
	if((self = [super init])) {
		cancel = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(cancel != nil) [cancel release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	xmlNodePtr root = xmlDocGetRootElement(doc);
	xmlNsPtr xsi = xmlSearchNs(doc, root, (const xmlChar*)"xsi");
	xmlSetNsProp(node, xsi, (const xmlChar*)"type", (const xmlChar*)"etp:CallbackMASTERPASS");
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	[super addAttributesToNode:node];
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	[super addElementsToNode:node];
	
	if(self.cancel != 0) {
		xmlAddChild(node, [self.cancel xmlNodeForDoc:node->doc elementName:@"cancel" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize cancel;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_CallbackMASTERPASS *)deserializeNode:(xmlNodePtr)cur
{
	ETP_CallbackMASTERPASS *newObject = [[ETP_CallbackMASTERPASS new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
	[super deserializeAttributesFromNode:cur];
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	[super deserializeElementsFromNode:cur];
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "cancel")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [USBoolean class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.cancel = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_ClearingDetails
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		mpayTID = 0;
		amount = 0;
		order = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(mpayTID != nil) [mpayTID release];
	if(amount != nil) [amount release];
	if(order != nil) [order release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.mpayTID != 0) {
		xmlAddChild(node, [self.mpayTID xmlNodeForDoc:node->doc elementName:@"mpayTID" elementNSPrefix:nil]);
	}
	if(self.amount != 0) {
		xmlAddChild(node, [self.amount xmlNodeForDoc:node->doc elementName:@"amount" elementNSPrefix:nil]);
	}
	if(self.order != 0) {
		xmlAddChild(node, [self.order xmlNodeForDoc:node->doc elementName:@"order" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize mpayTID;
@synthesize amount;
@synthesize order;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_ClearingDetails *)deserializeNode:(xmlNodePtr)cur
{
	ETP_ClearingDetails *newObject = [[ETP_ClearingDetails new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "mpayTID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.mpayTID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "amount")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.amount = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "order")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [ETP_Order class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.order = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_Transaction
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		mpayTID = 0;
		tStatus = 0;
		stateID = 0;
		tid = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(mpayTID != nil) [mpayTID release];
	if(stateID != nil) [stateID release];
	if(tid != nil) [tid release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.mpayTID != 0) {
		xmlAddChild(node, [self.mpayTID xmlNodeForDoc:node->doc elementName:@"mpayTID" elementNSPrefix:nil]);
	}
	if(self.tStatus != 0) {
		xmlNewChild(node, NULL, (const xmlChar*)"tStatus", [ETP_TStatus_stringFromEnum(self.tStatus) xmlString]);
	}
	if(self.stateID != 0) {
		xmlAddChild(node, [self.stateID xmlNodeForDoc:node->doc elementName:@"stateID" elementNSPrefix:nil]);
	}
	if(self.tid != 0) {
		xmlAddChild(node, [self.tid xmlNodeForDoc:node->doc elementName:@"tid" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize mpayTID;
@synthesize tStatus;
@synthesize stateID;
@synthesize tid;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_Transaction *)deserializeNode:(xmlNodePtr)cur
{
	ETP_Transaction *newObject = [[ETP_Transaction new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "mpayTID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.mpayTID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "tStatus")) {
				
				ETP_TStatus enumRepresentation = ETP_TStatus_enumFromString(elementString);
				self.tStatus = enumRepresentation;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "stateID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.stateID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "tid")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.tid = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_TransactionDetails
- (id)init
{
	if((self = [super init])) {
		orderDescription = 0;
		pType = 0;
		brand = 0;
		amount = 0;
		currency = 0;
		bifStatus = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(orderDescription != nil) [orderDescription release];
	if(brand != nil) [brand release];
	if(amount != nil) [amount release];
	if(currency != nil) [currency release];
	if(bifStatus != nil) [bifStatus release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	xmlNodePtr root = xmlDocGetRootElement(doc);
	xmlNsPtr xsi = xmlSearchNs(doc, root, (const xmlChar*)"xsi");
	xmlSetNsProp(node, xsi, (const xmlChar*)"type", (const xmlChar*)"etp:TransactionDetails");
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	[super addAttributesToNode:node];
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	[super addElementsToNode:node];
	
	if(self.orderDescription != 0) {
		xmlAddChild(node, [self.orderDescription xmlNodeForDoc:node->doc elementName:@"orderDescription" elementNSPrefix:nil]);
	}
	if(self.pType != 0) {
		xmlNewChild(node, NULL, (const xmlChar*)"pType", [ETP_PaymentType_stringFromEnum(self.pType) xmlString]);
	}
	if(self.brand != 0) {
		xmlAddChild(node, [self.brand xmlNodeForDoc:node->doc elementName:@"brand" elementNSPrefix:nil]);
	}
	if(self.amount != 0) {
		xmlAddChild(node, [self.amount xmlNodeForDoc:node->doc elementName:@"amount" elementNSPrefix:nil]);
	}
	if(self.currency != 0) {
		xmlAddChild(node, [self.currency xmlNodeForDoc:node->doc elementName:@"currency" elementNSPrefix:nil]);
	}
	if(self.bifStatus != 0) {
		xmlAddChild(node, [self.bifStatus xmlNodeForDoc:node->doc elementName:@"bifStatus" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize orderDescription;
@synthesize pType;
@synthesize brand;
@synthesize amount;
@synthesize currency;
@synthesize bifStatus;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_TransactionDetails *)deserializeNode:(xmlNodePtr)cur
{
	ETP_TransactionDetails *newObject = [[ETP_TransactionDetails new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
	[super deserializeAttributesFromNode:cur];
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	[super deserializeElementsFromNode:cur];
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "orderDescription")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.orderDescription = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "pType")) {
				
				ETP_PaymentType enumRepresentation = ETP_PaymentType_enumFromString(elementString);
				self.pType = enumRepresentation;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "brand")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.brand = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "amount")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.amount = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "currency")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.currency = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "bifStatus")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.bifStatus = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_Parameter
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		name = 0;
		value = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(name != nil) [name release];
	if(value != nil) [value release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.name != 0) {
		xmlAddChild(node, [self.name xmlNodeForDoc:node->doc elementName:@"name" elementNSPrefix:nil]);
	}
	if(self.value != 0) {
		xmlAddChild(node, [self.value xmlNodeForDoc:node->doc elementName:@"value" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize name;
@synthesize value;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_Parameter *)deserializeNode:(xmlNodePtr)cur
{
	ETP_Parameter *newObject = [[ETP_Parameter new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "name")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.name = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "value")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.value = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_HistoryEntry
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		stateID = 0;
		parentStateID = 0;
		txState = 0;
		amount = 0;
		timeStamp = 0;
		approvalCode = 0;
		errNo = 0;
		errText = 0;
		profileStatus = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(stateID != nil) [stateID release];
	if(parentStateID != nil) [parentStateID release];
	if(amount != nil) [amount release];
	if(timeStamp != nil) [timeStamp release];
	if(approvalCode != nil) [approvalCode release];
	if(errNo != nil) [errNo release];
	if(errText != nil) [errText release];
	if(profileStatus != nil) [profileStatus release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.stateID != 0) {
		xmlAddChild(node, [self.stateID xmlNodeForDoc:node->doc elementName:@"stateID" elementNSPrefix:nil]);
	}
	if(self.parentStateID != 0) {
		xmlAddChild(node, [self.parentStateID xmlNodeForDoc:node->doc elementName:@"parentStateID" elementNSPrefix:nil]);
	}
	if(self.txState != 0) {
		xmlNewChild(node, NULL, (const xmlChar*)"txState", [ETP_TxState_stringFromEnum(self.txState) xmlString]);
	}
	if(self.amount != 0) {
		xmlAddChild(node, [self.amount xmlNodeForDoc:node->doc elementName:@"amount" elementNSPrefix:nil]);
	}
	if(self.timeStamp != 0) {
		xmlAddChild(node, [self.timeStamp xmlNodeForDoc:node->doc elementName:@"timeStamp" elementNSPrefix:nil]);
	}
	if(self.approvalCode != 0) {
		xmlAddChild(node, [self.approvalCode xmlNodeForDoc:node->doc elementName:@"approvalCode" elementNSPrefix:nil]);
	}
	if(self.errNo != 0) {
		xmlAddChild(node, [self.errNo xmlNodeForDoc:node->doc elementName:@"errNo" elementNSPrefix:nil]);
	}
	if(self.errText != 0) {
		xmlAddChild(node, [self.errText xmlNodeForDoc:node->doc elementName:@"errText" elementNSPrefix:nil]);
	}
	if(self.profileStatus != 0) {
		xmlAddChild(node, [self.profileStatus xmlNodeForDoc:node->doc elementName:@"profileStatus" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize stateID;
@synthesize parentStateID;
@synthesize txState;
@synthesize amount;
@synthesize timeStamp;
@synthesize approvalCode;
@synthesize errNo;
@synthesize errText;
@synthesize profileStatus;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_HistoryEntry *)deserializeNode:(xmlNodePtr)cur
{
	ETP_HistoryEntry *newObject = [[ETP_HistoryEntry new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "stateID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.stateID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "parentStateID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.parentStateID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "txState")) {
				
				ETP_TxState enumRepresentation = ETP_TxState_enumFromString(elementString);
				self.txState = enumRepresentation;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "amount")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.amount = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "timeStamp")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSDate class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.timeStamp = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "approvalCode")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.approvalCode = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "errNo")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.errNo = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "errText")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.errText = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "profileStatus")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.profileStatus = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_Confirmation
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		status = 0;
		confirmed = 0;
		timeStamp = 0;
		url = 0;
		result = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(timeStamp != nil) [timeStamp release];
	if(url != nil) [url release];
	if(result != nil) [result release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.status != 0) {
		xmlNewChild(node, NULL, (const xmlChar*)"status", [ETP_ConfirmationStatus_stringFromEnum(self.status) xmlString]);
	}
	if(self.confirmed != 0) {
		xmlNewChild(node, NULL, (const xmlChar*)"confirmed", [ETP_Confirmed_stringFromEnum(self.confirmed) xmlString]);
	}
	if(self.timeStamp != 0) {
		xmlAddChild(node, [self.timeStamp xmlNodeForDoc:node->doc elementName:@"timeStamp" elementNSPrefix:nil]);
	}
	if(self.url != 0) {
		xmlAddChild(node, [self.url xmlNodeForDoc:node->doc elementName:@"url" elementNSPrefix:nil]);
	}
	if(self.result != 0) {
		xmlAddChild(node, [self.result xmlNodeForDoc:node->doc elementName:@"result" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize status;
@synthesize confirmed;
@synthesize timeStamp;
@synthesize url;
@synthesize result;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_Confirmation *)deserializeNode:(xmlNodePtr)cur
{
	ETP_Confirmation *newObject = [[ETP_Confirmation new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "status")) {
				
				ETP_ConfirmationStatus enumRepresentation = ETP_ConfirmationStatus_enumFromString(elementString);
				self.status = enumRepresentation;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "confirmed")) {
				
				ETP_Confirmed enumRepresentation = ETP_Confirmed_enumFromString(elementString);
				self.confirmed = enumRepresentation;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "timeStamp")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSDate class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.timeStamp = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "url")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.url = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "result")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.result = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_PaymentMethod
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		pType = 0;
		brand = 0;
		description = 0;
		id_ = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(brand != nil) [brand release];
	if(description != nil) [description release];
	if(id_ != nil) [id_ release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
	if(self.id_ != 0) {
		xmlSetProp(node, (const xmlChar*)"id", [[self.id_ description] xmlString]);
	}
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.pType != 0) {
		xmlNewChild(node, NULL, (const xmlChar*)"pType", [ETP_PaymentType_stringFromEnum(self.pType) xmlString]);
	}
	if(self.brand != 0) {
		xmlAddChild(node, [self.brand xmlNodeForDoc:node->doc elementName:@"brand" elementNSPrefix:nil]);
	}
	if(self.description != 0) {
		xmlAddChild(node, [self.description xmlNodeForDoc:node->doc elementName:@"description" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize pType;
@synthesize brand;
@synthesize description;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	[attributes setObject:self.id_ forKey:@"id"];
	
	return attributes;
}
@synthesize id_;
+ (ETP_PaymentMethod *)deserializeNode:(xmlNodePtr)cur
{
	ETP_PaymentMethod *newObject = [[ETP_PaymentMethod new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
	xmlChar *attrValue = NULL;
	NSString *attrString;
	
	attrValue = xmlGetProp(cur, (const xmlChar *) "id");
	if(attrValue != NULL) {
		attrString = [NSString stringWithCString:(char*)attrValue encoding:NSUTF8StringEncoding];
		self.id_ = [NSNumber numberWithUnsignedInt:[attrString intValue]];
		xmlFree(attrValue);
	}
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "pType")) {
				
				ETP_PaymentType enumRepresentation = ETP_PaymentType_enumFromString(elementString);
				self.pType = enumRepresentation;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "brand")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.brand = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "description")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.description = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_PaymentProfile
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		pMethodID = 0;
		profileID = 0;
		updated = 0;
		identifier = 0;
		expires = 0;
		address = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(pMethodID != nil) [pMethodID release];
	if(profileID != nil) [profileID release];
	if(updated != nil) [updated release];
	if(identifier != nil) [identifier release];
	if(expires != nil) [expires release];
	if(address != nil) [address release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.pMethodID != 0) {
		xmlAddChild(node, [self.pMethodID xmlNodeForDoc:node->doc elementName:@"pMethodID" elementNSPrefix:nil]);
	}
	if(self.profileID != 0) {
		xmlAddChild(node, [self.profileID xmlNodeForDoc:node->doc elementName:@"profileID" elementNSPrefix:nil]);
	}
	if(self.updated != 0) {
		xmlAddChild(node, [self.updated xmlNodeForDoc:node->doc elementName:@"updated" elementNSPrefix:nil]);
	}
	if(self.identifier != 0) {
		xmlAddChild(node, [self.identifier xmlNodeForDoc:node->doc elementName:@"identifier" elementNSPrefix:nil]);
	}
	if(self.expires != 0) {
		xmlAddChild(node, [self.expires xmlNodeForDoc:node->doc elementName:@"expires" elementNSPrefix:nil]);
	}
	if(self.address != 0) {
		xmlAddChild(node, [self.address xmlNodeForDoc:node->doc elementName:@"address" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize pMethodID;
@synthesize profileID;
@synthesize updated;
@synthesize identifier;
@synthesize expires;
@synthesize address;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_PaymentProfile *)deserializeNode:(xmlNodePtr)cur
{
	ETP_PaymentProfile *newObject = [[ETP_PaymentProfile new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "pMethodID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.pMethodID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "profileID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.profileID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "updated")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSDate class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.updated = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "identifier")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.identifier = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "expires")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSDate class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.expires = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "address")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [ETP_Address class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.address = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_Profile
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		customerID = 0;
		updated = 0;
		payment = [[NSMutableArray alloc] init];
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(customerID != nil) [customerID release];
	if(updated != nil) [updated release];
	if(payment != nil) [payment release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.customerID != 0) {
		xmlAddChild(node, [self.customerID xmlNodeForDoc:node->doc elementName:@"customerID" elementNSPrefix:nil]);
	}
	if(self.updated != 0) {
		xmlAddChild(node, [self.updated xmlNodeForDoc:node->doc elementName:@"updated" elementNSPrefix:nil]);
	}
	if(self.payment != 0) {
		for(ETP_PaymentProfile * child in self.payment) {
			xmlAddChild(node, [child xmlNodeForDoc:node->doc elementName:@"payment" elementNSPrefix:nil]);
		}
	}
}
/* elements */
@synthesize customerID;
@synthesize updated;
@synthesize payment;
- (void)addPayment:(ETP_PaymentProfile *)toAdd
{
	if(toAdd != nil) [payment addObject:toAdd];
}
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_Profile *)deserializeNode:(xmlNodePtr)cur
{
	ETP_Profile *newObject = [[ETP_Profile new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "customerID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.customerID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "updated")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSDate class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.updated = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "payment")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [ETP_PaymentProfile class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				if(newChild != nil) [self.payment addObject:newChild];
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_SelectPayment
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		merchantID = 0;
		mdxi = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(merchantID != nil) [merchantID release];
	if(mdxi != nil) [mdxi release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.merchantID != 0) {
		xmlAddChild(node, [self.merchantID xmlNodeForDoc:node->doc elementName:@"merchantID" elementNSPrefix:nil]);
	}
	if(self.mdxi != 0) {
		xmlAddChild(node, [self.mdxi xmlNodeForDoc:node->doc elementName:@"mdxi" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize merchantID;
@synthesize mdxi;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_SelectPayment *)deserializeNode:(xmlNodePtr)cur
{
	ETP_SelectPayment *newObject = [[ETP_SelectPayment new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "merchantID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.merchantID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "mdxi")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.mdxi = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_SelectPaymentResponse
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		status = 0;
		returnCode = 0;
		errNo = 0;
		errText = 0;
		location = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(returnCode != nil) [returnCode release];
	if(errNo != nil) [errNo release];
	if(errText != nil) [errText release];
	if(location != nil) [location release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.status != 0) {
		xmlNewChild(node, NULL, (const xmlChar*)"status", [ETP_Status_stringFromEnum(self.status) xmlString]);
	}
	if(self.returnCode != 0) {
		xmlAddChild(node, [self.returnCode xmlNodeForDoc:node->doc elementName:@"returnCode" elementNSPrefix:nil]);
	}
	if(self.errNo != 0) {
		xmlAddChild(node, [self.errNo xmlNodeForDoc:node->doc elementName:@"errNo" elementNSPrefix:nil]);
	}
	if(self.errText != 0) {
		xmlAddChild(node, [self.errText xmlNodeForDoc:node->doc elementName:@"errText" elementNSPrefix:nil]);
	}
	if(self.location != 0) {
		xmlAddChild(node, [self.location xmlNodeForDoc:node->doc elementName:@"location" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize status;
@synthesize returnCode;
@synthesize errNo;
@synthesize errText;
@synthesize location;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_SelectPaymentResponse *)deserializeNode:(xmlNodePtr)cur
{
	ETP_SelectPaymentResponse *newObject = [[ETP_SelectPaymentResponse new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "status")) {
				
				ETP_Status enumRepresentation = ETP_Status_enumFromString(elementString);
				self.status = enumRepresentation;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "returnCode")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.returnCode = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "errNo")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.errNo = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "errText")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.errText = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "location")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.location = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_CreatePaymentToken
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		merchantID = 0;
		pType = 0;
		templateSet = 0;
		style_ = 0;
		customerID = 0;
		profileID = 0;
		domain = 0;
		language = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(merchantID != nil) [merchantID release];
	if(templateSet != nil) [templateSet release];
	if(style_ != nil) [style_ release];
	if(customerID != nil) [customerID release];
	if(profileID != nil) [profileID release];
	if(domain != nil) [domain release];
	if(language != nil) [language release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.merchantID != 0) {
		xmlAddChild(node, [self.merchantID xmlNodeForDoc:node->doc elementName:@"merchantID" elementNSPrefix:nil]);
	}
	if(self.pType != 0) {
		xmlNewChild(node, NULL, (const xmlChar*)"pType", [ETP_PaymentType_stringFromEnum(self.pType) xmlString]);
	}
	if(self.templateSet != 0) {
		xmlAddChild(node, [self.templateSet xmlNodeForDoc:node->doc elementName:@"templateSet" elementNSPrefix:nil]);
	}
	if(self.style_ != 0) {
		xmlAddChild(node, [self.style_ xmlNodeForDoc:node->doc elementName:@"style" elementNSPrefix:nil]);
	}
	if(self.customerID != 0) {
		xmlAddChild(node, [self.customerID xmlNodeForDoc:node->doc elementName:@"customerID" elementNSPrefix:nil]);
	}
	if(self.profileID != 0) {
		xmlAddChild(node, [self.profileID xmlNodeForDoc:node->doc elementName:@"profileID" elementNSPrefix:nil]);
	}
	if(self.domain != 0) {
		xmlAddChild(node, [self.domain xmlNodeForDoc:node->doc elementName:@"domain" elementNSPrefix:nil]);
	}
	if(self.language != 0) {
		xmlAddChild(node, [self.language xmlNodeForDoc:node->doc elementName:@"language" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize merchantID;
@synthesize pType;
@synthesize templateSet;
@synthesize style_;
@synthesize customerID;
@synthesize profileID;
@synthesize domain;
@synthesize language;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_CreatePaymentToken *)deserializeNode:(xmlNodePtr)cur
{
	ETP_CreatePaymentToken *newObject = [[ETP_CreatePaymentToken new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "merchantID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.merchantID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "pType")) {
				
				ETP_PaymentType enumRepresentation = ETP_PaymentType_enumFromString(elementString);
				self.pType = enumRepresentation;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "templateSet")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.templateSet = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "style")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.style_ = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "customerID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.customerID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "profileID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.profileID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "domain")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.domain = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "language")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.language = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_CreatePaymentTokenResponse
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		status = 0;
		returnCode = 0;
		token = 0;
		apiKey = 0;
		errNo = 0;
		errText = 0;
		location = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(returnCode != nil) [returnCode release];
	if(token != nil) [token release];
	if(apiKey != nil) [apiKey release];
	if(errNo != nil) [errNo release];
	if(errText != nil) [errText release];
	if(location != nil) [location release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.status != 0) {
		xmlNewChild(node, NULL, (const xmlChar*)"status", [ETP_Status_stringFromEnum(self.status) xmlString]);
	}
	if(self.returnCode != 0) {
		xmlAddChild(node, [self.returnCode xmlNodeForDoc:node->doc elementName:@"returnCode" elementNSPrefix:nil]);
	}
	if(self.token != 0) {
		xmlAddChild(node, [self.token xmlNodeForDoc:node->doc elementName:@"token" elementNSPrefix:nil]);
	}
	if(self.apiKey != 0) {
		xmlAddChild(node, [self.apiKey xmlNodeForDoc:node->doc elementName:@"apiKey" elementNSPrefix:nil]);
	}
	if(self.errNo != 0) {
		xmlAddChild(node, [self.errNo xmlNodeForDoc:node->doc elementName:@"errNo" elementNSPrefix:nil]);
	}
	if(self.errText != 0) {
		xmlAddChild(node, [self.errText xmlNodeForDoc:node->doc elementName:@"errText" elementNSPrefix:nil]);
	}
	if(self.location != 0) {
		xmlAddChild(node, [self.location xmlNodeForDoc:node->doc elementName:@"location" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize status;
@synthesize returnCode;
@synthesize token;
@synthesize apiKey;
@synthesize errNo;
@synthesize errText;
@synthesize location;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_CreatePaymentTokenResponse *)deserializeNode:(xmlNodePtr)cur
{
	ETP_CreatePaymentTokenResponse *newObject = [[ETP_CreatePaymentTokenResponse new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "status")) {
				
				ETP_Status enumRepresentation = ETP_Status_enumFromString(elementString);
				self.status = enumRepresentation;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "returnCode")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.returnCode = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "token")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.token = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "apiKey")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.apiKey = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "errNo")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.errNo = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "errText")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.errText = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "location")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.location = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_CreateApplePayToken
@synthesize soapSigner;
- (id)init
{
    if((self = [super init])) {
        merchantID = 0;
        amount = 0;
        currency = 0;
        order = 0;
        domain = 0;
        language = 0;
    }

    return self;
}
- (void)dealloc
{
    [soapSigner release];
    if(merchantID != nil) [merchantID release];
    if(amount != nil) [amount release];
    if(currency != nil) [currency release];
    if(order != nil) [order release];
    if(domain != nil) [domain release];
    if(language != nil) [language release];

    [super dealloc];
}
- (NSString *)nsPrefix
{
    return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
    NSString *nodeName = nil;
    if(elNSPrefix != nil && [elNSPrefix length] > 0)
    {
        nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
    }
    else
    {
        nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
    }
    xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);

    [self addAttributesToNode:node];

    [self addElementsToNode:node];

    return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{

}
- (void)addElementsToNode:(xmlNodePtr)node
{

    if(self.merchantID != 0) {
        xmlAddChild(node, [self.merchantID xmlNodeForDoc:node->doc elementName:@"merchantID" elementNSPrefix:nil]);
    }
    if(self.amount != 0) {
        xmlAddChild(node, [self.amount xmlNodeForDoc:node->doc elementName:@"amount" elementNSPrefix:nil]);
    }
    if(self.currency != 0) {
        xmlAddChild(node, [self.currency xmlNodeForDoc:node->doc elementName:@"currency" elementNSPrefix:nil]);
    }
    if(self.order != 0) {
        xmlAddChild(node, [self.order xmlNodeForDoc:node->doc elementName:@"order" elementNSPrefix:nil]);
    }
    if(self.domain != 0) {
        xmlAddChild(node, [self.domain xmlNodeForDoc:node->doc elementName:@"domain" elementNSPrefix:nil]);
    }
    if(self.language != 0) {
        xmlAddChild(node, [self.language xmlNodeForDoc:node->doc elementName:@"language" elementNSPrefix:nil]);
    }
}
/* elements */
@synthesize merchantID;
@synthesize amount;
@synthesize currency;
@synthesize order;
@synthesize domain;
@synthesize language;
/* attributes */
- (NSDictionary *)attributes
{
    NSMutableDictionary *attributes = [NSMutableDictionary dictionary];

    return attributes;
}
+ (ETP_CreateApplePayToken *)deserializeNode:(xmlNodePtr)cur
{
    ETP_CreateApplePayToken *newObject = [[ETP_CreateApplePayToken new] autorelease];

    [newObject deserializeAttributesFromNode:cur];
    [newObject deserializeElementsFromNode:cur];

    return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{


    for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
        if(cur->type == XML_ELEMENT_NODE) {
            xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
            NSString *elementString = nil;

            if(elementText != NULL) {
                elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
                [elementString self]; // avoid compiler warning for unused var
                xmlFree(elementText);
            }
            if(xmlStrEqual(cur->name, (const xmlChar *) "merchantID")) {

                Class elementClass = nil;
                xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
                if(instanceType == NULL) {
                    elementClass = [NSNumber class];
                } else {
                    NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];

                    NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];

                    NSString *elementClassString = nil;
                    if([elementTypeArray count] > 1) {
                        NSString *prefix = [elementTypeArray objectAtIndex:0];
                        NSString *localName = [elementTypeArray objectAtIndex:1];

                        xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);

                        NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];

                        elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
                    } else {
                        elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
                    }

                    elementClass = NSClassFromString(elementClassString);
                    xmlFree(instanceType);
                }

                id newChild = [elementClass deserializeNode:cur];

                self.merchantID = newChild;
            }
            if(xmlStrEqual(cur->name, (const xmlChar *) "amount")) {
                
                Class elementClass = nil;
                xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
                if(instanceType == NULL) {
                    elementClass = [NSNumber class];
                } else {
                    NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
                    
                    NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
                    
                    NSString *elementClassString = nil;
                    if([elementTypeArray count] > 1) {
                        NSString *prefix = [elementTypeArray objectAtIndex:0];
                        NSString *localName = [elementTypeArray objectAtIndex:1];
                        
                        xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
                        
                        NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
                        
                        elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
                    } else {
                        elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
                    }
                    
                    elementClass = NSClassFromString(elementClassString);
                    xmlFree(instanceType);
                }
                
                id newChild = [elementClass deserializeNode:cur];
                
                self.amount = newChild;
            }
            if(xmlStrEqual(cur->name, (const xmlChar *) "currency")) {
                
                Class elementClass = nil;
                xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
                if(instanceType == NULL) {
                    elementClass = [NSString class];
                } else {
                    NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
                    
                    NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
                    
                    NSString *elementClassString = nil;
                    if([elementTypeArray count] > 1) {
                        NSString *prefix = [elementTypeArray objectAtIndex:0];
                        NSString *localName = [elementTypeArray objectAtIndex:1];
                        
                        xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
                        
                        NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
                        
                        elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
                    } else {
                        elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
                    }
                    
                    elementClass = NSClassFromString(elementClassString);
                    xmlFree(instanceType);
                }
                
                id newChild = [elementClass deserializeNode:cur];
                
                self.currency = newChild;
            }
            if(xmlStrEqual(cur->name, (const xmlChar *) "order")) {
                
                Class elementClass = nil;
                xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
                if(instanceType == NULL) {
                    elementClass = [ETP_Order class];
                } else {
                    NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
                    
                    NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
                    
                    NSString *elementClassString = nil;
                    if([elementTypeArray count] > 1) {
                        NSString *prefix = [elementTypeArray objectAtIndex:0];
                        NSString *localName = [elementTypeArray objectAtIndex:1];
                        
                        xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
                        
                        NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
                        
                        elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
                    } else {
                        elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
                    }
                    
                    elementClass = NSClassFromString(elementClassString);
                    xmlFree(instanceType);
                }
                
                id newChild = [elementClass deserializeNode:cur];
                
                self.order = newChild;
            }
            if(xmlStrEqual(cur->name, (const xmlChar *) "domain")) {

                Class elementClass = nil;
                xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
                if(instanceType == NULL) {
                    elementClass = [NSString class];
                } else {
                    NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];

                    NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];

                    NSString *elementClassString = nil;
                    if([elementTypeArray count] > 1) {
                        NSString *prefix = [elementTypeArray objectAtIndex:0];
                        NSString *localName = [elementTypeArray objectAtIndex:1];

                        xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);

                        NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];

                        elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
                    } else {
                        elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
                    }

                    elementClass = NSClassFromString(elementClassString);
                    xmlFree(instanceType);
                }

                id newChild = [elementClass deserializeNode:cur];

                self.domain = newChild;
            }
            if(xmlStrEqual(cur->name, (const xmlChar *) "language")) {

                Class elementClass = nil;
                xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
                if(instanceType == NULL) {
                    elementClass = [NSString class];
                } else {
                    NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];

                    NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];

                    NSString *elementClassString = nil;
                    if([elementTypeArray count] > 1) {
                        NSString *prefix = [elementTypeArray objectAtIndex:0];
                        NSString *localName = [elementTypeArray objectAtIndex:1];

                        xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);

                        NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];

                        elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
                    } else {
                        elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
                    }

                    elementClass = NSClassFromString(elementClassString);
                    xmlFree(instanceType);
                }

                id newChild = [elementClass deserializeNode:cur];

                self.language = newChild;
            }
        }
    }
}
/* NSCoder functions taken from:
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
    // ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
    // So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
    self = [super init];
    if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
        [super performSelector:@selector(initWithCoder:) withObject:decoder];
    if (self == nil) { return nil; }

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    unsigned int numIvars = 0;
    Ivar * ivars = class_copyIvarList([self class], &numIvars);
    for(int i = 0; i < numIvars; i++) {
        Ivar thisIvar = ivars[i];
        NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
        id val = [decoder decodeObjectForKey:key];
        if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
        [self setValue:val forKey:key];
    }
    if (numIvars > 0) { free(ivars); }
    [pool drain];
    return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
    if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
        [super performSelector:@selector(encodeWithCoder:) withObject:encoder];
    }
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    unsigned int numIvars = 0;
    Ivar * ivars = class_copyIvarList([self class], &numIvars);
    for (int i = 0; i < numIvars; i++) {
        Ivar thisIvar = ivars[i];
        NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
        id val = [self valueForKey:key];
        [encoder encodeObject:val forKey:key];
    }
    if (numIvars > 0) { free(ivars); }
    [pool drain];
}
@end
@implementation ETP_CreateApplePayTokenResponse
@synthesize soapSigner;
- (id)init
{
    if((self = [super init])) {
        status = 0;
        returnCode = 0;
        token = 0;
        apiKey = 0;
        errNo = 0;
        errText = 0;
    }

    return self;
}
- (void)dealloc
{
    [soapSigner release];
    if(returnCode != nil) [returnCode release];
    if(token != nil) [token release];
    if(apiKey != nil) [apiKey release];
    if(errNo != nil) [errNo release];
    if(errText != nil) [errText release];

    [super dealloc];
}
- (NSString *)nsPrefix
{
    return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
    NSString *nodeName = nil;
    if(elNSPrefix != nil && [elNSPrefix length] > 0)
    {
        nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
    }
    else
    {
        nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
    }
    xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);

    [self addAttributesToNode:node];

    [self addElementsToNode:node];

    return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{

}
- (void)addElementsToNode:(xmlNodePtr)node
{

    if(self.status != 0) {
        xmlNewChild(node, NULL, (const xmlChar*)"status", [ETP_Status_stringFromEnum(self.status) xmlString]);
    }
    if(self.returnCode != 0) {
        xmlAddChild(node, [self.returnCode xmlNodeForDoc:node->doc elementName:@"returnCode" elementNSPrefix:nil]);
    }
    if(self.token != 0) {
        xmlAddChild(node, [self.token xmlNodeForDoc:node->doc elementName:@"token" elementNSPrefix:nil]);
    }
    if(self.apiKey != 0) {
        xmlAddChild(node, [self.apiKey xmlNodeForDoc:node->doc elementName:@"apiKey" elementNSPrefix:nil]);
    }
    if(self.errNo != 0) {
        xmlAddChild(node, [self.errNo xmlNodeForDoc:node->doc elementName:@"errNo" elementNSPrefix:nil]);
    }
    if(self.errText != 0) {
        xmlAddChild(node, [self.errText xmlNodeForDoc:node->doc elementName:@"errText" elementNSPrefix:nil]);
    }
}
/* elements */
@synthesize status;
@synthesize returnCode;
@synthesize token;
@synthesize apiKey;
@synthesize errNo;
@synthesize errText;
/* attributes */
- (NSDictionary *)attributes
{
    NSMutableDictionary *attributes = [NSMutableDictionary dictionary];

    return attributes;
}
+ (ETP_CreateApplePayTokenResponse *)deserializeNode:(xmlNodePtr)cur
{
    ETP_CreateApplePayTokenResponse *newObject = [[ETP_CreateApplePayTokenResponse new] autorelease];

    [newObject deserializeAttributesFromNode:cur];
    [newObject deserializeElementsFromNode:cur];

    return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{


    for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
        if(cur->type == XML_ELEMENT_NODE) {
            xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
            NSString *elementString = nil;

            if(elementText != NULL) {
                elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
                [elementString self]; // avoid compiler warning for unused var
                xmlFree(elementText);
            }
            if(xmlStrEqual(cur->name, (const xmlChar *) "status")) {

                ETP_Status enumRepresentation = ETP_Status_enumFromString(elementString);
                self.status = enumRepresentation;
            }
            if(xmlStrEqual(cur->name, (const xmlChar *) "returnCode")) {

                Class elementClass = nil;
                xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
                if(instanceType == NULL) {
                    elementClass = [NSString class];
                } else {
                    NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];

                    NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];

                    NSString *elementClassString = nil;
                    if([elementTypeArray count] > 1) {
                        NSString *prefix = [elementTypeArray objectAtIndex:0];
                        NSString *localName = [elementTypeArray objectAtIndex:1];

                        xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);

                        NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];

                        elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
                    } else {
                        elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
                    }

                    elementClass = NSClassFromString(elementClassString);
                    xmlFree(instanceType);
                }

                id newChild = [elementClass deserializeNode:cur];

                self.returnCode = newChild;
            }
            if(xmlStrEqual(cur->name, (const xmlChar *) "token")) {

                Class elementClass = nil;
                xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
                if(instanceType == NULL) {
                    elementClass = [NSString class];
                } else {
                    NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];

                    NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];

                    NSString *elementClassString = nil;
                    if([elementTypeArray count] > 1) {
                        NSString *prefix = [elementTypeArray objectAtIndex:0];
                        NSString *localName = [elementTypeArray objectAtIndex:1];

                        xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);

                        NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];

                        elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
                    } else {
                        elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
                    }

                    elementClass = NSClassFromString(elementClassString);
                    xmlFree(instanceType);
                }

                id newChild = [elementClass deserializeNode:cur];

                self.token = newChild;
            }
            if(xmlStrEqual(cur->name, (const xmlChar *) "apiKey")) {

                Class elementClass = nil;
                xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
                if(instanceType == NULL) {
                    elementClass = [NSString class];
                } else {
                    NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];

                    NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];

                    NSString *elementClassString = nil;
                    if([elementTypeArray count] > 1) {
                        NSString *prefix = [elementTypeArray objectAtIndex:0];
                        NSString *localName = [elementTypeArray objectAtIndex:1];

                        xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);

                        NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];

                        elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
                    } else {
                        elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
                    }

                    elementClass = NSClassFromString(elementClassString);
                    xmlFree(instanceType);
                }

                id newChild = [elementClass deserializeNode:cur];

                self.apiKey = newChild;
            }
            if(xmlStrEqual(cur->name, (const xmlChar *) "errNo")) {

                Class elementClass = nil;
                xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
                if(instanceType == NULL) {
                    elementClass = [NSNumber class];
                } else {
                    NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];

                    NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];

                    NSString *elementClassString = nil;
                    if([elementTypeArray count] > 1) {
                        NSString *prefix = [elementTypeArray objectAtIndex:0];
                        NSString *localName = [elementTypeArray objectAtIndex:1];

                        xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);

                        NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];

                        elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
                    } else {
                        elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
                    }

                    elementClass = NSClassFromString(elementClassString);
                    xmlFree(instanceType);
                }

                id newChild = [elementClass deserializeNode:cur];

                self.errNo = newChild;
            }
            if(xmlStrEqual(cur->name, (const xmlChar *) "errText")) {

                Class elementClass = nil;
                xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
                if(instanceType == NULL) {
                    elementClass = [NSString class];
                } else {
                    NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];

                    NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];

                    NSString *elementClassString = nil;
                    if([elementTypeArray count] > 1) {
                        NSString *prefix = [elementTypeArray objectAtIndex:0];
                        NSString *localName = [elementTypeArray objectAtIndex:1];

                        xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);

                        NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];

                        elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
                    } else {
                        elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
                    }

                    elementClass = NSClassFromString(elementClassString);
                    xmlFree(instanceType);
                }

                id newChild = [elementClass deserializeNode:cur];

                self.errText = newChild;
            }
        }
    }
}
/* NSCoder functions taken from:
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
    // ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
    // So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
    self = [super init];
    if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
        [super performSelector:@selector(initWithCoder:) withObject:decoder];
    if (self == nil) { return nil; }

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    unsigned int numIvars = 0;
    Ivar * ivars = class_copyIvarList([self class], &numIvars);
    for(int i = 0; i < numIvars; i++) {
        Ivar thisIvar = ivars[i];
        NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
        id val = [decoder decodeObjectForKey:key];
        if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
        [self setValue:val forKey:key];
    }
    if (numIvars > 0) { free(ivars); }
    [pool drain];
    return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
    if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
        [super performSelector:@selector(encodeWithCoder:) withObject:encoder];
    }
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    unsigned int numIvars = 0;
    Ivar * ivars = class_copyIvarList([self class], &numIvars);
    for (int i = 0; i < numIvars; i++) {
        Ivar thisIvar = ivars[i];
        NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
        id val = [self valueForKey:key];
        [encoder encodeObject:val forKey:key];
    }
    if (numIvars > 0) { free(ivars); }
    [pool drain];
}
@end
@implementation ETP_CreateGooglePayToken
@synthesize soapSigner;
- (id)init
{
    if((self = [super init])) {
        merchantID = 0;
        amount = 0;
        currency = 0;
        order = 0;
        language = 0;
    }

    return self;
}
- (void)dealloc
{
    [soapSigner release];
    if(merchantID != nil) [merchantID release];
    if(amount != nil) [amount release];
    if(currency != nil) [currency release];
    if(order != nil) [order release];
    if(language != nil) [language release];

    [super dealloc];
}
- (NSString *)nsPrefix
{
    return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
    NSString *nodeName = nil;
    if(elNSPrefix != nil && [elNSPrefix length] > 0)
    {
        nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
    }
    else
    {
        nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
    }
    xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);

    [self addAttributesToNode:node];

    [self addElementsToNode:node];

    return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{

}
- (void)addElementsToNode:(xmlNodePtr)node
{

    if(self.merchantID != 0) {
        xmlAddChild(node, [self.merchantID xmlNodeForDoc:node->doc elementName:@"merchantID" elementNSPrefix:nil]);
    }
    if(self.amount != 0) {
        xmlAddChild(node, [self.amount xmlNodeForDoc:node->doc elementName:@"amount" elementNSPrefix:nil]);
    }
    if(self.currency != 0) {
        xmlAddChild(node, [self.currency xmlNodeForDoc:node->doc elementName:@"currency" elementNSPrefix:nil]);
    }
    if(self.order != 0) {
        xmlAddChild(node, [self.order xmlNodeForDoc:node->doc elementName:@"order" elementNSPrefix:nil]);
    }
    if(self.language != 0) {
        xmlAddChild(node, [self.language xmlNodeForDoc:node->doc elementName:@"language" elementNSPrefix:nil]);
    }
}
/* elements */
@synthesize merchantID;
@synthesize amount;
@synthesize currency;
@synthesize order;
@synthesize language;
/* attributes */
- (NSDictionary *)attributes
{
    NSMutableDictionary *attributes = [NSMutableDictionary dictionary];

    return attributes;
}
+ (ETP_CreateGooglePayToken *)deserializeNode:(xmlNodePtr)cur
{
    ETP_CreateGooglePayToken *newObject = [[ETP_CreateGooglePayToken new] autorelease];

    [newObject deserializeAttributesFromNode:cur];
    [newObject deserializeElementsFromNode:cur];

    return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{


    for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
        if(cur->type == XML_ELEMENT_NODE) {
            xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
            NSString *elementString = nil;

            if(elementText != NULL) {
                elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
                [elementString self]; // avoid compiler warning for unused var
                xmlFree(elementText);
            }
            if(xmlStrEqual(cur->name, (const xmlChar *) "merchantID")) {

                Class elementClass = nil;
                xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
                if(instanceType == NULL) {
                    elementClass = [NSNumber class];
                } else {
                    NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];

                    NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];

                    NSString *elementClassString = nil;
                    if([elementTypeArray count] > 1) {
                        NSString *prefix = [elementTypeArray objectAtIndex:0];
                        NSString *localName = [elementTypeArray objectAtIndex:1];

                        xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);

                        NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];

                        elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
                    } else {
                        elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
                    }

                    elementClass = NSClassFromString(elementClassString);
                    xmlFree(instanceType);
                }

                id newChild = [elementClass deserializeNode:cur];

                self.merchantID = newChild;
            }
            if(xmlStrEqual(cur->name, (const xmlChar *) "amount")) {
                
                Class elementClass = nil;
                xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
                if(instanceType == NULL) {
                    elementClass = [NSNumber class];
                } else {
                    NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
                    
                    NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
                    
                    NSString *elementClassString = nil;
                    if([elementTypeArray count] > 1) {
                        NSString *prefix = [elementTypeArray objectAtIndex:0];
                        NSString *localName = [elementTypeArray objectAtIndex:1];
                        
                        xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
                        
                        NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
                        
                        elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
                    } else {
                        elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
                    }
                    
                    elementClass = NSClassFromString(elementClassString);
                    xmlFree(instanceType);
                }
                
                id newChild = [elementClass deserializeNode:cur];
                
                self.amount = newChild;
            }
            if(xmlStrEqual(cur->name, (const xmlChar *) "currency")) {
                
                Class elementClass = nil;
                xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
                if(instanceType == NULL) {
                    elementClass = [NSString class];
                } else {
                    NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
                    
                    NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
                    
                    NSString *elementClassString = nil;
                    if([elementTypeArray count] > 1) {
                        NSString *prefix = [elementTypeArray objectAtIndex:0];
                        NSString *localName = [elementTypeArray objectAtIndex:1];
                        
                        xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
                        
                        NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
                        
                        elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
                    } else {
                        elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
                    }
                    
                    elementClass = NSClassFromString(elementClassString);
                    xmlFree(instanceType);
                }
                
                id newChild = [elementClass deserializeNode:cur];
                
                self.currency = newChild;
            }
            if(xmlStrEqual(cur->name, (const xmlChar *) "order")) {
                
                Class elementClass = nil;
                xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
                if(instanceType == NULL) {
                    elementClass = [ETP_Order class];
                } else {
                    NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
                    
                    NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
                    
                    NSString *elementClassString = nil;
                    if([elementTypeArray count] > 1) {
                        NSString *prefix = [elementTypeArray objectAtIndex:0];
                        NSString *localName = [elementTypeArray objectAtIndex:1];
                        
                        xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
                        
                        NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
                        
                        elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
                    } else {
                        elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
                    }
                    
                    elementClass = NSClassFromString(elementClassString);
                    xmlFree(instanceType);
                }
                
                id newChild = [elementClass deserializeNode:cur];
                
                self.order = newChild;
            }
            if(xmlStrEqual(cur->name, (const xmlChar *) "language")) {

                Class elementClass = nil;
                xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
                if(instanceType == NULL) {
                    elementClass = [NSString class];
                } else {
                    NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];

                    NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];

                    NSString *elementClassString = nil;
                    if([elementTypeArray count] > 1) {
                        NSString *prefix = [elementTypeArray objectAtIndex:0];
                        NSString *localName = [elementTypeArray objectAtIndex:1];

                        xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);

                        NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];

                        elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
                    } else {
                        elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
                    }

                    elementClass = NSClassFromString(elementClassString);
                    xmlFree(instanceType);
                }

                id newChild = [elementClass deserializeNode:cur];

                self.language = newChild;
            }
        }
    }
}
/* NSCoder functions taken from:
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
    // ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
    // So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
    self = [super init];
    if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
        [super performSelector:@selector(initWithCoder:) withObject:decoder];
    if (self == nil) { return nil; }

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    unsigned int numIvars = 0;
    Ivar * ivars = class_copyIvarList([self class], &numIvars);
    for(int i = 0; i < numIvars; i++) {
        Ivar thisIvar = ivars[i];
        NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
        id val = [decoder decodeObjectForKey:key];
        if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
        [self setValue:val forKey:key];
    }
    if (numIvars > 0) { free(ivars); }
    [pool drain];
    return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
    if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
        [super performSelector:@selector(encodeWithCoder:) withObject:encoder];
    }
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    unsigned int numIvars = 0;
    Ivar * ivars = class_copyIvarList([self class], &numIvars);
    for (int i = 0; i < numIvars; i++) {
        Ivar thisIvar = ivars[i];
        NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
        id val = [self valueForKey:key];
        [encoder encodeObject:val forKey:key];
    }
    if (numIvars > 0) { free(ivars); }
    [pool drain];
}
@end
@implementation ETP_CreateGooglePayTokenResponse
@synthesize soapSigner;
- (id)init
{
    if((self = [super init])) {
        status = 0;
        returnCode = 0;
        token = 0;
        apiKey = 0;
        errNo = 0;
        errText = 0;
    }

    return self;
}
- (void)dealloc
{
    [soapSigner release];
    if(returnCode != nil) [returnCode release];
    if(token != nil) [token release];
    if(apiKey != nil) [apiKey release];
    if(errNo != nil) [errNo release];
    if(errText != nil) [errText release];

    [super dealloc];
}
- (NSString *)nsPrefix
{
    return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
    NSString *nodeName = nil;
    if(elNSPrefix != nil && [elNSPrefix length] > 0)
    {
        nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
    }
    else
    {
        nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
    }
    xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);

    [self addAttributesToNode:node];

    [self addElementsToNode:node];

    return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{

}
- (void)addElementsToNode:(xmlNodePtr)node
{

    if(self.status != 0) {
        xmlNewChild(node, NULL, (const xmlChar*)"status", [ETP_Status_stringFromEnum(self.status) xmlString]);
    }
    if(self.returnCode != 0) {
        xmlAddChild(node, [self.returnCode xmlNodeForDoc:node->doc elementName:@"returnCode" elementNSPrefix:nil]);
    }
    if(self.token != 0) {
        xmlAddChild(node, [self.token xmlNodeForDoc:node->doc elementName:@"token" elementNSPrefix:nil]);
    }
    if(self.apiKey != 0) {
        xmlAddChild(node, [self.apiKey xmlNodeForDoc:node->doc elementName:@"apiKey" elementNSPrefix:nil]);
    }
    if(self.errNo != 0) {
        xmlAddChild(node, [self.errNo xmlNodeForDoc:node->doc elementName:@"errNo" elementNSPrefix:nil]);
    }
    if(self.errText != 0) {
        xmlAddChild(node, [self.errText xmlNodeForDoc:node->doc elementName:@"errText" elementNSPrefix:nil]);
    }
}
/* elements */
@synthesize status;
@synthesize returnCode;
@synthesize token;
@synthesize apiKey;
@synthesize errNo;
@synthesize errText;
/* attributes */
- (NSDictionary *)attributes
{
    NSMutableDictionary *attributes = [NSMutableDictionary dictionary];

    return attributes;
}
+ (ETP_CreateGooglePayTokenResponse *)deserializeNode:(xmlNodePtr)cur
{
    ETP_CreateGooglePayTokenResponse *newObject = [[ETP_CreateGooglePayTokenResponse new] autorelease];

    [newObject deserializeAttributesFromNode:cur];
    [newObject deserializeElementsFromNode:cur];

    return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{


    for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
        if(cur->type == XML_ELEMENT_NODE) {
            xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
            NSString *elementString = nil;

            if(elementText != NULL) {
                elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
                [elementString self]; // avoid compiler warning for unused var
                xmlFree(elementText);
            }
            if(xmlStrEqual(cur->name, (const xmlChar *) "status")) {

                ETP_Status enumRepresentation = ETP_Status_enumFromString(elementString);
                self.status = enumRepresentation;
            }
            if(xmlStrEqual(cur->name, (const xmlChar *) "returnCode")) {

                Class elementClass = nil;
                xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
                if(instanceType == NULL) {
                    elementClass = [NSString class];
                } else {
                    NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];

                    NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];

                    NSString *elementClassString = nil;
                    if([elementTypeArray count] > 1) {
                        NSString *prefix = [elementTypeArray objectAtIndex:0];
                        NSString *localName = [elementTypeArray objectAtIndex:1];

                        xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);

                        NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];

                        elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
                    } else {
                        elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
                    }

                    elementClass = NSClassFromString(elementClassString);
                    xmlFree(instanceType);
                }

                id newChild = [elementClass deserializeNode:cur];

                self.returnCode = newChild;
            }
            if(xmlStrEqual(cur->name, (const xmlChar *) "token")) {

                Class elementClass = nil;
                xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
                if(instanceType == NULL) {
                    elementClass = [NSString class];
                } else {
                    NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];

                    NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];

                    NSString *elementClassString = nil;
                    if([elementTypeArray count] > 1) {
                        NSString *prefix = [elementTypeArray objectAtIndex:0];
                        NSString *localName = [elementTypeArray objectAtIndex:1];

                        xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);

                        NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];

                        elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
                    } else {
                        elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
                    }

                    elementClass = NSClassFromString(elementClassString);
                    xmlFree(instanceType);
                }

                id newChild = [elementClass deserializeNode:cur];

                self.token = newChild;
            }
            if(xmlStrEqual(cur->name, (const xmlChar *) "apiKey")) {

                Class elementClass = nil;
                xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
                if(instanceType == NULL) {
                    elementClass = [NSString class];
                } else {
                    NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];

                    NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];

                    NSString *elementClassString = nil;
                    if([elementTypeArray count] > 1) {
                        NSString *prefix = [elementTypeArray objectAtIndex:0];
                        NSString *localName = [elementTypeArray objectAtIndex:1];

                        xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);

                        NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];

                        elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
                    } else {
                        elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
                    }

                    elementClass = NSClassFromString(elementClassString);
                    xmlFree(instanceType);
                }

                id newChild = [elementClass deserializeNode:cur];

                self.apiKey = newChild;
            }
            if(xmlStrEqual(cur->name, (const xmlChar *) "errNo")) {

                Class elementClass = nil;
                xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
                if(instanceType == NULL) {
                    elementClass = [NSNumber class];
                } else {
                    NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];

                    NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];

                    NSString *elementClassString = nil;
                    if([elementTypeArray count] > 1) {
                        NSString *prefix = [elementTypeArray objectAtIndex:0];
                        NSString *localName = [elementTypeArray objectAtIndex:1];

                        xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);

                        NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];

                        elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
                    } else {
                        elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
                    }

                    elementClass = NSClassFromString(elementClassString);
                    xmlFree(instanceType);
                }

                id newChild = [elementClass deserializeNode:cur];

                self.errNo = newChild;
            }
            if(xmlStrEqual(cur->name, (const xmlChar *) "errText")) {

                Class elementClass = nil;
                xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
                if(instanceType == NULL) {
                    elementClass = [NSString class];
                } else {
                    NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];

                    NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];

                    NSString *elementClassString = nil;
                    if([elementTypeArray count] > 1) {
                        NSString *prefix = [elementTypeArray objectAtIndex:0];
                        NSString *localName = [elementTypeArray objectAtIndex:1];

                        xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);

                        NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];

                        elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
                    } else {
                        elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
                    }

                    elementClass = NSClassFromString(elementClassString);
                    xmlFree(instanceType);
                }

                id newChild = [elementClass deserializeNode:cur];

                self.errText = newChild;
            }
        }
    }
}
/* NSCoder functions taken from:
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
    // ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
    // So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
    self = [super init];
    if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
        [super performSelector:@selector(initWithCoder:) withObject:decoder];
    if (self == nil) { return nil; }

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    unsigned int numIvars = 0;
    Ivar * ivars = class_copyIvarList([self class], &numIvars);
    for(int i = 0; i < numIvars; i++) {
        Ivar thisIvar = ivars[i];
        NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
        id val = [decoder decodeObjectForKey:key];
        if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
        [self setValue:val forKey:key];
    }
    if (numIvars > 0) { free(ivars); }
    [pool drain];
    return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
    if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
        [super performSelector:@selector(encodeWithCoder:) withObject:encoder];
    }
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    unsigned int numIvars = 0;
    Ivar * ivars = class_copyIvarList([self class], &numIvars);
    for (int i = 0; i < numIvars; i++) {
        Ivar thisIvar = ivars[i];
        NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
        id val = [self valueForKey:key];
        [encoder encodeObject:val forKey:key];
    }
    if (numIvars > 0) { free(ivars); }
    [pool drain];
}
@end
@implementation ETP_CreateCustomer
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		merchantID = 0;
		tid = 0;
		pType = 0;
		paymentData = 0;
		customerID = 0;
		customerName = 0;
		order = 0;
		billingAddress = 0;
		successURL = 0;
		errorURL = 0;
		confirmationURL = 0;
		language = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(merchantID != nil) [merchantID release];
	if(tid != nil) [tid release];
	if(paymentData != nil) [paymentData release];
	if(customerID != nil) [customerID release];
	if(customerName != nil) [customerName release];
	if(order != nil) [order release];
	if(billingAddress != nil) [billingAddress release];
	if(successURL != nil) [successURL release];
	if(errorURL != nil) [errorURL release];
	if(confirmationURL != nil) [confirmationURL release];
	if(language != nil) [language release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.merchantID != 0) {
		xmlAddChild(node, [self.merchantID xmlNodeForDoc:node->doc elementName:@"merchantID" elementNSPrefix:nil]);
	}
	if(self.tid != 0) {
		xmlAddChild(node, [self.tid xmlNodeForDoc:node->doc elementName:@"tid" elementNSPrefix:nil]);
	}
	if(self.pType != 0) {
		xmlNewChild(node, NULL, (const xmlChar*)"pType", [ETP_PaymentType_stringFromEnum(self.pType) xmlString]);
	}
	if(self.paymentData != 0) {
		xmlAddChild(node, [self.paymentData xmlNodeForDoc:node->doc elementName:@"paymentData" elementNSPrefix:nil]);
	}
	if(self.customerID != 0) {
		xmlAddChild(node, [self.customerID xmlNodeForDoc:node->doc elementName:@"customerID" elementNSPrefix:nil]);
	}
	if(self.customerName != 0) {
		xmlAddChild(node, [self.customerName xmlNodeForDoc:node->doc elementName:@"customerName" elementNSPrefix:nil]);
	}
	if(self.order != 0) {
		xmlAddChild(node, [self.order xmlNodeForDoc:node->doc elementName:@"order" elementNSPrefix:nil]);
	}
	if(self.billingAddress != 0) {
		xmlAddChild(node, [self.billingAddress xmlNodeForDoc:node->doc elementName:@"billingAddress" elementNSPrefix:nil]);
	}
	if(self.successURL != 0) {
		xmlAddChild(node, [self.successURL xmlNodeForDoc:node->doc elementName:@"successURL" elementNSPrefix:nil]);
	}
	if(self.errorURL != 0) {
		xmlAddChild(node, [self.errorURL xmlNodeForDoc:node->doc elementName:@"errorURL" elementNSPrefix:nil]);
	}
	if(self.confirmationURL != 0) {
		xmlAddChild(node, [self.confirmationURL xmlNodeForDoc:node->doc elementName:@"confirmationURL" elementNSPrefix:nil]);
	}
	if(self.language != 0) {
		xmlAddChild(node, [self.language xmlNodeForDoc:node->doc elementName:@"language" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize merchantID;
@synthesize tid;
@synthesize pType;
@synthesize paymentData;
@synthesize customerID;
@synthesize customerName;
@synthesize order;
@synthesize billingAddress;
@synthesize successURL;
@synthesize errorURL;
@synthesize confirmationURL;
@synthesize language;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_CreateCustomer *)deserializeNode:(xmlNodePtr)cur
{
	ETP_CreateCustomer *newObject = [[ETP_CreateCustomer new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "merchantID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.merchantID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "tid")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.tid = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "pType")) {
				
				ETP_PaymentType enumRepresentation = ETP_PaymentType_enumFromString(elementString);
				self.pType = enumRepresentation;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "paymentData")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [ETP_PaymentData class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.paymentData = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "customerID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.customerID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "customerName")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.customerName = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "order")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [ETP_Order class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.order = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "billingAddress")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [ETP_Address class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.billingAddress = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "successURL")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.successURL = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "errorURL")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.errorURL = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "confirmationURL")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.confirmationURL = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "language")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.language = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_CreateCustomerResponse
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		status = 0;
		returnCode = 0;
		mpayTID = 0;
		errNo = 0;
		errText = 0;
		location = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(returnCode != nil) [returnCode release];
	if(mpayTID != nil) [mpayTID release];
	if(errNo != nil) [errNo release];
	if(errText != nil) [errText release];
	if(location != nil) [location release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.status != 0) {
		xmlNewChild(node, NULL, (const xmlChar*)"status", [ETP_Status_stringFromEnum(self.status) xmlString]);
	}
	if(self.returnCode != 0) {
		xmlAddChild(node, [self.returnCode xmlNodeForDoc:node->doc elementName:@"returnCode" elementNSPrefix:nil]);
	}
	if(self.mpayTID != 0) {
		xmlAddChild(node, [self.mpayTID xmlNodeForDoc:node->doc elementName:@"mpayTID" elementNSPrefix:nil]);
	}
	if(self.errNo != 0) {
		xmlAddChild(node, [self.errNo xmlNodeForDoc:node->doc elementName:@"errNo" elementNSPrefix:nil]);
	}
	if(self.errText != 0) {
		xmlAddChild(node, [self.errText xmlNodeForDoc:node->doc elementName:@"errText" elementNSPrefix:nil]);
	}
	if(self.location != 0) {
		xmlAddChild(node, [self.location xmlNodeForDoc:node->doc elementName:@"location" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize status;
@synthesize returnCode;
@synthesize mpayTID;
@synthesize errNo;
@synthesize errText;
@synthesize location;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_CreateCustomerResponse *)deserializeNode:(xmlNodePtr)cur
{
	ETP_CreateCustomerResponse *newObject = [[ETP_CreateCustomerResponse new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "status")) {
				
				ETP_Status enumRepresentation = ETP_Status_enumFromString(elementString);
				self.status = enumRepresentation;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "returnCode")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.returnCode = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "mpayTID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.mpayTID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "errNo")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.errNo = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "errText")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.errText = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "location")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.location = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_AcceptPayment
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		merchantID = 0;
		tid = 0;
		pType = 0;
		payment = 0;
		customerID = 0;
		customerName = 0;
		order = 0;
		successURL = 0;
		errorURL = 0;
		confirmationURL = 0;
		language = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(merchantID != nil) [merchantID release];
	if(tid != nil) [tid release];
	if(payment != nil) [payment release];
	if(customerID != nil) [customerID release];
	if(customerName != nil) [customerName release];
	if(order != nil) [order release];
	if(successURL != nil) [successURL release];
	if(errorURL != nil) [errorURL release];
	if(confirmationURL != nil) [confirmationURL release];
	if(language != nil) [language release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.merchantID != 0) {
		xmlAddChild(node, [self.merchantID xmlNodeForDoc:node->doc elementName:@"merchantID" elementNSPrefix:nil]);
	}
	if(self.tid != 0) {
		xmlAddChild(node, [self.tid xmlNodeForDoc:node->doc elementName:@"tid" elementNSPrefix:nil]);
	}
	if(self.pType != 0) {
		xmlNewChild(node, NULL, (const xmlChar*)"pType", [ETP_PaymentType_stringFromEnum(self.pType) xmlString]);
	}
	if(self.payment != 0) {
		xmlAddChild(node, [self.payment xmlNodeForDoc:node->doc elementName:@"payment" elementNSPrefix:nil]);
	}
	if(self.customerID != 0) {
		xmlAddChild(node, [self.customerID xmlNodeForDoc:node->doc elementName:@"customerID" elementNSPrefix:nil]);
	}
	if(self.customerName != 0) {
		xmlAddChild(node, [self.customerName xmlNodeForDoc:node->doc elementName:@"customerName" elementNSPrefix:nil]);
	}
	if(self.order != 0) {
		xmlAddChild(node, [self.order xmlNodeForDoc:node->doc elementName:@"order" elementNSPrefix:nil]);
	}
	if(self.successURL != 0) {
		xmlAddChild(node, [self.successURL xmlNodeForDoc:node->doc elementName:@"successURL" elementNSPrefix:nil]);
	}
	if(self.errorURL != 0) {
		xmlAddChild(node, [self.errorURL xmlNodeForDoc:node->doc elementName:@"errorURL" elementNSPrefix:nil]);
	}
	if(self.confirmationURL != 0) {
		xmlAddChild(node, [self.confirmationURL xmlNodeForDoc:node->doc elementName:@"confirmationURL" elementNSPrefix:nil]);
	}
	if(self.language != 0) {
		xmlAddChild(node, [self.language xmlNodeForDoc:node->doc elementName:@"language" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize merchantID;
@synthesize tid;
@synthesize pType;
@synthesize payment;
@synthesize customerID;
@synthesize customerName;
@synthesize order;
@synthesize successURL;
@synthesize errorURL;
@synthesize confirmationURL;
@synthesize language;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_AcceptPayment *)deserializeNode:(xmlNodePtr)cur
{
	ETP_AcceptPayment *newObject = [[ETP_AcceptPayment new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "merchantID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.merchantID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "tid")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.tid = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "pType")) {
				
				ETP_PaymentType enumRepresentation = ETP_PaymentType_enumFromString(elementString);
				self.pType = enumRepresentation;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "payment")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [ETP_Payment class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.payment = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "customerID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.customerID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "customerName")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.customerName = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "order")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [ETP_Order class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.order = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "successURL")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.successURL = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "errorURL")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.errorURL = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "confirmationURL")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.confirmationURL = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "language")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.language = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_AcceptPaymentResponse
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		status = 0;
		returnCode = 0;
		mpayTID = 0;
		errNo = 0;
		errText = 0;
		location = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(returnCode != nil) [returnCode release];
	if(mpayTID != nil) [mpayTID release];
	if(errNo != nil) [errNo release];
	if(errText != nil) [errText release];
	if(location != nil) [location release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.status != 0) {
		xmlNewChild(node, NULL, (const xmlChar*)"status", [ETP_Status_stringFromEnum(self.status) xmlString]);
	}
	if(self.returnCode != 0) {
		xmlAddChild(node, [self.returnCode xmlNodeForDoc:node->doc elementName:@"returnCode" elementNSPrefix:nil]);
	}
	if(self.mpayTID != 0) {
		xmlAddChild(node, [self.mpayTID xmlNodeForDoc:node->doc elementName:@"mpayTID" elementNSPrefix:nil]);
	}
	if(self.errNo != 0) {
		xmlAddChild(node, [self.errNo xmlNodeForDoc:node->doc elementName:@"errNo" elementNSPrefix:nil]);
	}
	if(self.errText != 0) {
		xmlAddChild(node, [self.errText xmlNodeForDoc:node->doc elementName:@"errText" elementNSPrefix:nil]);
	}
	if(self.location != 0) {
		xmlAddChild(node, [self.location xmlNodeForDoc:node->doc elementName:@"location" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize status;
@synthesize returnCode;
@synthesize mpayTID;
@synthesize errNo;
@synthesize errText;
@synthesize location;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_AcceptPaymentResponse *)deserializeNode:(xmlNodePtr)cur
{
	ETP_AcceptPaymentResponse *newObject = [[ETP_AcceptPaymentResponse new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "status")) {
				
				ETP_Status enumRepresentation = ETP_Status_enumFromString(elementString);
				self.status = enumRepresentation;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "returnCode")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.returnCode = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "mpayTID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.mpayTID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "errNo")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.errNo = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "errText")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.errText = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "location")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.location = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_ManualCallback
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		merchantID = 0;
		mpayTID = 0;
		paymentCallback = 0;
		order = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(merchantID != nil) [merchantID release];
	if(mpayTID != nil) [mpayTID release];
	if(paymentCallback != nil) [paymentCallback release];
	if(order != nil) [order release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.merchantID != 0) {
		xmlAddChild(node, [self.merchantID xmlNodeForDoc:node->doc elementName:@"merchantID" elementNSPrefix:nil]);
	}
	if(self.mpayTID != 0) {
		xmlAddChild(node, [self.mpayTID xmlNodeForDoc:node->doc elementName:@"mpayTID" elementNSPrefix:nil]);
	}
	if(self.paymentCallback != 0) {
		xmlAddChild(node, [self.paymentCallback xmlNodeForDoc:node->doc elementName:@"paymentCallback" elementNSPrefix:nil]);
	}
	if(self.order != 0) {
		xmlAddChild(node, [self.order xmlNodeForDoc:node->doc elementName:@"order" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize merchantID;
@synthesize mpayTID;
@synthesize paymentCallback;
@synthesize order;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_ManualCallback *)deserializeNode:(xmlNodePtr)cur
{
	ETP_ManualCallback *newObject = [[ETP_ManualCallback new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "merchantID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.merchantID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "mpayTID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.mpayTID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "paymentCallback")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [ETP_Callback class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.paymentCallback = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "order")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [ETP_Order class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.order = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_ManualCallbackResponse
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		status = 0;
		returnCode = 0;
		mpayTID = 0;
		errNo = 0;
		errText = 0;
		location = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(returnCode != nil) [returnCode release];
	if(mpayTID != nil) [mpayTID release];
	if(errNo != nil) [errNo release];
	if(errText != nil) [errText release];
	if(location != nil) [location release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.status != 0) {
		xmlNewChild(node, NULL, (const xmlChar*)"status", [ETP_Status_stringFromEnum(self.status) xmlString]);
	}
	if(self.returnCode != 0) {
		xmlAddChild(node, [self.returnCode xmlNodeForDoc:node->doc elementName:@"returnCode" elementNSPrefix:nil]);
	}
	if(self.mpayTID != 0) {
		xmlAddChild(node, [self.mpayTID xmlNodeForDoc:node->doc elementName:@"mpayTID" elementNSPrefix:nil]);
	}
	if(self.errNo != 0) {
		xmlAddChild(node, [self.errNo xmlNodeForDoc:node->doc elementName:@"errNo" elementNSPrefix:nil]);
	}
	if(self.errText != 0) {
		xmlAddChild(node, [self.errText xmlNodeForDoc:node->doc elementName:@"errText" elementNSPrefix:nil]);
	}
	if(self.location != 0) {
		xmlAddChild(node, [self.location xmlNodeForDoc:node->doc elementName:@"location" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize status;
@synthesize returnCode;
@synthesize mpayTID;
@synthesize errNo;
@synthesize errText;
@synthesize location;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_ManualCallbackResponse *)deserializeNode:(xmlNodePtr)cur
{
	ETP_ManualCallbackResponse *newObject = [[ETP_ManualCallbackResponse new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "status")) {
				
				ETP_Status enumRepresentation = ETP_Status_enumFromString(elementString);
				self.status = enumRepresentation;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "returnCode")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.returnCode = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "mpayTID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.mpayTID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "errNo")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.errNo = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "errText")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.errText = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "location")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.location = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_ManualClear
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		merchantID = 0;
		clearingDetails = [[NSMutableArray alloc] init];
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(merchantID != nil) [merchantID release];
	if(clearingDetails != nil) [clearingDetails release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.merchantID != 0) {
		xmlAddChild(node, [self.merchantID xmlNodeForDoc:node->doc elementName:@"merchantID" elementNSPrefix:nil]);
	}
	if(self.clearingDetails != 0) {
		for(ETP_ClearingDetails * child in self.clearingDetails) {
			xmlAddChild(node, [child xmlNodeForDoc:node->doc elementName:@"clearingDetails" elementNSPrefix:nil]);
		}
	}
}
/* elements */
@synthesize merchantID;
@synthesize clearingDetails;
- (void)addClearingDetails:(ETP_ClearingDetails *)toAdd
{
	if(toAdd != nil) [clearingDetails addObject:toAdd];
}
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_ManualClear *)deserializeNode:(xmlNodePtr)cur
{
	ETP_ManualClear *newObject = [[ETP_ManualClear new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "merchantID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.merchantID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "clearingDetails")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [ETP_ClearingDetails class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				if(newChild != nil) [self.clearingDetails addObject:newChild];
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_ManualClearResponse
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		status = 0;
		returnCode = 0;
		transaction = [[NSMutableArray alloc] init];
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(returnCode != nil) [returnCode release];
	if(transaction != nil) [transaction release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.status != 0) {
		xmlNewChild(node, NULL, (const xmlChar*)"status", [ETP_Status_stringFromEnum(self.status) xmlString]);
	}
	if(self.returnCode != 0) {
		xmlAddChild(node, [self.returnCode xmlNodeForDoc:node->doc elementName:@"returnCode" elementNSPrefix:nil]);
	}
	if(self.transaction != 0) {
		for(ETP_Transaction * child in self.transaction) {
			xmlAddChild(node, [child xmlNodeForDoc:node->doc elementName:@"transaction" elementNSPrefix:nil]);
		}
	}
}
/* elements */
@synthesize status;
@synthesize returnCode;
@synthesize transaction;
- (void)addTransaction:(ETP_Transaction *)toAdd
{
	if(toAdd != nil) [transaction addObject:toAdd];
}
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_ManualClearResponse *)deserializeNode:(xmlNodePtr)cur
{
	ETP_ManualClearResponse *newObject = [[ETP_ManualClearResponse new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "status")) {
				
				ETP_Status enumRepresentation = ETP_Status_enumFromString(elementString);
				self.status = enumRepresentation;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "returnCode")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.returnCode = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "transaction")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [ETP_Transaction class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				if(newChild != nil) [self.transaction addObject:newChild];
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_ManualReverse
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		merchantID = 0;
		mpayTID = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(merchantID != nil) [merchantID release];
	if(mpayTID != nil) [mpayTID release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.merchantID != 0) {
		xmlAddChild(node, [self.merchantID xmlNodeForDoc:node->doc elementName:@"merchantID" elementNSPrefix:nil]);
	}
	if(self.mpayTID != 0) {
		xmlAddChild(node, [self.mpayTID xmlNodeForDoc:node->doc elementName:@"mpayTID" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize merchantID;
@synthesize mpayTID;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_ManualReverse *)deserializeNode:(xmlNodePtr)cur
{
	ETP_ManualReverse *newObject = [[ETP_ManualReverse new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "merchantID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.merchantID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "mpayTID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.mpayTID = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_ManualReverseResponse
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		status = 0;
		returnCode = 0;
		transaction = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(returnCode != nil) [returnCode release];
	if(transaction != nil) [transaction release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.status != 0) {
		xmlNewChild(node, NULL, (const xmlChar*)"status", [ETP_Status_stringFromEnum(self.status) xmlString]);
	}
	if(self.returnCode != 0) {
		xmlAddChild(node, [self.returnCode xmlNodeForDoc:node->doc elementName:@"returnCode" elementNSPrefix:nil]);
	}
	if(self.transaction != 0) {
		xmlAddChild(node, [self.transaction xmlNodeForDoc:node->doc elementName:@"transaction" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize status;
@synthesize returnCode;
@synthesize transaction;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_ManualReverseResponse *)deserializeNode:(xmlNodePtr)cur
{
	ETP_ManualReverseResponse *newObject = [[ETP_ManualReverseResponse new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "status")) {
				
				ETP_Status enumRepresentation = ETP_Status_enumFromString(elementString);
				self.status = enumRepresentation;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "returnCode")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.returnCode = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "transaction")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [ETP_Transaction class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.transaction = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_ManualCredit
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		merchantID = 0;
		mpayTID = 0;
		stateID = 0;
		amount = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(merchantID != nil) [merchantID release];
	if(mpayTID != nil) [mpayTID release];
	if(stateID != nil) [stateID release];
	if(amount != nil) [amount release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.merchantID != 0) {
		xmlAddChild(node, [self.merchantID xmlNodeForDoc:node->doc elementName:@"merchantID" elementNSPrefix:nil]);
	}
	if(self.mpayTID != 0) {
		xmlAddChild(node, [self.mpayTID xmlNodeForDoc:node->doc elementName:@"mpayTID" elementNSPrefix:nil]);
	}
	if(self.stateID != 0) {
		xmlAddChild(node, [self.stateID xmlNodeForDoc:node->doc elementName:@"stateID" elementNSPrefix:nil]);
	}
	if(self.amount != 0) {
		xmlAddChild(node, [self.amount xmlNodeForDoc:node->doc elementName:@"amount" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize merchantID;
@synthesize mpayTID;
@synthesize stateID;
@synthesize amount;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_ManualCredit *)deserializeNode:(xmlNodePtr)cur
{
	ETP_ManualCredit *newObject = [[ETP_ManualCredit new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "merchantID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.merchantID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "mpayTID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.mpayTID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "stateID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.stateID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "amount")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.amount = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_ManualCreditResponse
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		status = 0;
		returnCode = 0;
		transaction = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(returnCode != nil) [returnCode release];
	if(transaction != nil) [transaction release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.status != 0) {
		xmlNewChild(node, NULL, (const xmlChar*)"status", [ETP_Status_stringFromEnum(self.status) xmlString]);
	}
	if(self.returnCode != 0) {
		xmlAddChild(node, [self.returnCode xmlNodeForDoc:node->doc elementName:@"returnCode" elementNSPrefix:nil]);
	}
	if(self.transaction != 0) {
		xmlAddChild(node, [self.transaction xmlNodeForDoc:node->doc elementName:@"transaction" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize status;
@synthesize returnCode;
@synthesize transaction;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_ManualCreditResponse *)deserializeNode:(xmlNodePtr)cur
{
	ETP_ManualCreditResponse *newObject = [[ETP_ManualCreditResponse new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "status")) {
				
				ETP_Status enumRepresentation = ETP_Status_enumFromString(elementString);
				self.status = enumRepresentation;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "returnCode")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.returnCode = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "transaction")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [ETP_Transaction class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.transaction = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_AcceptWithdraw
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		merchantID = 0;
		tid = 0;
		pType = 0;
		withdraw = 0;
		customerID = 0;
		customerName = 0;
		order = 0;
		confirmationURL = 0;
		language = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(merchantID != nil) [merchantID release];
	if(tid != nil) [tid release];
	if(withdraw != nil) [withdraw release];
	if(customerID != nil) [customerID release];
	if(customerName != nil) [customerName release];
	if(order != nil) [order release];
	if(confirmationURL != nil) [confirmationURL release];
	if(language != nil) [language release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.merchantID != 0) {
		xmlAddChild(node, [self.merchantID xmlNodeForDoc:node->doc elementName:@"merchantID" elementNSPrefix:nil]);
	}
	if(self.tid != 0) {
		xmlAddChild(node, [self.tid xmlNodeForDoc:node->doc elementName:@"tid" elementNSPrefix:nil]);
	}
	if(self.pType != 0) {
		xmlNewChild(node, NULL, (const xmlChar*)"pType", [ETP_PaymentType_stringFromEnum(self.pType) xmlString]);
	}
	if(self.withdraw != 0) {
		xmlAddChild(node, [self.withdraw xmlNodeForDoc:node->doc elementName:@"withdraw" elementNSPrefix:nil]);
	}
	if(self.customerID != 0) {
		xmlAddChild(node, [self.customerID xmlNodeForDoc:node->doc elementName:@"customerID" elementNSPrefix:nil]);
	}
	if(self.customerName != 0) {
		xmlAddChild(node, [self.customerName xmlNodeForDoc:node->doc elementName:@"customerName" elementNSPrefix:nil]);
	}
	if(self.order != 0) {
		xmlAddChild(node, [self.order xmlNodeForDoc:node->doc elementName:@"order" elementNSPrefix:nil]);
	}
	if(self.confirmationURL != 0) {
		xmlAddChild(node, [self.confirmationURL xmlNodeForDoc:node->doc elementName:@"confirmationURL" elementNSPrefix:nil]);
	}
	if(self.language != 0) {
		xmlAddChild(node, [self.language xmlNodeForDoc:node->doc elementName:@"language" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize merchantID;
@synthesize tid;
@synthesize pType;
@synthesize withdraw;
@synthesize customerID;
@synthesize customerName;
@synthesize order;
@synthesize confirmationURL;
@synthesize language;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_AcceptWithdraw *)deserializeNode:(xmlNodePtr)cur
{
	ETP_AcceptWithdraw *newObject = [[ETP_AcceptWithdraw new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "merchantID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.merchantID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "tid")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.tid = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "pType")) {
				
				ETP_PaymentType enumRepresentation = ETP_PaymentType_enumFromString(elementString);
				self.pType = enumRepresentation;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "withdraw")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [ETP_Withdraw class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.withdraw = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "customerID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.customerID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "customerName")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.customerName = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "order")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [ETP_Order class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.order = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "confirmationURL")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.confirmationURL = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "language")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.language = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_AcceptWithdrawResponse
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		status = 0;
		returnCode = 0;
		mpayTID = 0;
		errNo = 0;
		errText = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(returnCode != nil) [returnCode release];
	if(mpayTID != nil) [mpayTID release];
	if(errNo != nil) [errNo release];
	if(errText != nil) [errText release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.status != 0) {
		xmlNewChild(node, NULL, (const xmlChar*)"status", [ETP_Status_stringFromEnum(self.status) xmlString]);
	}
	if(self.returnCode != 0) {
		xmlAddChild(node, [self.returnCode xmlNodeForDoc:node->doc elementName:@"returnCode" elementNSPrefix:nil]);
	}
	if(self.mpayTID != 0) {
		xmlAddChild(node, [self.mpayTID xmlNodeForDoc:node->doc elementName:@"mpayTID" elementNSPrefix:nil]);
	}
	if(self.errNo != 0) {
		xmlAddChild(node, [self.errNo xmlNodeForDoc:node->doc elementName:@"errNo" elementNSPrefix:nil]);
	}
	if(self.errText != 0) {
		xmlAddChild(node, [self.errText xmlNodeForDoc:node->doc elementName:@"errText" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize status;
@synthesize returnCode;
@synthesize mpayTID;
@synthesize errNo;
@synthesize errText;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_AcceptWithdrawResponse *)deserializeNode:(xmlNodePtr)cur
{
	ETP_AcceptWithdrawResponse *newObject = [[ETP_AcceptWithdrawResponse new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "status")) {
				
				ETP_Status enumRepresentation = ETP_Status_enumFromString(elementString);
				self.status = enumRepresentation;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "returnCode")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.returnCode = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "mpayTID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.mpayTID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "errNo")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.errNo = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "errText")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.errText = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_TransactionStatus
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		merchantID = 0;
		mpayTID = 0;
		tid = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(merchantID != nil) [merchantID release];
	if(mpayTID != nil) [mpayTID release];
	if(tid != nil) [tid release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.merchantID != 0) {
		xmlAddChild(node, [self.merchantID xmlNodeForDoc:node->doc elementName:@"merchantID" elementNSPrefix:nil]);
	}
	if(self.mpayTID != 0) {
		xmlAddChild(node, [self.mpayTID xmlNodeForDoc:node->doc elementName:@"mpayTID" elementNSPrefix:nil]);
	}
	if(self.tid != 0) {
		xmlAddChild(node, [self.tid xmlNodeForDoc:node->doc elementName:@"tid" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize merchantID;
@synthesize mpayTID;
@synthesize tid;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_TransactionStatus *)deserializeNode:(xmlNodePtr)cur
{
	ETP_TransactionStatus *newObject = [[ETP_TransactionStatus new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "merchantID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.merchantID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "mpayTID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.mpayTID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "tid")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.tid = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_TransactionStatusResponse
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		status = 0;
		returnCode = 0;
		parameter = [[NSMutableArray alloc] init];
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(returnCode != nil) [returnCode release];
	if(parameter != nil) [parameter release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.status != 0) {
		xmlNewChild(node, NULL, (const xmlChar*)"status", [ETP_Status_stringFromEnum(self.status) xmlString]);
	}
	if(self.returnCode != 0) {
		xmlAddChild(node, [self.returnCode xmlNodeForDoc:node->doc elementName:@"returnCode" elementNSPrefix:nil]);
	}
	if(self.parameter != 0) {
		for(ETP_Parameter * child in self.parameter) {
			xmlAddChild(node, [child xmlNodeForDoc:node->doc elementName:@"parameter" elementNSPrefix:nil]);
		}
	}
}
/* elements */
@synthesize status;
@synthesize returnCode;
@synthesize parameter;
- (void)addParameter:(ETP_Parameter *)toAdd
{
	if(toAdd != nil) [parameter addObject:toAdd];
}
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_TransactionStatusResponse *)deserializeNode:(xmlNodePtr)cur
{
	ETP_TransactionStatusResponse *newObject = [[ETP_TransactionStatusResponse new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "status")) {
				
				ETP_Status enumRepresentation = ETP_Status_enumFromString(elementString);
				self.status = enumRepresentation;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "returnCode")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.returnCode = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "parameter")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [ETP_Parameter class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				if(newChild != nil) [self.parameter addObject:newChild];
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_TransactionConfirmation
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		merchantID = 0;
		mpayTID = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(merchantID != nil) [merchantID release];
	if(mpayTID != nil) [mpayTID release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.merchantID != 0) {
		xmlAddChild(node, [self.merchantID xmlNodeForDoc:node->doc elementName:@"merchantID" elementNSPrefix:nil]);
	}
	if(self.mpayTID != 0) {
		xmlAddChild(node, [self.mpayTID xmlNodeForDoc:node->doc elementName:@"mpayTID" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize merchantID;
@synthesize mpayTID;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_TransactionConfirmation *)deserializeNode:(xmlNodePtr)cur
{
	ETP_TransactionConfirmation *newObject = [[ETP_TransactionConfirmation new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "merchantID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.merchantID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "mpayTID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.mpayTID = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_TransactionConfirmationResponse
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		status = 0;
		returnCode = 0;
		confirmation = [[NSMutableArray alloc] init];
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(returnCode != nil) [returnCode release];
	if(confirmation != nil) [confirmation release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.status != 0) {
		xmlNewChild(node, NULL, (const xmlChar*)"status", [ETP_Status_stringFromEnum(self.status) xmlString]);
	}
	if(self.returnCode != 0) {
		xmlAddChild(node, [self.returnCode xmlNodeForDoc:node->doc elementName:@"returnCode" elementNSPrefix:nil]);
	}
	if(self.confirmation != 0) {
		for(ETP_Confirmation * child in self.confirmation) {
			xmlAddChild(node, [child xmlNodeForDoc:node->doc elementName:@"confirmation" elementNSPrefix:nil]);
		}
	}
}
/* elements */
@synthesize status;
@synthesize returnCode;
@synthesize confirmation;
- (void)addConfirmation:(ETP_Confirmation *)toAdd
{
	if(toAdd != nil) [confirmation addObject:toAdd];
}
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_TransactionConfirmationResponse *)deserializeNode:(xmlNodePtr)cur
{
	ETP_TransactionConfirmationResponse *newObject = [[ETP_TransactionConfirmationResponse new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "status")) {
				
				ETP_Status enumRepresentation = ETP_Status_enumFromString(elementString);
				self.status = enumRepresentation;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "returnCode")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.returnCode = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "confirmation")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [ETP_Confirmation class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				if(newChild != nil) [self.confirmation addObject:newChild];
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_TransactionHistory
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		merchantID = 0;
		mpayTID = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(merchantID != nil) [merchantID release];
	if(mpayTID != nil) [mpayTID release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.merchantID != 0) {
		xmlAddChild(node, [self.merchantID xmlNodeForDoc:node->doc elementName:@"merchantID" elementNSPrefix:nil]);
	}
	if(self.mpayTID != 0) {
		xmlAddChild(node, [self.mpayTID xmlNodeForDoc:node->doc elementName:@"mpayTID" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize merchantID;
@synthesize mpayTID;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_TransactionHistory *)deserializeNode:(xmlNodePtr)cur
{
	ETP_TransactionHistory *newObject = [[ETP_TransactionHistory new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "merchantID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.merchantID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "mpayTID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.mpayTID = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_TransactionHistoryResponse
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		status = 0;
		returnCode = 0;
		historyEntry = [[NSMutableArray alloc] init];
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(returnCode != nil) [returnCode release];
	if(historyEntry != nil) [historyEntry release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.status != 0) {
		xmlNewChild(node, NULL, (const xmlChar*)"status", [ETP_Status_stringFromEnum(self.status) xmlString]);
	}
	if(self.returnCode != 0) {
		xmlAddChild(node, [self.returnCode xmlNodeForDoc:node->doc elementName:@"returnCode" elementNSPrefix:nil]);
	}
	if(self.historyEntry != 0) {
		for(ETP_HistoryEntry * child in self.historyEntry) {
			xmlAddChild(node, [child xmlNodeForDoc:node->doc elementName:@"historyEntry" elementNSPrefix:nil]);
		}
	}
}
/* elements */
@synthesize status;
@synthesize returnCode;
@synthesize historyEntry;
- (void)addHistoryEntry:(ETP_HistoryEntry *)toAdd
{
	if(toAdd != nil) [historyEntry addObject:toAdd];
}
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_TransactionHistoryResponse *)deserializeNode:(xmlNodePtr)cur
{
	ETP_TransactionHistoryResponse *newObject = [[ETP_TransactionHistoryResponse new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "status")) {
				
				ETP_Status enumRepresentation = ETP_Status_enumFromString(elementString);
				self.status = enumRepresentation;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "returnCode")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.returnCode = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "historyEntry")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [ETP_HistoryEntry class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				if(newChild != nil) [self.historyEntry addObject:newChild];
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_ListNotCleared
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		merchantID = 0;
		begin = 0;
		size_ = 0;
		sortField = 0;
		sortType = 0;
		listInProgress = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(merchantID != nil) [merchantID release];
	if(begin != nil) [begin release];
	if(size_ != nil) [size_ release];
	if(listInProgress != nil) [listInProgress release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.merchantID != 0) {
		xmlAddChild(node, [self.merchantID xmlNodeForDoc:node->doc elementName:@"merchantID" elementNSPrefix:nil]);
	}
	if(self.begin != 0) {
		xmlAddChild(node, [self.begin xmlNodeForDoc:node->doc elementName:@"begin" elementNSPrefix:nil]);
	}
	if(self.size_ != 0) {
		xmlAddChild(node, [self.size_ xmlNodeForDoc:node->doc elementName:@"size" elementNSPrefix:nil]);
	}
	if(self.sortField != 0) {
		xmlNewChild(node, NULL, (const xmlChar*)"sortField", [ETP_SortField_stringFromEnum(self.sortField) xmlString]);
	}
	if(self.sortType != 0) {
		xmlNewChild(node, NULL, (const xmlChar*)"sortType", [ETP_SortType_stringFromEnum(self.sortType) xmlString]);
	}
	if(self.listInProgress != 0) {
		xmlAddChild(node, [self.listInProgress xmlNodeForDoc:node->doc elementName:@"listInProgress" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize merchantID;
@synthesize begin;
@synthesize size_;
@synthesize sortField;
@synthesize sortType;
@synthesize listInProgress;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_ListNotCleared *)deserializeNode:(xmlNodePtr)cur
{
	ETP_ListNotCleared *newObject = [[ETP_ListNotCleared new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "merchantID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.merchantID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "begin")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.begin = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "size")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.size_ = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "sortField")) {
				
				ETP_SortField enumRepresentation = ETP_SortField_enumFromString(elementString);
				self.sortField = enumRepresentation;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "sortType")) {
				
				ETP_SortType enumRepresentation = ETP_SortType_enumFromString(elementString);
				self.sortType = enumRepresentation;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "listInProgress")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [USBoolean class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.listInProgress = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_ListNotClearedResponse
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		status = 0;
		returnCode = 0;
		transactionDetails = [[NSMutableArray alloc] init];
		all = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(returnCode != nil) [returnCode release];
	if(transactionDetails != nil) [transactionDetails release];
	if(all != nil) [all release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.status != 0) {
		xmlNewChild(node, NULL, (const xmlChar*)"status", [ETP_Status_stringFromEnum(self.status) xmlString]);
	}
	if(self.returnCode != 0) {
		xmlAddChild(node, [self.returnCode xmlNodeForDoc:node->doc elementName:@"returnCode" elementNSPrefix:nil]);
	}
	if(self.transactionDetails != 0) {
		for(ETP_TransactionDetails * child in self.transactionDetails) {
			xmlAddChild(node, [child xmlNodeForDoc:node->doc elementName:@"transactionDetails" elementNSPrefix:nil]);
		}
	}
	if(self.all != 0) {
		xmlAddChild(node, [self.all xmlNodeForDoc:node->doc elementName:@"all" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize status;
@synthesize returnCode;
@synthesize transactionDetails;
- (void)addTransactionDetails:(ETP_TransactionDetails *)toAdd
{
	if(toAdd != nil) [transactionDetails addObject:toAdd];
}
@synthesize all;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_ListNotClearedResponse *)deserializeNode:(xmlNodePtr)cur
{
	ETP_ListNotClearedResponse *newObject = [[ETP_ListNotClearedResponse new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "status")) {
				
				ETP_Status enumRepresentation = ETP_Status_enumFromString(elementString);
				self.status = enumRepresentation;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "returnCode")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.returnCode = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "transactionDetails")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [ETP_TransactionDetails class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				if(newChild != nil) [self.transactionDetails addObject:newChild];
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "all")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.all = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_ListPaymentMethods
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		merchantID = 0;
		pType = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(merchantID != nil) [merchantID release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.merchantID != 0) {
		xmlAddChild(node, [self.merchantID xmlNodeForDoc:node->doc elementName:@"merchantID" elementNSPrefix:nil]);
	}
	if(self.pType != 0) {
		xmlNewChild(node, NULL, (const xmlChar*)"pType", [ETP_PaymentType_stringFromEnum(self.pType) xmlString]);
	}
}
/* elements */
@synthesize merchantID;
@synthesize pType;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_ListPaymentMethods *)deserializeNode:(xmlNodePtr)cur
{
	ETP_ListPaymentMethods *newObject = [[ETP_ListPaymentMethods new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "merchantID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.merchantID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "pType")) {
				
				ETP_PaymentType enumRepresentation = ETP_PaymentType_enumFromString(elementString);
				self.pType = enumRepresentation;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_ListPaymentMethodsResponse
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		status = 0;
		returnCode = 0;
		paymentMethod = [[NSMutableArray alloc] init];
		all = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(returnCode != nil) [returnCode release];
	if(paymentMethod != nil) [paymentMethod release];
	if(all != nil) [all release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.status != 0) {
		xmlNewChild(node, NULL, (const xmlChar*)"status", [ETP_Status_stringFromEnum(self.status) xmlString]);
	}
	if(self.returnCode != 0) {
		xmlAddChild(node, [self.returnCode xmlNodeForDoc:node->doc elementName:@"returnCode" elementNSPrefix:nil]);
	}
	if(self.paymentMethod != 0) {
		for(ETP_PaymentMethod * child in self.paymentMethod) {
			xmlAddChild(node, [child xmlNodeForDoc:node->doc elementName:@"paymentMethod" elementNSPrefix:nil]);
		}
	}
	if(self.all != 0) {
		xmlAddChild(node, [self.all xmlNodeForDoc:node->doc elementName:@"all" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize status;
@synthesize returnCode;
@synthesize paymentMethod;
- (void)addPaymentMethod:(ETP_PaymentMethod *)toAdd
{
	if(toAdd != nil) [paymentMethod addObject:toAdd];
}
@synthesize all;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_ListPaymentMethodsResponse *)deserializeNode:(xmlNodePtr)cur
{
	ETP_ListPaymentMethodsResponse *newObject = [[ETP_ListPaymentMethodsResponse new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "status")) {
				
				ETP_Status enumRepresentation = ETP_Status_enumFromString(elementString);
				self.status = enumRepresentation;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "returnCode")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.returnCode = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "paymentMethod")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [ETP_PaymentMethod class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				if(newChild != nil) [self.paymentMethod addObject:newChild];
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "all")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.all = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_CreateProfile
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		merchantID = 0;
		mdxi = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(merchantID != nil) [merchantID release];
	if(mdxi != nil) [mdxi release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.merchantID != 0) {
		xmlAddChild(node, [self.merchantID xmlNodeForDoc:node->doc elementName:@"merchantID" elementNSPrefix:nil]);
	}
	if(self.mdxi != 0) {
		xmlAddChild(node, [self.mdxi xmlNodeForDoc:node->doc elementName:@"mdxi" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize merchantID;
@synthesize mdxi;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_CreateProfile *)deserializeNode:(xmlNodePtr)cur
{
	ETP_CreateProfile *newObject = [[ETP_CreateProfile new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "merchantID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.merchantID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "mdxi")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.mdxi = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_CreateProfileResponse
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		status = 0;
		returnCode = 0;
		errNo = 0;
		errText = 0;
		location = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(returnCode != nil) [returnCode release];
	if(errNo != nil) [errNo release];
	if(errText != nil) [errText release];
	if(location != nil) [location release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.status != 0) {
		xmlNewChild(node, NULL, (const xmlChar*)"status", [ETP_Status_stringFromEnum(self.status) xmlString]);
	}
	if(self.returnCode != 0) {
		xmlAddChild(node, [self.returnCode xmlNodeForDoc:node->doc elementName:@"returnCode" elementNSPrefix:nil]);
	}
	if(self.errNo != 0) {
		xmlAddChild(node, [self.errNo xmlNodeForDoc:node->doc elementName:@"errNo" elementNSPrefix:nil]);
	}
	if(self.errText != 0) {
		xmlAddChild(node, [self.errText xmlNodeForDoc:node->doc elementName:@"errText" elementNSPrefix:nil]);
	}
	if(self.location != 0) {
		xmlAddChild(node, [self.location xmlNodeForDoc:node->doc elementName:@"location" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize status;
@synthesize returnCode;
@synthesize errNo;
@synthesize errText;
@synthesize location;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_CreateProfileResponse *)deserializeNode:(xmlNodePtr)cur
{
	ETP_CreateProfileResponse *newObject = [[ETP_CreateProfileResponse new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "status")) {
				
				ETP_Status enumRepresentation = ETP_Status_enumFromString(elementString);
				self.status = enumRepresentation;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "returnCode")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.returnCode = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "errNo")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.errNo = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "errText")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.errText = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "location")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.location = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_ListProfiles
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		merchantID = 0;
		customerID = 0;
		expiredBy = 0;
		begin = 0;
		size_ = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(merchantID != nil) [merchantID release];
	if(customerID != nil) [customerID release];
	if(expiredBy != nil) [expiredBy release];
	if(begin != nil) [begin release];
	if(size_ != nil) [size_ release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.merchantID != 0) {
		xmlAddChild(node, [self.merchantID xmlNodeForDoc:node->doc elementName:@"merchantID" elementNSPrefix:nil]);
	}
	if(self.customerID != 0) {
		xmlAddChild(node, [self.customerID xmlNodeForDoc:node->doc elementName:@"customerID" elementNSPrefix:nil]);
	}
	if(self.expiredBy != 0) {
		xmlAddChild(node, [self.expiredBy xmlNodeForDoc:node->doc elementName:@"expiredBy" elementNSPrefix:nil]);
	}
	if(self.begin != 0) {
		xmlAddChild(node, [self.begin xmlNodeForDoc:node->doc elementName:@"begin" elementNSPrefix:nil]);
	}
	if(self.size_ != 0) {
		xmlAddChild(node, [self.size_ xmlNodeForDoc:node->doc elementName:@"size" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize merchantID;
@synthesize customerID;
@synthesize expiredBy;
@synthesize begin;
@synthesize size_;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_ListProfiles *)deserializeNode:(xmlNodePtr)cur
{
	ETP_ListProfiles *newObject = [[ETP_ListProfiles new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "merchantID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.merchantID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "customerID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.customerID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "expiredBy")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSDate class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.expiredBy = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "begin")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.begin = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "size")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.size_ = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_ListProfilesResponse
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		status = 0;
		returnCode = 0;
		profile = [[NSMutableArray alloc] init];
		all = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(returnCode != nil) [returnCode release];
	if(profile != nil) [profile release];
	if(all != nil) [all release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.status != 0) {
		xmlNewChild(node, NULL, (const xmlChar*)"status", [ETP_Status_stringFromEnum(self.status) xmlString]);
	}
	if(self.returnCode != 0) {
		xmlAddChild(node, [self.returnCode xmlNodeForDoc:node->doc elementName:@"returnCode" elementNSPrefix:nil]);
	}
	if(self.profile != 0) {
		for(ETP_Profile * child in self.profile) {
			xmlAddChild(node, [child xmlNodeForDoc:node->doc elementName:@"profile" elementNSPrefix:nil]);
		}
	}
	if(self.all != 0) {
		xmlAddChild(node, [self.all xmlNodeForDoc:node->doc elementName:@"all" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize status;
@synthesize returnCode;
@synthesize profile;
- (void)addProfile:(ETP_Profile *)toAdd
{
	if(toAdd != nil) [profile addObject:toAdd];
}
@synthesize all;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_ListProfilesResponse *)deserializeNode:(xmlNodePtr)cur
{
	ETP_ListProfilesResponse *newObject = [[ETP_ListProfilesResponse new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "status")) {
				
				ETP_Status enumRepresentation = ETP_Status_enumFromString(elementString);
				self.status = enumRepresentation;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "returnCode")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.returnCode = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "profile")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [ETP_Profile class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				if(newChild != nil) [self.profile addObject:newChild];
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "all")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.all = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_DeleteProfile
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		merchantID = 0;
		customerID = 0;
		profileID = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(merchantID != nil) [merchantID release];
	if(customerID != nil) [customerID release];
	if(profileID != nil) [profileID release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.merchantID != 0) {
		xmlAddChild(node, [self.merchantID xmlNodeForDoc:node->doc elementName:@"merchantID" elementNSPrefix:nil]);
	}
	if(self.customerID != 0) {
		xmlAddChild(node, [self.customerID xmlNodeForDoc:node->doc elementName:@"customerID" elementNSPrefix:nil]);
	}
	if(self.profileID != 0) {
		xmlAddChild(node, [self.profileID xmlNodeForDoc:node->doc elementName:@"profileID" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize merchantID;
@synthesize customerID;
@synthesize profileID;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_DeleteProfile *)deserializeNode:(xmlNodePtr)cur
{
	ETP_DeleteProfile *newObject = [[ETP_DeleteProfile new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "merchantID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.merchantID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "customerID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.customerID = newChild;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "profileID")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.profileID = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP_DeleteProfileResponse
@synthesize soapSigner;
- (id)init
{
	if((self = [super init])) {
		status = 0;
		returnCode = 0;
	}
	
	return self;
}
- (void)dealloc
{
	[soapSigner release];
	if(returnCode != nil) [returnCode release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"etp";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"etp", elName];
	}
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.status != 0) {
		xmlNewChild(node, NULL, (const xmlChar*)"status", [ETP_Status_stringFromEnum(self.status) xmlString]);
	}
	if(self.returnCode != 0) {
		xmlAddChild(node, [self.returnCode xmlNodeForDoc:node->doc elementName:@"returnCode" elementNSPrefix:nil]);
	}
}
/* elements */
@synthesize status;
@synthesize returnCode;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (ETP_DeleteProfileResponse *)deserializeNode:(xmlNodePtr)cur
{
	ETP_DeleteProfileResponse *newObject = [[ETP_DeleteProfileResponse new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "status")) {
				
				ETP_Status enumRepresentation = ETP_Status_enumFromString(elementString);
				self.status = enumRepresentation;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "returnCode")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSString class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.returnCode = newChild;
			}
		}
	}
}
/* NSCoder functions taken from: 
 * http://davedelong.com/blog/2009/04/13/aspect-oriented-programming-objective-c
 */
- (id) initWithCoder:(NSCoder *)decoder {
	// ERICBE: XCode Analyze doesn't see below as a call to [super init] or [super initWithCoder];
	// So we will just call [super init] THEN call initWithCoder.  A bit less efficient, but hey - this code never actually gets called!
	self = [super init];
	if ([super respondsToSelector:@selector(initWithCoder:)] && ![self isKindOfClass:[super class]])
		[super performSelector:@selector(initWithCoder:) withObject:decoder];
	if (self == nil) { return nil; }
 
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for(int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [decoder decodeObjectForKey:key];
		if (val == nil) { val = [NSNumber numberWithFloat:0.0]; }
		[self setValue:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
	return self;
}
- (void) encodeWithCoder:(NSCoder *)encoder {
	if ([super respondsToSelector:@selector(encodeWithCoder:)] && ![self isKindOfClass:[super class]]) {
		[super performSelector:@selector(encodeWithCoder:) withObject:encoder];
	}
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	unsigned int numIvars = 0;
	Ivar * ivars = class_copyIvarList([self class], &numIvars);
	for (int i = 0; i < numIvars; i++) {
		Ivar thisIvar = ivars[i];
		NSString * key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
		id val = [self valueForKey:key];
		[encoder encodeObject:val forKey:key];
	}
	if (numIvars > 0) { free(ivars); }
	[pool drain];
}
@end
@implementation ETP
+ (void)initialize
{
	[[USGlobals sharedInstance].wsdlStandardNamespaces setObject:@"etp" forKey:@"https://www.mpay24.com/soap/etp/1.5/ETP.wsdl"];
	[[USGlobals sharedInstance].wsdlStandardNamespaces setObject:@"soap" forKey:@"http://schemas.xmlsoap.org/soap/envelope/"];
	[[USGlobals sharedInstance].wsdlStandardNamespaces setObject:@"xsi" forKey:@"http://www.w3.org/2001/XMLSchema-instance"];
}
+ (ETPBinding *)ETPBinding
{
	return [[[ETPBinding alloc] initWithAddress:@"https://www.mpay24.com/app/bin/etpproxy_v15"] autorelease];
}
@end
@implementation ETPBinding
@synthesize address;
@synthesize timeout;
@synthesize logXMLInOut;
@synthesize ignoreEmptyResponse;
@synthesize cookies;
@synthesize customHeaders;
@synthesize soapSigner;
@synthesize sslManager;
+ (NSTimeInterval)defaultTimeout
{
	return 10;
}
- (id)init
{
	if((self = [super init])) {
		address = nil;
		cookies = nil;
		customHeaders = [NSMutableDictionary new];
		timeout = [[self class] defaultTimeout];
		logXMLInOut = NO;
		synchronousOperationComplete = NO;
	}
	
	return self;
}
- (id)initWithAddress:(NSString *)anAddress
{
	if((self = [self init])) {
		self.address = [NSURL URLWithString:anAddress];
	}
	
	return self;
}
- (NSString *)MIMEType
{
	return @"text/xml";
}
- (void)addCookie:(NSHTTPCookie *)toAdd
{
	if(toAdd != nil) {
		if(cookies == nil) cookies = [[NSMutableArray alloc] init];
		[cookies addObject:toAdd];
	}
}
- (ETPBindingResponse *)performSynchronousOperation:(ETPBindingOperation *)operation
{
	synchronousOperationComplete = NO;
	[operation start];
	
	// Now wait for response
	NSRunLoop *theRL = [NSRunLoop currentRunLoop];
	
	while (!synchronousOperationComplete && [theRL runMode:NSDefaultRunLoopMode beforeDate:[NSDate distantFuture]]);
	return operation.response;
}
- (void)performAsynchronousOperation:(ETPBindingOperation *)operation
{
	[operation start];
}
- (void) operation:(ETPBindingOperation *)operation completedWithResponse:(ETPBindingResponse *)response
{
	synchronousOperationComplete = YES;
}
- (ETPBindingResponse *)SelectPaymentUsingParameters:(ETP_SelectPayment *)aParameters 
{
	return [self performSynchronousOperation:[[(ETPBinding_SelectPayment*)[ETPBinding_SelectPayment alloc] initWithBinding:self delegate:self
																							parameters:aParameters
																							] autorelease]];
}
- (void)SelectPaymentAsyncUsingParameters:(ETP_SelectPayment *)aParameters  delegate:(id<ETPBindingResponseDelegate>)responseDelegate
{
	[self performAsynchronousOperation: [[(ETPBinding_SelectPayment*)[ETPBinding_SelectPayment alloc] initWithBinding:self delegate:responseDelegate
																							 parameters:aParameters
																							 ] autorelease]];
}
- (ETPBindingResponse *)CreatePaymentTokenUsingParameters:(ETP_CreatePaymentToken *)aParameters 
{
	return [self performSynchronousOperation:[[(ETPBinding_CreatePaymentToken*)[ETPBinding_CreatePaymentToken alloc] initWithBinding:self delegate:self
																							parameters:aParameters
																							] autorelease]];
}
- (void)CreatePaymentTokenAsyncUsingParameters:(ETP_CreatePaymentToken *)aParameters  delegate:(id<ETPBindingResponseDelegate>)responseDelegate
{
	[self performAsynchronousOperation: [[(ETPBinding_CreatePaymentToken*)[ETPBinding_CreatePaymentToken alloc] initWithBinding:self delegate:responseDelegate
																							 parameters:aParameters
																							 ] autorelease]];
}
- (ETPBindingResponse *)CreateApplePayTokenUsingParameters:(ETP_CreateApplePayToken *)aParameters
{
    return [self performSynchronousOperation:[[(ETPBinding_CreateApplePayToken*)[ETPBinding_CreateApplePayToken alloc] initWithBinding:self delegate:self
                                                                                            parameters:aParameters
                                                                                            ] autorelease]];
}
- (void)CreateApplePayTokenAsyncUsingParameters:(ETP_CreateApplePayToken *)aParameters  delegate:(id<ETPBindingResponseDelegate>)responseDelegate
{
    [self performAsynchronousOperation: [[(ETPBinding_CreateApplePayToken*)[ETPBinding_CreateApplePayToken alloc] initWithBinding:self delegate:responseDelegate
                                                                                             parameters:aParameters
                                                                                             ] autorelease]];
}
- (ETPBindingResponse *)CreateGooglePayTokenUsingParameters:(ETP_CreateGooglePayToken *)aParameters
{
    return [self performSynchronousOperation:[[(ETPBinding_CreateGooglePayToken*)[ETPBinding_CreateGooglePayToken alloc] initWithBinding:self delegate:self
                                                                                            parameters:aParameters
                                                                                            ] autorelease]];
}
- (void)CreateGooglePayTokenAsyncUsingParameters:(ETP_CreateGooglePayToken *)aParameters  delegate:(id<ETPBindingResponseDelegate>)responseDelegate
{
    [self performAsynchronousOperation: [[(ETPBinding_CreateGooglePayToken*)[ETPBinding_CreateGooglePayToken alloc] initWithBinding:self delegate:responseDelegate
                                                                                             parameters:aParameters
                                                                                             ] autorelease]];
}
- (ETPBindingResponse *)CreateCustomerUsingParameters:(ETP_CreateCustomer *)aParameters
{
	return [self performSynchronousOperation:[[(ETPBinding_CreateCustomer*)[ETPBinding_CreateCustomer alloc] initWithBinding:self delegate:self
																							parameters:aParameters
																							] autorelease]];
}
- (void)CreateCustomerAsyncUsingParameters:(ETP_CreateCustomer *)aParameters  delegate:(id<ETPBindingResponseDelegate>)responseDelegate
{
	[self performAsynchronousOperation: [[(ETPBinding_CreateCustomer*)[ETPBinding_CreateCustomer alloc] initWithBinding:self delegate:responseDelegate
																							 parameters:aParameters
																							 ] autorelease]];
}
- (ETPBindingResponse *)AcceptPaymentUsingParameters:(ETP_AcceptPayment *)aParameters 
{
	return [self performSynchronousOperation:[[(ETPBinding_AcceptPayment*)[ETPBinding_AcceptPayment alloc] initWithBinding:self delegate:self
																							parameters:aParameters
																							] autorelease]];
}
- (void)AcceptPaymentAsyncUsingParameters:(ETP_AcceptPayment *)aParameters  delegate:(id<ETPBindingResponseDelegate>)responseDelegate
{
	[self performAsynchronousOperation: [[(ETPBinding_AcceptPayment*)[ETPBinding_AcceptPayment alloc] initWithBinding:self delegate:responseDelegate
																							 parameters:aParameters
																							 ] autorelease]];
}
- (ETPBindingResponse *)ManualCallbackUsingParameters:(ETP_ManualCallback *)aParameters 
{
	return [self performSynchronousOperation:[[(ETPBinding_ManualCallback*)[ETPBinding_ManualCallback alloc] initWithBinding:self delegate:self
																							parameters:aParameters
																							] autorelease]];
}
- (void)ManualCallbackAsyncUsingParameters:(ETP_ManualCallback *)aParameters  delegate:(id<ETPBindingResponseDelegate>)responseDelegate
{
	[self performAsynchronousOperation: [[(ETPBinding_ManualCallback*)[ETPBinding_ManualCallback alloc] initWithBinding:self delegate:responseDelegate
																							 parameters:aParameters
																							 ] autorelease]];
}
- (ETPBindingResponse *)ManualClearUsingParameters:(ETP_ManualClear *)aParameters 
{
	return [self performSynchronousOperation:[[(ETPBinding_ManualClear*)[ETPBinding_ManualClear alloc] initWithBinding:self delegate:self
																							parameters:aParameters
																							] autorelease]];
}
- (void)ManualClearAsyncUsingParameters:(ETP_ManualClear *)aParameters  delegate:(id<ETPBindingResponseDelegate>)responseDelegate
{
	[self performAsynchronousOperation: [[(ETPBinding_ManualClear*)[ETPBinding_ManualClear alloc] initWithBinding:self delegate:responseDelegate
																							 parameters:aParameters
																							 ] autorelease]];
}
- (ETPBindingResponse *)ManualReverseUsingParameters:(ETP_ManualReverse *)aParameters 
{
	return [self performSynchronousOperation:[[(ETPBinding_ManualReverse*)[ETPBinding_ManualReverse alloc] initWithBinding:self delegate:self
																							parameters:aParameters
																							] autorelease]];
}
- (void)ManualReverseAsyncUsingParameters:(ETP_ManualReverse *)aParameters  delegate:(id<ETPBindingResponseDelegate>)responseDelegate
{
	[self performAsynchronousOperation: [[(ETPBinding_ManualReverse*)[ETPBinding_ManualReverse alloc] initWithBinding:self delegate:responseDelegate
																							 parameters:aParameters
																							 ] autorelease]];
}
- (ETPBindingResponse *)ManualCreditUsingParameters:(ETP_ManualCredit *)aParameters 
{
	return [self performSynchronousOperation:[[(ETPBinding_ManualCredit*)[ETPBinding_ManualCredit alloc] initWithBinding:self delegate:self
																							parameters:aParameters
																							] autorelease]];
}
- (void)ManualCreditAsyncUsingParameters:(ETP_ManualCredit *)aParameters  delegate:(id<ETPBindingResponseDelegate>)responseDelegate
{
	[self performAsynchronousOperation: [[(ETPBinding_ManualCredit*)[ETPBinding_ManualCredit alloc] initWithBinding:self delegate:responseDelegate
																							 parameters:aParameters
																							 ] autorelease]];
}
- (ETPBindingResponse *)AcceptWithdrawUsingParameters:(ETP_AcceptWithdraw *)aParameters 
{
	return [self performSynchronousOperation:[[(ETPBinding_AcceptWithdraw*)[ETPBinding_AcceptWithdraw alloc] initWithBinding:self delegate:self
																							parameters:aParameters
																							] autorelease]];
}
- (void)AcceptWithdrawAsyncUsingParameters:(ETP_AcceptWithdraw *)aParameters  delegate:(id<ETPBindingResponseDelegate>)responseDelegate
{
	[self performAsynchronousOperation: [[(ETPBinding_AcceptWithdraw*)[ETPBinding_AcceptWithdraw alloc] initWithBinding:self delegate:responseDelegate
																							 parameters:aParameters
																							 ] autorelease]];
}
- (ETPBindingResponse *)TransactionStatusUsingParameters:(ETP_TransactionStatus *)aParameters 
{
	return [self performSynchronousOperation:[[(ETPBinding_TransactionStatus*)[ETPBinding_TransactionStatus alloc] initWithBinding:self delegate:self
																							parameters:aParameters
																							] autorelease]];
}
- (void)TransactionStatusAsyncUsingParameters:(ETP_TransactionStatus *)aParameters  delegate:(id<ETPBindingResponseDelegate>)responseDelegate
{
	[self performAsynchronousOperation: [[(ETPBinding_TransactionStatus*)[ETPBinding_TransactionStatus alloc] initWithBinding:self delegate:responseDelegate
																							 parameters:aParameters
																							 ] autorelease]];
}
- (ETPBindingResponse *)TransactionConfirmationUsingParameters:(ETP_TransactionConfirmation *)aParameters 
{
	return [self performSynchronousOperation:[[(ETPBinding_TransactionConfirmation*)[ETPBinding_TransactionConfirmation alloc] initWithBinding:self delegate:self
																							parameters:aParameters
																							] autorelease]];
}
- (void)TransactionConfirmationAsyncUsingParameters:(ETP_TransactionConfirmation *)aParameters  delegate:(id<ETPBindingResponseDelegate>)responseDelegate
{
	[self performAsynchronousOperation: [[(ETPBinding_TransactionConfirmation*)[ETPBinding_TransactionConfirmation alloc] initWithBinding:self delegate:responseDelegate
																							 parameters:aParameters
																							 ] autorelease]];
}
- (ETPBindingResponse *)TransactionHistoryUsingParameters:(ETP_TransactionHistory *)aParameters 
{
	return [self performSynchronousOperation:[[(ETPBinding_TransactionHistory*)[ETPBinding_TransactionHistory alloc] initWithBinding:self delegate:self
																							parameters:aParameters
																							] autorelease]];
}
- (void)TransactionHistoryAsyncUsingParameters:(ETP_TransactionHistory *)aParameters  delegate:(id<ETPBindingResponseDelegate>)responseDelegate
{
	[self performAsynchronousOperation: [[(ETPBinding_TransactionHistory*)[ETPBinding_TransactionHistory alloc] initWithBinding:self delegate:responseDelegate
																							 parameters:aParameters
																							 ] autorelease]];
}
- (ETPBindingResponse *)ListNotClearedUsingParameters:(ETP_ListNotCleared *)aParameters 
{
	return [self performSynchronousOperation:[[(ETPBinding_ListNotCleared*)[ETPBinding_ListNotCleared alloc] initWithBinding:self delegate:self
																							parameters:aParameters
																							] autorelease]];
}
- (void)ListNotClearedAsyncUsingParameters:(ETP_ListNotCleared *)aParameters  delegate:(id<ETPBindingResponseDelegate>)responseDelegate
{
	[self performAsynchronousOperation: [[(ETPBinding_ListNotCleared*)[ETPBinding_ListNotCleared alloc] initWithBinding:self delegate:responseDelegate
																							 parameters:aParameters
																							 ] autorelease]];
}
- (ETPBindingResponse *)ListPaymentMethodsUsingParameters:(ETP_ListPaymentMethods *)aParameters 
{
	return [self performSynchronousOperation:[[(ETPBinding_ListPaymentMethods*)[ETPBinding_ListPaymentMethods alloc] initWithBinding:self delegate:self
																							parameters:aParameters
																							] autorelease]];
}
- (void)ListPaymentMethodsAsyncUsingParameters:(ETP_ListPaymentMethods *)aParameters  delegate:(id<ETPBindingResponseDelegate>)responseDelegate
{
	[self performAsynchronousOperation: [[(ETPBinding_ListPaymentMethods*)[ETPBinding_ListPaymentMethods alloc] initWithBinding:self delegate:responseDelegate
																							 parameters:aParameters
																							 ] autorelease]];
}
- (ETPBindingResponse *)CreateProfileUsingParameters:(ETP_CreateProfile *)aParameters 
{
	return [self performSynchronousOperation:[[(ETPBinding_CreateProfile*)[ETPBinding_CreateProfile alloc] initWithBinding:self delegate:self
																							parameters:aParameters
																							] autorelease]];
}
- (void)CreateProfileAsyncUsingParameters:(ETP_CreateProfile *)aParameters  delegate:(id<ETPBindingResponseDelegate>)responseDelegate
{
	[self performAsynchronousOperation: [[(ETPBinding_CreateProfile*)[ETPBinding_CreateProfile alloc] initWithBinding:self delegate:responseDelegate
																							 parameters:aParameters
																							 ] autorelease]];
}
- (ETPBindingResponse *)ListProfilesUsingParameters:(ETP_ListProfiles *)aParameters 
{
	return [self performSynchronousOperation:[[(ETPBinding_ListProfiles*)[ETPBinding_ListProfiles alloc] initWithBinding:self delegate:self
																							parameters:aParameters
																							] autorelease]];
}
- (void)ListProfilesAsyncUsingParameters:(ETP_ListProfiles *)aParameters  delegate:(id<ETPBindingResponseDelegate>)responseDelegate
{
	[self performAsynchronousOperation: [[(ETPBinding_ListProfiles*)[ETPBinding_ListProfiles alloc] initWithBinding:self delegate:responseDelegate
																							 parameters:aParameters
																							 ] autorelease]];
}
- (ETPBindingResponse *)DeleteProfileUsingParameters:(ETP_DeleteProfile *)aParameters 
{
	return [self performSynchronousOperation:[[(ETPBinding_DeleteProfile*)[ETPBinding_DeleteProfile alloc] initWithBinding:self delegate:self
																							parameters:aParameters
																							] autorelease]];
}
- (void)DeleteProfileAsyncUsingParameters:(ETP_DeleteProfile *)aParameters  delegate:(id<ETPBindingResponseDelegate>)responseDelegate
{
	[self performAsynchronousOperation: [[(ETPBinding_DeleteProfile*)[ETPBinding_DeleteProfile alloc] initWithBinding:self delegate:responseDelegate
																							 parameters:aParameters
																							 ] autorelease]];
}
- (void)sendHTTPCallUsingBody:(NSString *)outputBody soapAction:(NSString *)soapAction forOperation:(ETPBindingOperation *)operation
{
    if (!outputBody) {
        NSError * err = [NSError errorWithDomain:@"ETPBindingNULLRequestExcpetion"
                                            code:0
                                        userInfo:nil];
        
        [operation connection:nil didFailWithError:err];
        return;
    }
	NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:self.address 
																												 cachePolicy:NSURLRequestReloadIgnoringLocalAndRemoteCacheData
																										 timeoutInterval:self.timeout];
	NSData *bodyData = [outputBody dataUsingEncoding:NSUTF8StringEncoding];
	
	if(cookies != nil) {
		[request setAllHTTPHeaderFields:[NSHTTPCookie requestHeaderFieldsWithCookies:cookies]];
	}
	[request setValue:@"wsdl2objc" forHTTPHeaderField:@"User-Agent"];
	[request setValue:soapAction forHTTPHeaderField:@"SOAPAction"];
	[request setValue:[[self MIMEType] stringByAppendingString:@"; charset=utf-8"] forHTTPHeaderField:@"Content-Type"];
	// ERICBE: cast to unsigned long to prevent warnings about implicit cast of NSInteger
	[request setValue:[NSString stringWithFormat:@"%lu", (unsigned long) [bodyData length]] forHTTPHeaderField:@"Content-Length"];
	[request setValue:self.address.host forHTTPHeaderField:@"Host"];
	for (NSString *eachHeaderField in [self.customHeaders allKeys]) {
		[request setValue:[self.customHeaders objectForKey:eachHeaderField] forHTTPHeaderField:eachHeaderField];
	}
	[request setHTTPMethod: @"POST"];
	// set version 1.1 - how?
	[request setHTTPBody: bodyData];
		
	if(self.logXMLInOut) {
		NSLog(@"OutputHeaders:\n%@", [request allHTTPHeaderFields]);
		NSLog(@"OutputBody:\n%@", outputBody);
	}
	NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:operation];
	
	operation.urlConnection = connection;
	[connection release];
}
- (void) dealloc
{
	[soapSigner release];
	// ERICBE: Assign sslManager property to nil to release it - avoids a compiler warning.
	// [sslManager release];
	self.sslManager = nil;
	[address release];
	[cookies release];
	[customHeaders release];
	[super dealloc];
}
@end
@implementation ETPBindingOperation
@synthesize binding;
@synthesize response;
@synthesize delegate;
@synthesize responseData;
@synthesize urlConnection;
- (id)initWithBinding:(ETPBinding *)aBinding delegate:(id<ETPBindingResponseDelegate>)aDelegate
{
	if ((self = [super init])) {
		self.binding = aBinding;
		response = nil;
		self.delegate = aDelegate;
		self.responseData = nil;
		self.urlConnection = nil;
	}
	
	return self;
}
- (BOOL)connection:(NSURLConnection *)connection canAuthenticateAgainstProtectionSpace:(NSURLProtectionSpace *)protectionSpace {
    return [binding.sslManager canAuthenticateForAuthenticationMethod:protectionSpace.authenticationMethod];
}
-(void)connection:(NSURLConnection *)connection didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge
{
	if (![binding.sslManager authenticateForChallenge:challenge]) {
		[[challenge sender] cancelAuthenticationChallenge:challenge];
	}
}
- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)urlResponse
{
	NSHTTPURLResponse *httpResponse;
	if ([urlResponse isKindOfClass:[NSHTTPURLResponse class]]) {
		httpResponse = (NSHTTPURLResponse *) urlResponse;
	} else {
		httpResponse = nil;
	}
	
	if(self.binding.logXMLInOut) {
		NSLog(@"ResponseStatus: %ld\n", (long)[httpResponse statusCode]);
		NSLog(@"ResponseHeaders:\n%@", [httpResponse allHeaderFields]);
	}
    NSInteger contentLength = [[[httpResponse allHeaderFields] objectForKey:@"Content-Length"] integerValue];
	
	if ([urlResponse.MIMEType rangeOfString:[self.binding MIMEType]].length == 0) {
		if ((self.binding.ignoreEmptyResponse == NO) || (contentLength != 0)) {
			NSError *error = nil;
			[connection cancel];
			if ([httpResponse statusCode] >= 400) {
				NSDictionary *userInfo = [NSDictionary dictionaryWithObjectsAndKeys:[NSHTTPURLResponse localizedStringForStatusCode:[httpResponse statusCode]],NSLocalizedDescriptionKey,
																			  httpResponse.URL, NSURLErrorKey,nil];
				error = [NSError errorWithDomain:@"ETPBindingResponseHTTP" code:[httpResponse statusCode] userInfo:userInfo];
			} else {
				NSDictionary *userInfo = [NSDictionary dictionaryWithObjectsAndKeys:
														[NSString stringWithFormat: @"Unexpected response MIME type to SOAP call:%@", urlResponse.MIMEType],NSLocalizedDescriptionKey,
																			  httpResponse.URL, NSURLErrorKey,nil];
				error = [NSError errorWithDomain:@"ETPBindingResponseHTTP" code:1 userInfo:userInfo];
			}
				
			[self connection:connection didFailWithError:error];
		} else {
            [delegate operation:self completedWithResponse:response];
		}
	}
}
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
	if (responseData == nil) {
		responseData = [data mutableCopy];
	} else {
		[responseData appendData:data];
	}
}
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
	if (binding.logXMLInOut) {
		NSLog(@"ResponseError:\n%@", error);
	}
	response.error = error;
	[delegate operation:self completedWithResponse:response];
}
- (void)dealloc
{
	[binding release];
	[response release];
	delegate = nil;
	[responseData release];
	[urlConnection release];
	
	[super dealloc];
}
@end
@implementation ETPBinding_SelectPayment
@synthesize parameters;
- (id)initWithBinding:(ETPBinding *)aBinding delegate:(id<ETPBindingResponseDelegate>)responseDelegate
parameters:(ETP_SelectPayment *)aParameters
{
	if((self = [super initWithBinding:aBinding delegate:responseDelegate])) {
		self.parameters = aParameters;
	}
	
	return self;
}
- (void)dealloc
{
	if(parameters != nil) [parameters release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [ETPBindingResponse new];
	
	ETPBinding_envelope *envelope = [ETPBinding_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	NSMutableArray *bodyKeys = nil;
	bodyElements = [NSMutableDictionary dictionary];
	bodyKeys = [NSMutableArray array];
	id obj = nil;
	if(parameters != nil) obj = parameters;
	if(obj != nil) {
		[bodyElements setObject:obj forKey:@"SelectPayment"];
		[bodyKeys addObject:@"SelectPayment"];
	}
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements bodyKeys:bodyKeys];
	operationXMLString = binding.soapSigner ? [binding.soapSigner signRequest:operationXMLString] : operationXMLString;
	
	[delegate operation:self sentSOAPRequest: operationXMLString];
	[binding sendHTTPCallUsingBody:operationXMLString soapAction:@"SelectPayment" forOperation:self];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	if (responseData != nil && delegate != nil)
	{
		xmlDocPtr doc;
		xmlNodePtr cur;
		
		if (binding.logXMLInOut) {
			NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
		}
#if !TARGET_OS_IPHONE && (!defined(MAC_OS_X_VERSION_10_6) || MAC_OS_X_VERSION_MIN_REQUIRED < MAC_OS_X_VERSION_10_6)
	// Not yet defined in 10.5 libxml
	#define XML_PARSE_COMPACT 0
#endif
    // EricBe: Put explicit conversion since [responseData length] is NSInteger but xmlReadMemory wants int.
	doc = xmlReadMemory([responseData bytes], (int) [responseData length], NULL, NULL, XML_PARSE_COMPACT | XML_PARSE_NOBLANKS);
		
		if (doc == NULL) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
			
			response.error = [NSError errorWithDomain:@"ETPBindingResponseXML" code:1 userInfo:userInfo];
			[delegate operation:self completedWithResponse:response];
		} else {
			if ([delegate respondsToSelector:@selector(operation:receivedSOAPResponse:)]) {
				xmlBufferPtr buf = xmlBufferCreate();
				if (buf) {
					xmlSaveCtxtPtr ctx = xmlSaveToBuffer(buf, "UTF-8",  XML_SAVE_FORMAT | XML_SAVE_AS_XML);
					xmlSaveDoc(ctx, doc);
					xmlSaveFlush(ctx);
					[delegate operation:self receivedSOAPResponse: [NSString stringWithCString:(char*)xmlBufferContent(buf) encoding:NSUTF8StringEncoding]];
					xmlSaveClose(ctx);
					xmlBufferFree(buf);
				}
			}
			cur = xmlDocGetRootElement(doc);
			cur = cur->children;
			for( ; cur != NULL ; cur = cur->next) {
				if(cur->type == XML_ELEMENT_NODE) {
					
					if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
						NSMutableArray *responseBodyParts = [NSMutableArray array];
						
						xmlNodePtr bodyNode;
						for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
							if(cur->type == XML_ELEMENT_NODE) {
								if(xmlStrEqual(bodyNode->name, (const xmlChar *) "SelectPaymentResponse")) {
									ETP_SelectPaymentResponse *bodyObject = [ETP_SelectPaymentResponse deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
								if ((bodyNode->ns != nil && xmlStrEqual(bodyNode->ns->prefix, cur->ns->prefix)) && 
									xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault")) {
                                    NSDictionary *exceptions = [NSDictionary dictionaryWithObjectsAndKeys:
																@"ETP_Fault", @"Fault", // Added only to avoid xcode warnings
                                                                nil];
									SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode expectedExceptions:exceptions];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
							}
						}
						
						response.bodyParts = responseBodyParts;
					}
				}
			}
			
			xmlFreeDoc(doc);
		}
		
		xmlCleanupParser();
		[delegate operation:self completedWithResponse:response];
	}
}
@end
@implementation ETPBinding_CreatePaymentToken
@synthesize parameters;
- (id)initWithBinding:(ETPBinding *)aBinding delegate:(id<ETPBindingResponseDelegate>)responseDelegate
parameters:(ETP_CreatePaymentToken *)aParameters
{
	if((self = [super initWithBinding:aBinding delegate:responseDelegate])) {
		self.parameters = aParameters;
	}
	
	return self;
}
- (void)dealloc
{
	if(parameters != nil) [parameters release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [ETPBindingResponse new];
	
	ETPBinding_envelope *envelope = [ETPBinding_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	NSMutableArray *bodyKeys = nil;
	bodyElements = [NSMutableDictionary dictionary];
	bodyKeys = [NSMutableArray array];
	id obj = nil;
	if(parameters != nil) obj = parameters;
	if(obj != nil) {
		[bodyElements setObject:obj forKey:@"CreatePaymentToken"];
		[bodyKeys addObject:@"CreatePaymentToken"];
	}
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements bodyKeys:bodyKeys];
	operationXMLString = binding.soapSigner ? [binding.soapSigner signRequest:operationXMLString] : operationXMLString;
	
	[delegate operation:self sentSOAPRequest: operationXMLString];
	[binding sendHTTPCallUsingBody:operationXMLString soapAction:@"CreatePaymentToken" forOperation:self];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	if (responseData != nil && delegate != nil)
	{
		xmlDocPtr doc;
		xmlNodePtr cur;
		
		if (binding.logXMLInOut) {
			NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
		}
#if !TARGET_OS_IPHONE && (!defined(MAC_OS_X_VERSION_10_6) || MAC_OS_X_VERSION_MIN_REQUIRED < MAC_OS_X_VERSION_10_6)
	// Not yet defined in 10.5 libxml
	#define XML_PARSE_COMPACT 0
#endif
    // EricBe: Put explicit conversion since [responseData length] is NSInteger but xmlReadMemory wants int.
	doc = xmlReadMemory([responseData bytes], (int) [responseData length], NULL, NULL, XML_PARSE_COMPACT | XML_PARSE_NOBLANKS);
		
		if (doc == NULL) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
			
			response.error = [NSError errorWithDomain:@"ETPBindingResponseXML" code:1 userInfo:userInfo];
			[delegate operation:self completedWithResponse:response];
		} else {
			if ([delegate respondsToSelector:@selector(operation:receivedSOAPResponse:)]) {
				xmlBufferPtr buf = xmlBufferCreate();
				if (buf) {
					xmlSaveCtxtPtr ctx = xmlSaveToBuffer(buf, "UTF-8",  XML_SAVE_FORMAT | XML_SAVE_AS_XML);
					xmlSaveDoc(ctx, doc);
					xmlSaveFlush(ctx);
					[delegate operation:self receivedSOAPResponse: [NSString stringWithCString:(char*)xmlBufferContent(buf) encoding:NSUTF8StringEncoding]];
					xmlSaveClose(ctx);
					xmlBufferFree(buf);
				}
			}
			cur = xmlDocGetRootElement(doc);
			cur = cur->children;
			for( ; cur != NULL ; cur = cur->next) {
				if(cur->type == XML_ELEMENT_NODE) {
					
					if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
						NSMutableArray *responseBodyParts = [NSMutableArray array];
						
						xmlNodePtr bodyNode;
						for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
							if(cur->type == XML_ELEMENT_NODE) {
								if(xmlStrEqual(bodyNode->name, (const xmlChar *) "CreatePaymentTokenResponse")) {
									ETP_CreatePaymentTokenResponse *bodyObject = [ETP_CreatePaymentTokenResponse deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
								if ((bodyNode->ns != nil && xmlStrEqual(bodyNode->ns->prefix, cur->ns->prefix)) && 
									xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault")) {
                                    NSDictionary *exceptions = [NSDictionary dictionaryWithObjectsAndKeys:
																@"ETP_Fault", @"Fault", // Added only to avoid xcode warnings
                                                                nil];
									SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode expectedExceptions:exceptions];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
							}
						}
						
						response.bodyParts = responseBodyParts;
					}
				}
			}
			
			xmlFreeDoc(doc);
		}
		
		xmlCleanupParser();
		[delegate operation:self completedWithResponse:response];
	}
}
@end
@implementation ETPBinding_CreateApplePayToken
@synthesize parameters;
- (id)initWithBinding:(ETPBinding *)aBinding delegate:(id<ETPBindingResponseDelegate>)responseDelegate
parameters:(ETP_CreateApplePayToken *)aParameters
{
    if((self = [super initWithBinding:aBinding delegate:responseDelegate])) {
        self.parameters = aParameters;
    }
    
    return self;
}
- (void)dealloc
{
    if(parameters != nil) [parameters release];
    
    [super dealloc];
}
- (void)main
{
    [response autorelease];
    response = [ETPBindingResponse new];
    
    ETPBinding_envelope *envelope = [ETPBinding_envelope sharedInstance];
    
    NSMutableDictionary *headerElements = nil;
    headerElements = [NSMutableDictionary dictionary];
    
    NSMutableDictionary *bodyElements = nil;
    NSMutableArray *bodyKeys = nil;
    bodyElements = [NSMutableDictionary dictionary];
    bodyKeys = [NSMutableArray array];
    id obj = nil;
    if(parameters != nil) obj = parameters;
    if(obj != nil) {
        [bodyElements setObject:obj forKey:@"CreateApplePayToken"];
        [bodyKeys addObject:@"CreateApplePayToken"];
    }
    
    NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements bodyKeys:bodyKeys];
    operationXMLString = binding.soapSigner ? [binding.soapSigner signRequest:operationXMLString] : operationXMLString;
    
    [delegate operation:self sentSOAPRequest: operationXMLString];
    [binding sendHTTPCallUsingBody:operationXMLString soapAction:@"CreateApplePayToken" forOperation:self];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    if (responseData != nil && delegate != nil)
    {
        xmlDocPtr doc;
        xmlNodePtr cur;
        
        if (binding.logXMLInOut) {
            NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
        }
#if !TARGET_OS_IPHONE && (!defined(MAC_OS_X_VERSION_10_6) || MAC_OS_X_VERSION_MIN_REQUIRED < MAC_OS_X_VERSION_10_6)
    // Not yet defined in 10.5 libxml
    #define XML_PARSE_COMPACT 0
#endif
    // EricBe: Put explicit conversion since [responseData length] is NSInteger but xmlReadMemory wants int.
    doc = xmlReadMemory([responseData bytes], (int) [responseData length], NULL, NULL, XML_PARSE_COMPACT | XML_PARSE_NOBLANKS);
        
        if (doc == NULL) {
            NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
            
            response.error = [NSError errorWithDomain:@"ETPBindingResponseXML" code:1 userInfo:userInfo];
            [delegate operation:self completedWithResponse:response];
        } else {
            if ([delegate respondsToSelector:@selector(operation:receivedSOAPResponse:)]) {
                xmlBufferPtr buf = xmlBufferCreate();
                if (buf) {
                    xmlSaveCtxtPtr ctx = xmlSaveToBuffer(buf, "UTF-8",  XML_SAVE_FORMAT | XML_SAVE_AS_XML);
                    xmlSaveDoc(ctx, doc);
                    xmlSaveFlush(ctx);
                    [delegate operation:self receivedSOAPResponse: [NSString stringWithCString:(char*)xmlBufferContent(buf) encoding:NSUTF8StringEncoding]];
                    xmlSaveClose(ctx);
                    xmlBufferFree(buf);
                }
            }
            cur = xmlDocGetRootElement(doc);
            cur = cur->children;
            for( ; cur != NULL ; cur = cur->next) {
                if(cur->type == XML_ELEMENT_NODE) {
                    
                    if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
                        NSMutableArray *responseBodyParts = [NSMutableArray array];
                        
                        xmlNodePtr bodyNode;
                        for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
                            if(cur->type == XML_ELEMENT_NODE) {
                                if(xmlStrEqual(bodyNode->name, (const xmlChar *) "CreateApplePayTokenResponse")) {
                                    ETP_CreateApplePayTokenResponse *bodyObject = [ETP_CreateApplePayTokenResponse deserializeNode:bodyNode];
                                    //NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
                                    if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
                                }
                                if ((bodyNode->ns != nil && xmlStrEqual(bodyNode->ns->prefix, cur->ns->prefix)) &&
                                    xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault")) {
                                    NSDictionary *exceptions = [NSDictionary dictionaryWithObjectsAndKeys:
                                                                @"ETP_Fault", @"Fault", // Added only to avoid xcode warnings
                                                                nil];
                                    SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode expectedExceptions:exceptions];
                                    //NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
                                    if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
                                }
                            }
                        }
                        
                        response.bodyParts = responseBodyParts;
                    }
                }
            }
            
            xmlFreeDoc(doc);
        }
        
        xmlCleanupParser();
        [delegate operation:self completedWithResponse:response];
    }
}
@end
@implementation ETPBinding_CreateGooglePayToken
@synthesize parameters;
- (id)initWithBinding:(ETPBinding *)aBinding delegate:(id<ETPBindingResponseDelegate>)responseDelegate
parameters:(ETP_CreateGooglePayToken *)aParameters
{
    if((self = [super initWithBinding:aBinding delegate:responseDelegate])) {
        self.parameters = aParameters;
    }
    
    return self;
}
- (void)dealloc
{
    if(parameters != nil) [parameters release];
    
    [super dealloc];
}
- (void)main
{
    [response autorelease];
    response = [ETPBindingResponse new];
    
    ETPBinding_envelope *envelope = [ETPBinding_envelope sharedInstance];
    
    NSMutableDictionary *headerElements = nil;
    headerElements = [NSMutableDictionary dictionary];
    
    NSMutableDictionary *bodyElements = nil;
    NSMutableArray *bodyKeys = nil;
    bodyElements = [NSMutableDictionary dictionary];
    bodyKeys = [NSMutableArray array];
    id obj = nil;
    if(parameters != nil) obj = parameters;
    if(obj != nil) {
        [bodyElements setObject:obj forKey:@"CreateGooglePayToken"];
        [bodyKeys addObject:@"CreateGooglePayToken"];
    }
    
    NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements bodyKeys:bodyKeys];
    operationXMLString = binding.soapSigner ? [binding.soapSigner signRequest:operationXMLString] : operationXMLString;
    
    [delegate operation:self sentSOAPRequest: operationXMLString];
    [binding sendHTTPCallUsingBody:operationXMLString soapAction:@"CreateGooglePayToken" forOperation:self];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    if (responseData != nil && delegate != nil)
    {
        xmlDocPtr doc;
        xmlNodePtr cur;
        
        if (binding.logXMLInOut) {
            NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
        }
#if !TARGET_OS_IPHONE && (!defined(MAC_OS_X_VERSION_10_6) || MAC_OS_X_VERSION_MIN_REQUIRED < MAC_OS_X_VERSION_10_6)
    // Not yet defined in 10.5 libxml
    #define XML_PARSE_COMPACT 0
#endif
    // EricBe: Put explicit conversion since [responseData length] is NSInteger but xmlReadMemory wants int.
    doc = xmlReadMemory([responseData bytes], (int) [responseData length], NULL, NULL, XML_PARSE_COMPACT | XML_PARSE_NOBLANKS);
        
        if (doc == NULL) {
            NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
            
            response.error = [NSError errorWithDomain:@"ETPBindingResponseXML" code:1 userInfo:userInfo];
            [delegate operation:self completedWithResponse:response];
        } else {
            if ([delegate respondsToSelector:@selector(operation:receivedSOAPResponse:)]) {
                xmlBufferPtr buf = xmlBufferCreate();
                if (buf) {
                    xmlSaveCtxtPtr ctx = xmlSaveToBuffer(buf, "UTF-8",  XML_SAVE_FORMAT | XML_SAVE_AS_XML);
                    xmlSaveDoc(ctx, doc);
                    xmlSaveFlush(ctx);
                    [delegate operation:self receivedSOAPResponse: [NSString stringWithCString:(char*)xmlBufferContent(buf) encoding:NSUTF8StringEncoding]];
                    xmlSaveClose(ctx);
                    xmlBufferFree(buf);
                }
            }
            cur = xmlDocGetRootElement(doc);
            cur = cur->children;
            for( ; cur != NULL ; cur = cur->next) {
                if(cur->type == XML_ELEMENT_NODE) {
                    
                    if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
                        NSMutableArray *responseBodyParts = [NSMutableArray array];
                        
                        xmlNodePtr bodyNode;
                        for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
                            if(cur->type == XML_ELEMENT_NODE) {
                                if(xmlStrEqual(bodyNode->name, (const xmlChar *) "CreateGooglePayTokenResponse")) {
                                    ETP_CreateGooglePayTokenResponse *bodyObject = [ETP_CreateGooglePayTokenResponse deserializeNode:bodyNode];
                                    //NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
                                    if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
                                }
                                if ((bodyNode->ns != nil && xmlStrEqual(bodyNode->ns->prefix, cur->ns->prefix)) &&
                                    xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault")) {
                                    NSDictionary *exceptions = [NSDictionary dictionaryWithObjectsAndKeys:
                                                                @"ETP_Fault", @"Fault", // Added only to avoid xcode warnings
                                                                nil];
                                    SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode expectedExceptions:exceptions];
                                    //NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
                                    if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
                                }
                            }
                        }
                        
                        response.bodyParts = responseBodyParts;
                    }
                }
            }
            
            xmlFreeDoc(doc);
        }
        
        xmlCleanupParser();
        [delegate operation:self completedWithResponse:response];
    }
}
@end
@implementation ETPBinding_CreateCustomer
@synthesize parameters;
- (id)initWithBinding:(ETPBinding *)aBinding delegate:(id<ETPBindingResponseDelegate>)responseDelegate
parameters:(ETP_CreateCustomer *)aParameters
{
	if((self = [super initWithBinding:aBinding delegate:responseDelegate])) {
		self.parameters = aParameters;
	}
	
	return self;
}
- (void)dealloc
{
	if(parameters != nil) [parameters release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [ETPBindingResponse new];
	
	ETPBinding_envelope *envelope = [ETPBinding_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	NSMutableArray *bodyKeys = nil;
	bodyElements = [NSMutableDictionary dictionary];
	bodyKeys = [NSMutableArray array];
	id obj = nil;
	if(parameters != nil) obj = parameters;
	if(obj != nil) {
		[bodyElements setObject:obj forKey:@"CreateCustomer"];
		[bodyKeys addObject:@"CreateCustomer"];
	}
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements bodyKeys:bodyKeys];
	operationXMLString = binding.soapSigner ? [binding.soapSigner signRequest:operationXMLString] : operationXMLString;
	
	[delegate operation:self sentSOAPRequest: operationXMLString];
	[binding sendHTTPCallUsingBody:operationXMLString soapAction:@"CreateCustomer" forOperation:self];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	if (responseData != nil && delegate != nil)
	{
		xmlDocPtr doc;
		xmlNodePtr cur;
		
		if (binding.logXMLInOut) {
			NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
		}
#if !TARGET_OS_IPHONE && (!defined(MAC_OS_X_VERSION_10_6) || MAC_OS_X_VERSION_MIN_REQUIRED < MAC_OS_X_VERSION_10_6)
	// Not yet defined in 10.5 libxml
	#define XML_PARSE_COMPACT 0
#endif
    // EricBe: Put explicit conversion since [responseData length] is NSInteger but xmlReadMemory wants int.
	doc = xmlReadMemory([responseData bytes], (int) [responseData length], NULL, NULL, XML_PARSE_COMPACT | XML_PARSE_NOBLANKS);
		
		if (doc == NULL) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
			
			response.error = [NSError errorWithDomain:@"ETPBindingResponseXML" code:1 userInfo:userInfo];
			[delegate operation:self completedWithResponse:response];
		} else {
			if ([delegate respondsToSelector:@selector(operation:receivedSOAPResponse:)]) {
				xmlBufferPtr buf = xmlBufferCreate();
				if (buf) {
					xmlSaveCtxtPtr ctx = xmlSaveToBuffer(buf, "UTF-8",  XML_SAVE_FORMAT | XML_SAVE_AS_XML);
					xmlSaveDoc(ctx, doc);
					xmlSaveFlush(ctx);
					[delegate operation:self receivedSOAPResponse: [NSString stringWithCString:(char*)xmlBufferContent(buf) encoding:NSUTF8StringEncoding]];
					xmlSaveClose(ctx);
					xmlBufferFree(buf);
				}
			}
			cur = xmlDocGetRootElement(doc);
			cur = cur->children;
			for( ; cur != NULL ; cur = cur->next) {
				if(cur->type == XML_ELEMENT_NODE) {
					
					if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
						NSMutableArray *responseBodyParts = [NSMutableArray array];
						
						xmlNodePtr bodyNode;
						for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
							if(cur->type == XML_ELEMENT_NODE) {
								if(xmlStrEqual(bodyNode->name, (const xmlChar *) "CreateCustomerResponse")) {
									ETP_CreateCustomerResponse *bodyObject = [ETP_CreateCustomerResponse deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
								if ((bodyNode->ns != nil && xmlStrEqual(bodyNode->ns->prefix, cur->ns->prefix)) && 
									xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault")) {
                                    NSDictionary *exceptions = [NSDictionary dictionaryWithObjectsAndKeys:
																@"ETP_Fault", @"Fault", // Added only to avoid xcode warnings
                                                                nil];
									SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode expectedExceptions:exceptions];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
							}
						}
						
						response.bodyParts = responseBodyParts;
					}
				}
			}
			
			xmlFreeDoc(doc);
		}
		
		xmlCleanupParser();
		[delegate operation:self completedWithResponse:response];
	}
}
@end
@implementation ETPBinding_AcceptPayment
@synthesize parameters;
- (id)initWithBinding:(ETPBinding *)aBinding delegate:(id<ETPBindingResponseDelegate>)responseDelegate
parameters:(ETP_AcceptPayment *)aParameters
{
	if((self = [super initWithBinding:aBinding delegate:responseDelegate])) {
		self.parameters = aParameters;
	}
	
	return self;
}
- (void)dealloc
{
	if(parameters != nil) [parameters release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [ETPBindingResponse new];
	
	ETPBinding_envelope *envelope = [ETPBinding_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	NSMutableArray *bodyKeys = nil;
	bodyElements = [NSMutableDictionary dictionary];
	bodyKeys = [NSMutableArray array];
	id obj = nil;
	if(parameters != nil) obj = parameters;
	if(obj != nil) {
		[bodyElements setObject:obj forKey:@"AcceptPayment"];
		[bodyKeys addObject:@"AcceptPayment"];
	}
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements bodyKeys:bodyKeys];
	operationXMLString = binding.soapSigner ? [binding.soapSigner signRequest:operationXMLString] : operationXMLString;
	
	//[delegate operation:self sentSOAPRequest: operationXMLString];
	[binding sendHTTPCallUsingBody:operationXMLString soapAction:@"AcceptPayment" forOperation:self];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	if (responseData != nil && delegate != nil)
	{
		xmlDocPtr doc;
		xmlNodePtr cur;
		
		if (binding.logXMLInOut) {
			NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
		}
#if !TARGET_OS_IPHONE && (!defined(MAC_OS_X_VERSION_10_6) || MAC_OS_X_VERSION_MIN_REQUIRED < MAC_OS_X_VERSION_10_6)
	// Not yet defined in 10.5 libxml
	#define XML_PARSE_COMPACT 0
#endif
    // EricBe: Put explicit conversion since [responseData length] is NSInteger but xmlReadMemory wants int.
	doc = xmlReadMemory([responseData bytes], (int) [responseData length], NULL, NULL, XML_PARSE_COMPACT | XML_PARSE_NOBLANKS);
		
		if (doc == NULL) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
			
			response.error = [NSError errorWithDomain:@"ETPBindingResponseXML" code:1 userInfo:userInfo];
			[delegate operation:self completedWithResponse:response];
		} else {
			if ([delegate respondsToSelector:@selector(operation:receivedSOAPResponse:)]) {
				xmlBufferPtr buf = xmlBufferCreate();
				if (buf) {
					xmlSaveCtxtPtr ctx = xmlSaveToBuffer(buf, "UTF-8",  XML_SAVE_FORMAT | XML_SAVE_AS_XML);
					xmlSaveDoc(ctx, doc);
					xmlSaveFlush(ctx);
					[delegate operation:self receivedSOAPResponse: [NSString stringWithCString:(char*)xmlBufferContent(buf) encoding:NSUTF8StringEncoding]];
					xmlSaveClose(ctx);
					xmlBufferFree(buf);
				}
			}
			cur = xmlDocGetRootElement(doc);
			cur = cur->children;
			for( ; cur != NULL ; cur = cur->next) {
				if(cur->type == XML_ELEMENT_NODE) {
					
					if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
						NSMutableArray *responseBodyParts = [NSMutableArray array];
						
						xmlNodePtr bodyNode;
						for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
							if(cur->type == XML_ELEMENT_NODE) {
								if(xmlStrEqual(bodyNode->name, (const xmlChar *) "AcceptPaymentResponse")) {
									ETP_AcceptPaymentResponse *bodyObject = [ETP_AcceptPaymentResponse deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
								if ((bodyNode->ns != nil && xmlStrEqual(bodyNode->ns->prefix, cur->ns->prefix)) && 
									xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault")) {
                                    NSDictionary *exceptions = [NSDictionary dictionaryWithObjectsAndKeys:
																@"ETP_Fault", @"Fault", // Added only to avoid xcode warnings
                                                                nil];
									SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode expectedExceptions:exceptions];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
							}
						}
						
						response.bodyParts = responseBodyParts;
					}
				}
			}
			
			xmlFreeDoc(doc);
		}
		
		xmlCleanupParser();
		[delegate operation:self completedWithResponse:response];
	}
}
@end
@implementation ETPBinding_ManualCallback
@synthesize parameters;
- (id)initWithBinding:(ETPBinding *)aBinding delegate:(id<ETPBindingResponseDelegate>)responseDelegate
parameters:(ETP_ManualCallback *)aParameters
{
	if((self = [super initWithBinding:aBinding delegate:responseDelegate])) {
		self.parameters = aParameters;
	}
	
	return self;
}
- (void)dealloc
{
	if(parameters != nil) [parameters release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [ETPBindingResponse new];
	
	ETPBinding_envelope *envelope = [ETPBinding_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	NSMutableArray *bodyKeys = nil;
	bodyElements = [NSMutableDictionary dictionary];
	bodyKeys = [NSMutableArray array];
	id obj = nil;
	if(parameters != nil) obj = parameters;
	if(obj != nil) {
		[bodyElements setObject:obj forKey:@"ManualCallback"];
		[bodyKeys addObject:@"ManualCallback"];
	}
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements bodyKeys:bodyKeys];
	operationXMLString = binding.soapSigner ? [binding.soapSigner signRequest:operationXMLString] : operationXMLString;
	
	[delegate operation:self sentSOAPRequest: operationXMLString];
	[binding sendHTTPCallUsingBody:operationXMLString soapAction:@"ManualCallback" forOperation:self];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	if (responseData != nil && delegate != nil)
	{
		xmlDocPtr doc;
		xmlNodePtr cur;
		
		if (binding.logXMLInOut) {
			NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
		}
#if !TARGET_OS_IPHONE && (!defined(MAC_OS_X_VERSION_10_6) || MAC_OS_X_VERSION_MIN_REQUIRED < MAC_OS_X_VERSION_10_6)
	// Not yet defined in 10.5 libxml
	#define XML_PARSE_COMPACT 0
#endif
    // EricBe: Put explicit conversion since [responseData length] is NSInteger but xmlReadMemory wants int.
	doc = xmlReadMemory([responseData bytes], (int) [responseData length], NULL, NULL, XML_PARSE_COMPACT | XML_PARSE_NOBLANKS);
		
		if (doc == NULL) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
			
			response.error = [NSError errorWithDomain:@"ETPBindingResponseXML" code:1 userInfo:userInfo];
			[delegate operation:self completedWithResponse:response];
		} else {
			if ([delegate respondsToSelector:@selector(operation:receivedSOAPResponse:)]) {
				xmlBufferPtr buf = xmlBufferCreate();
				if (buf) {
					xmlSaveCtxtPtr ctx = xmlSaveToBuffer(buf, "UTF-8",  XML_SAVE_FORMAT | XML_SAVE_AS_XML);
					xmlSaveDoc(ctx, doc);
					xmlSaveFlush(ctx);
					[delegate operation:self receivedSOAPResponse: [NSString stringWithCString:(char*)xmlBufferContent(buf) encoding:NSUTF8StringEncoding]];
					xmlSaveClose(ctx);
					xmlBufferFree(buf);
				}
			}
			cur = xmlDocGetRootElement(doc);
			cur = cur->children;
			for( ; cur != NULL ; cur = cur->next) {
				if(cur->type == XML_ELEMENT_NODE) {
					
					if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
						NSMutableArray *responseBodyParts = [NSMutableArray array];
						
						xmlNodePtr bodyNode;
						for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
							if(cur->type == XML_ELEMENT_NODE) {
								if(xmlStrEqual(bodyNode->name, (const xmlChar *) "ManualCallbackResponse")) {
									ETP_ManualCallbackResponse *bodyObject = [ETP_ManualCallbackResponse deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
								if ((bodyNode->ns != nil && xmlStrEqual(bodyNode->ns->prefix, cur->ns->prefix)) && 
									xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault")) {
                                    NSDictionary *exceptions = [NSDictionary dictionaryWithObjectsAndKeys:
																@"ETP_Fault", @"Fault", // Added only to avoid xcode warnings
                                                                nil];
									SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode expectedExceptions:exceptions];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
							}
						}
						
						response.bodyParts = responseBodyParts;
					}
				}
			}
			
			xmlFreeDoc(doc);
		}
		
		xmlCleanupParser();
		[delegate operation:self completedWithResponse:response];
	}
}
@end
@implementation ETPBinding_ManualClear
@synthesize parameters;
- (id)initWithBinding:(ETPBinding *)aBinding delegate:(id<ETPBindingResponseDelegate>)responseDelegate
parameters:(ETP_ManualClear *)aParameters
{
	if((self = [super initWithBinding:aBinding delegate:responseDelegate])) {
		self.parameters = aParameters;
	}
	
	return self;
}
- (void)dealloc
{
	if(parameters != nil) [parameters release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [ETPBindingResponse new];
	
	ETPBinding_envelope *envelope = [ETPBinding_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	NSMutableArray *bodyKeys = nil;
	bodyElements = [NSMutableDictionary dictionary];
	bodyKeys = [NSMutableArray array];
	id obj = nil;
	if(parameters != nil) obj = parameters;
	if(obj != nil) {
		[bodyElements setObject:obj forKey:@"ManualClear"];
		[bodyKeys addObject:@"ManualClear"];
	}
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements bodyKeys:bodyKeys];
	operationXMLString = binding.soapSigner ? [binding.soapSigner signRequest:operationXMLString] : operationXMLString;
	
	[delegate operation:self sentSOAPRequest: operationXMLString];
	[binding sendHTTPCallUsingBody:operationXMLString soapAction:@"ManualClear" forOperation:self];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	if (responseData != nil && delegate != nil)
	{
		xmlDocPtr doc;
		xmlNodePtr cur;
		
		if (binding.logXMLInOut) {
			NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
		}
#if !TARGET_OS_IPHONE && (!defined(MAC_OS_X_VERSION_10_6) || MAC_OS_X_VERSION_MIN_REQUIRED < MAC_OS_X_VERSION_10_6)
	// Not yet defined in 10.5 libxml
	#define XML_PARSE_COMPACT 0
#endif
    // EricBe: Put explicit conversion since [responseData length] is NSInteger but xmlReadMemory wants int.
	doc = xmlReadMemory([responseData bytes], (int) [responseData length], NULL, NULL, XML_PARSE_COMPACT | XML_PARSE_NOBLANKS);
		
		if (doc == NULL) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
			
			response.error = [NSError errorWithDomain:@"ETPBindingResponseXML" code:1 userInfo:userInfo];
			[delegate operation:self completedWithResponse:response];
		} else {
			if ([delegate respondsToSelector:@selector(operation:receivedSOAPResponse:)]) {
				xmlBufferPtr buf = xmlBufferCreate();
				if (buf) {
					xmlSaveCtxtPtr ctx = xmlSaveToBuffer(buf, "UTF-8",  XML_SAVE_FORMAT | XML_SAVE_AS_XML);
					xmlSaveDoc(ctx, doc);
					xmlSaveFlush(ctx);
					[delegate operation:self receivedSOAPResponse: [NSString stringWithCString:(char*)xmlBufferContent(buf) encoding:NSUTF8StringEncoding]];
					xmlSaveClose(ctx);
					xmlBufferFree(buf);
				}
			}
			cur = xmlDocGetRootElement(doc);
			cur = cur->children;
			for( ; cur != NULL ; cur = cur->next) {
				if(cur->type == XML_ELEMENT_NODE) {
					
					if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
						NSMutableArray *responseBodyParts = [NSMutableArray array];
						
						xmlNodePtr bodyNode;
						for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
							if(cur->type == XML_ELEMENT_NODE) {
								if(xmlStrEqual(bodyNode->name, (const xmlChar *) "ManualClearResponse")) {
									ETP_ManualClearResponse *bodyObject = [ETP_ManualClearResponse deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
								if ((bodyNode->ns != nil && xmlStrEqual(bodyNode->ns->prefix, cur->ns->prefix)) && 
									xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault")) {
                                    NSDictionary *exceptions = [NSDictionary dictionaryWithObjectsAndKeys:
																@"ETP_Fault", @"Fault", // Added only to avoid xcode warnings
                                                                nil];
									SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode expectedExceptions:exceptions];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
							}
						}
						
						response.bodyParts = responseBodyParts;
					}
				}
			}
			
			xmlFreeDoc(doc);
		}
		
		xmlCleanupParser();
		[delegate operation:self completedWithResponse:response];
	}
}
@end
@implementation ETPBinding_ManualReverse
@synthesize parameters;
- (id)initWithBinding:(ETPBinding *)aBinding delegate:(id<ETPBindingResponseDelegate>)responseDelegate
parameters:(ETP_ManualReverse *)aParameters
{
	if((self = [super initWithBinding:aBinding delegate:responseDelegate])) {
		self.parameters = aParameters;
	}
	
	return self;
}
- (void)dealloc
{
	if(parameters != nil) [parameters release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [ETPBindingResponse new];
	
	ETPBinding_envelope *envelope = [ETPBinding_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	NSMutableArray *bodyKeys = nil;
	bodyElements = [NSMutableDictionary dictionary];
	bodyKeys = [NSMutableArray array];
	id obj = nil;
	if(parameters != nil) obj = parameters;
	if(obj != nil) {
		[bodyElements setObject:obj forKey:@"ManualReverse"];
		[bodyKeys addObject:@"ManualReverse"];
	}
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements bodyKeys:bodyKeys];
	operationXMLString = binding.soapSigner ? [binding.soapSigner signRequest:operationXMLString] : operationXMLString;
	
	[delegate operation:self sentSOAPRequest: operationXMLString];
	[binding sendHTTPCallUsingBody:operationXMLString soapAction:@"ManualReverse" forOperation:self];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	if (responseData != nil && delegate != nil)
	{
		xmlDocPtr doc;
		xmlNodePtr cur;
		
		if (binding.logXMLInOut) {
			NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
		}
#if !TARGET_OS_IPHONE && (!defined(MAC_OS_X_VERSION_10_6) || MAC_OS_X_VERSION_MIN_REQUIRED < MAC_OS_X_VERSION_10_6)
	// Not yet defined in 10.5 libxml
	#define XML_PARSE_COMPACT 0
#endif
    // EricBe: Put explicit conversion since [responseData length] is NSInteger but xmlReadMemory wants int.
	doc = xmlReadMemory([responseData bytes], (int) [responseData length], NULL, NULL, XML_PARSE_COMPACT | XML_PARSE_NOBLANKS);
		
		if (doc == NULL) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
			
			response.error = [NSError errorWithDomain:@"ETPBindingResponseXML" code:1 userInfo:userInfo];
			[delegate operation:self completedWithResponse:response];
		} else {
			if ([delegate respondsToSelector:@selector(operation:receivedSOAPResponse:)]) {
				xmlBufferPtr buf = xmlBufferCreate();
				if (buf) {
					xmlSaveCtxtPtr ctx = xmlSaveToBuffer(buf, "UTF-8",  XML_SAVE_FORMAT | XML_SAVE_AS_XML);
					xmlSaveDoc(ctx, doc);
					xmlSaveFlush(ctx);
					[delegate operation:self receivedSOAPResponse: [NSString stringWithCString:(char*)xmlBufferContent(buf) encoding:NSUTF8StringEncoding]];
					xmlSaveClose(ctx);
					xmlBufferFree(buf);
				}
			}
			cur = xmlDocGetRootElement(doc);
			cur = cur->children;
			for( ; cur != NULL ; cur = cur->next) {
				if(cur->type == XML_ELEMENT_NODE) {
					
					if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
						NSMutableArray *responseBodyParts = [NSMutableArray array];
						
						xmlNodePtr bodyNode;
						for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
							if(cur->type == XML_ELEMENT_NODE) {
								if(xmlStrEqual(bodyNode->name, (const xmlChar *) "ManualReverseResponse")) {
									ETP_ManualReverseResponse *bodyObject = [ETP_ManualReverseResponse deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
								if ((bodyNode->ns != nil && xmlStrEqual(bodyNode->ns->prefix, cur->ns->prefix)) && 
									xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault")) {
                                    NSDictionary *exceptions = [NSDictionary dictionaryWithObjectsAndKeys:
																@"ETP_Fault", @"Fault", // Added only to avoid xcode warnings
                                                                nil];
									SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode expectedExceptions:exceptions];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
							}
						}
						
						response.bodyParts = responseBodyParts;
					}
				}
			}
			
			xmlFreeDoc(doc);
		}
		
		xmlCleanupParser();
		[delegate operation:self completedWithResponse:response];
	}
}
@end
@implementation ETPBinding_ManualCredit
@synthesize parameters;
- (id)initWithBinding:(ETPBinding *)aBinding delegate:(id<ETPBindingResponseDelegate>)responseDelegate
parameters:(ETP_ManualCredit *)aParameters
{
	if((self = [super initWithBinding:aBinding delegate:responseDelegate])) {
		self.parameters = aParameters;
	}
	
	return self;
}
- (void)dealloc
{
	if(parameters != nil) [parameters release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [ETPBindingResponse new];
	
	ETPBinding_envelope *envelope = [ETPBinding_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	NSMutableArray *bodyKeys = nil;
	bodyElements = [NSMutableDictionary dictionary];
	bodyKeys = [NSMutableArray array];
	id obj = nil;
	if(parameters != nil) obj = parameters;
	if(obj != nil) {
		[bodyElements setObject:obj forKey:@"ManualCredit"];
		[bodyKeys addObject:@"ManualCredit"];
	}
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements bodyKeys:bodyKeys];
	operationXMLString = binding.soapSigner ? [binding.soapSigner signRequest:operationXMLString] : operationXMLString;
	
	[delegate operation:self sentSOAPRequest: operationXMLString];
	[binding sendHTTPCallUsingBody:operationXMLString soapAction:@"ManualCredit" forOperation:self];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	if (responseData != nil && delegate != nil)
	{
		xmlDocPtr doc;
		xmlNodePtr cur;
		
		if (binding.logXMLInOut) {
			NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
		}
#if !TARGET_OS_IPHONE && (!defined(MAC_OS_X_VERSION_10_6) || MAC_OS_X_VERSION_MIN_REQUIRED < MAC_OS_X_VERSION_10_6)
	// Not yet defined in 10.5 libxml
	#define XML_PARSE_COMPACT 0
#endif
    // EricBe: Put explicit conversion since [responseData length] is NSInteger but xmlReadMemory wants int.
	doc = xmlReadMemory([responseData bytes], (int) [responseData length], NULL, NULL, XML_PARSE_COMPACT | XML_PARSE_NOBLANKS);
		
		if (doc == NULL) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
			
			response.error = [NSError errorWithDomain:@"ETPBindingResponseXML" code:1 userInfo:userInfo];
			[delegate operation:self completedWithResponse:response];
		} else {
			if ([delegate respondsToSelector:@selector(operation:receivedSOAPResponse:)]) {
				xmlBufferPtr buf = xmlBufferCreate();
				if (buf) {
					xmlSaveCtxtPtr ctx = xmlSaveToBuffer(buf, "UTF-8",  XML_SAVE_FORMAT | XML_SAVE_AS_XML);
					xmlSaveDoc(ctx, doc);
					xmlSaveFlush(ctx);
					[delegate operation:self receivedSOAPResponse: [NSString stringWithCString:(char*)xmlBufferContent(buf) encoding:NSUTF8StringEncoding]];
					xmlSaveClose(ctx);
					xmlBufferFree(buf);
				}
			}
			cur = xmlDocGetRootElement(doc);
			cur = cur->children;
			for( ; cur != NULL ; cur = cur->next) {
				if(cur->type == XML_ELEMENT_NODE) {
					
					if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
						NSMutableArray *responseBodyParts = [NSMutableArray array];
						
						xmlNodePtr bodyNode;
						for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
							if(cur->type == XML_ELEMENT_NODE) {
								if(xmlStrEqual(bodyNode->name, (const xmlChar *) "ManualCreditResponse")) {
									ETP_ManualCreditResponse *bodyObject = [ETP_ManualCreditResponse deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
								if ((bodyNode->ns != nil && xmlStrEqual(bodyNode->ns->prefix, cur->ns->prefix)) && 
									xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault")) {
                                    NSDictionary *exceptions = [NSDictionary dictionaryWithObjectsAndKeys:
																@"ETP_Fault", @"Fault", // Added only to avoid xcode warnings
                                                                nil];
									SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode expectedExceptions:exceptions];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
							}
						}
						
						response.bodyParts = responseBodyParts;
					}
				}
			}
			
			xmlFreeDoc(doc);
		}
		
		xmlCleanupParser();
		[delegate operation:self completedWithResponse:response];
	}
}
@end
@implementation ETPBinding_AcceptWithdraw
@synthesize parameters;
- (id)initWithBinding:(ETPBinding *)aBinding delegate:(id<ETPBindingResponseDelegate>)responseDelegate
parameters:(ETP_AcceptWithdraw *)aParameters
{
	if((self = [super initWithBinding:aBinding delegate:responseDelegate])) {
		self.parameters = aParameters;
	}
	
	return self;
}
- (void)dealloc
{
	if(parameters != nil) [parameters release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [ETPBindingResponse new];
	
	ETPBinding_envelope *envelope = [ETPBinding_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	NSMutableArray *bodyKeys = nil;
	bodyElements = [NSMutableDictionary dictionary];
	bodyKeys = [NSMutableArray array];
	id obj = nil;
	if(parameters != nil) obj = parameters;
	if(obj != nil) {
		[bodyElements setObject:obj forKey:@"AcceptWithdraw"];
		[bodyKeys addObject:@"AcceptWithdraw"];
	}
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements bodyKeys:bodyKeys];
	operationXMLString = binding.soapSigner ? [binding.soapSigner signRequest:operationXMLString] : operationXMLString;
	
	[delegate operation:self sentSOAPRequest: operationXMLString];
	[binding sendHTTPCallUsingBody:operationXMLString soapAction:@"AcceptWithdraw" forOperation:self];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	if (responseData != nil && delegate != nil)
	{
		xmlDocPtr doc;
		xmlNodePtr cur;
		
		if (binding.logXMLInOut) {
			NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
		}
#if !TARGET_OS_IPHONE && (!defined(MAC_OS_X_VERSION_10_6) || MAC_OS_X_VERSION_MIN_REQUIRED < MAC_OS_X_VERSION_10_6)
	// Not yet defined in 10.5 libxml
	#define XML_PARSE_COMPACT 0
#endif
    // EricBe: Put explicit conversion since [responseData length] is NSInteger but xmlReadMemory wants int.
	doc = xmlReadMemory([responseData bytes], (int) [responseData length], NULL, NULL, XML_PARSE_COMPACT | XML_PARSE_NOBLANKS);
		
		if (doc == NULL) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
			
			response.error = [NSError errorWithDomain:@"ETPBindingResponseXML" code:1 userInfo:userInfo];
			[delegate operation:self completedWithResponse:response];
		} else {
			if ([delegate respondsToSelector:@selector(operation:receivedSOAPResponse:)]) {
				xmlBufferPtr buf = xmlBufferCreate();
				if (buf) {
					xmlSaveCtxtPtr ctx = xmlSaveToBuffer(buf, "UTF-8",  XML_SAVE_FORMAT | XML_SAVE_AS_XML);
					xmlSaveDoc(ctx, doc);
					xmlSaveFlush(ctx);
					[delegate operation:self receivedSOAPResponse: [NSString stringWithCString:(char*)xmlBufferContent(buf) encoding:NSUTF8StringEncoding]];
					xmlSaveClose(ctx);
					xmlBufferFree(buf);
				}
			}
			cur = xmlDocGetRootElement(doc);
			cur = cur->children;
			for( ; cur != NULL ; cur = cur->next) {
				if(cur->type == XML_ELEMENT_NODE) {
					
					if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
						NSMutableArray *responseBodyParts = [NSMutableArray array];
						
						xmlNodePtr bodyNode;
						for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
							if(cur->type == XML_ELEMENT_NODE) {
								if(xmlStrEqual(bodyNode->name, (const xmlChar *) "AcceptWithdrawResponse")) {
									ETP_AcceptWithdrawResponse *bodyObject = [ETP_AcceptWithdrawResponse deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
								if ((bodyNode->ns != nil && xmlStrEqual(bodyNode->ns->prefix, cur->ns->prefix)) && 
									xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault")) {
                                    NSDictionary *exceptions = [NSDictionary dictionaryWithObjectsAndKeys:
																@"ETP_Fault", @"Fault", // Added only to avoid xcode warnings
                                                                nil];
									SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode expectedExceptions:exceptions];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
							}
						}
						
						response.bodyParts = responseBodyParts;
					}
				}
			}
			
			xmlFreeDoc(doc);
		}
		
		xmlCleanupParser();
		[delegate operation:self completedWithResponse:response];
	}
}
@end
@implementation ETPBinding_TransactionStatus
@synthesize parameters;
- (id)initWithBinding:(ETPBinding *)aBinding delegate:(id<ETPBindingResponseDelegate>)responseDelegate
parameters:(ETP_TransactionStatus *)aParameters
{
	if((self = [super initWithBinding:aBinding delegate:responseDelegate])) {
		self.parameters = aParameters;
	}
	
	return self;
}
- (void)dealloc
{
	if(parameters != nil) [parameters release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [ETPBindingResponse new];
	
	ETPBinding_envelope *envelope = [ETPBinding_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	NSMutableArray *bodyKeys = nil;
	bodyElements = [NSMutableDictionary dictionary];
	bodyKeys = [NSMutableArray array];
	id obj = nil;
	if(parameters != nil) obj = parameters;
	if(obj != nil) {
		[bodyElements setObject:obj forKey:@"TransactionStatus"];
		[bodyKeys addObject:@"TransactionStatus"];
	}
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements bodyKeys:bodyKeys];
	operationXMLString = binding.soapSigner ? [binding.soapSigner signRequest:operationXMLString] : operationXMLString;
	
	[delegate operation:self sentSOAPRequest: operationXMLString];
	[binding sendHTTPCallUsingBody:operationXMLString soapAction:@"TransactionStatus" forOperation:self];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	if (responseData != nil && delegate != nil)
	{
		xmlDocPtr doc;
		xmlNodePtr cur;
		
		if (binding.logXMLInOut) {
			NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
		}
#if !TARGET_OS_IPHONE && (!defined(MAC_OS_X_VERSION_10_6) || MAC_OS_X_VERSION_MIN_REQUIRED < MAC_OS_X_VERSION_10_6)
	// Not yet defined in 10.5 libxml
	#define XML_PARSE_COMPACT 0
#endif
    // EricBe: Put explicit conversion since [responseData length] is NSInteger but xmlReadMemory wants int.
	doc = xmlReadMemory([responseData bytes], (int) [responseData length], NULL, NULL, XML_PARSE_COMPACT | XML_PARSE_NOBLANKS);
		
		if (doc == NULL) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
			
			response.error = [NSError errorWithDomain:@"ETPBindingResponseXML" code:1 userInfo:userInfo];
			[delegate operation:self completedWithResponse:response];
		} else {
			if ([delegate respondsToSelector:@selector(operation:receivedSOAPResponse:)]) {
				xmlBufferPtr buf = xmlBufferCreate();
				if (buf) {
					xmlSaveCtxtPtr ctx = xmlSaveToBuffer(buf, "UTF-8",  XML_SAVE_FORMAT | XML_SAVE_AS_XML);
					xmlSaveDoc(ctx, doc);
					xmlSaveFlush(ctx);
					[delegate operation:self receivedSOAPResponse: [NSString stringWithCString:(char*)xmlBufferContent(buf) encoding:NSUTF8StringEncoding]];
					xmlSaveClose(ctx);
					xmlBufferFree(buf);
				}
			}
			cur = xmlDocGetRootElement(doc);
			cur = cur->children;
			for( ; cur != NULL ; cur = cur->next) {
				if(cur->type == XML_ELEMENT_NODE) {
					
					if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
						NSMutableArray *responseBodyParts = [NSMutableArray array];
						
						xmlNodePtr bodyNode;
						for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
							if(cur->type == XML_ELEMENT_NODE) {
								if(xmlStrEqual(bodyNode->name, (const xmlChar *) "TransactionStatusResponse")) {
									ETP_TransactionStatusResponse *bodyObject = [ETP_TransactionStatusResponse deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
								if ((bodyNode->ns != nil && xmlStrEqual(bodyNode->ns->prefix, cur->ns->prefix)) && 
									xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault")) {
                                    NSDictionary *exceptions = [NSDictionary dictionaryWithObjectsAndKeys:
																@"ETP_Fault", @"Fault", // Added only to avoid xcode warnings
                                                                nil];
									SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode expectedExceptions:exceptions];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
							}
						}
						
						response.bodyParts = responseBodyParts;
					}
				}
			}
			
			xmlFreeDoc(doc);
		}
		
		xmlCleanupParser();
		[delegate operation:self completedWithResponse:response];
	}
}
@end
@implementation ETPBinding_TransactionConfirmation
@synthesize parameters;
- (id)initWithBinding:(ETPBinding *)aBinding delegate:(id<ETPBindingResponseDelegate>)responseDelegate
parameters:(ETP_TransactionConfirmation *)aParameters
{
	if((self = [super initWithBinding:aBinding delegate:responseDelegate])) {
		self.parameters = aParameters;
	}
	
	return self;
}
- (void)dealloc
{
	if(parameters != nil) [parameters release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [ETPBindingResponse new];
	
	ETPBinding_envelope *envelope = [ETPBinding_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	NSMutableArray *bodyKeys = nil;
	bodyElements = [NSMutableDictionary dictionary];
	bodyKeys = [NSMutableArray array];
	id obj = nil;
	if(parameters != nil) obj = parameters;
	if(obj != nil) {
		[bodyElements setObject:obj forKey:@"TransactionConfirmation"];
		[bodyKeys addObject:@"TransactionConfirmation"];
	}
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements bodyKeys:bodyKeys];
	operationXMLString = binding.soapSigner ? [binding.soapSigner signRequest:operationXMLString] : operationXMLString;
	
	[delegate operation:self sentSOAPRequest: operationXMLString];
	[binding sendHTTPCallUsingBody:operationXMLString soapAction:@"TransactionConfirmation" forOperation:self];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	if (responseData != nil && delegate != nil)
	{
		xmlDocPtr doc;
		xmlNodePtr cur;
		
		if (binding.logXMLInOut) {
			NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
		}
#if !TARGET_OS_IPHONE && (!defined(MAC_OS_X_VERSION_10_6) || MAC_OS_X_VERSION_MIN_REQUIRED < MAC_OS_X_VERSION_10_6)
	// Not yet defined in 10.5 libxml
	#define XML_PARSE_COMPACT 0
#endif
    // EricBe: Put explicit conversion since [responseData length] is NSInteger but xmlReadMemory wants int.
	doc = xmlReadMemory([responseData bytes], (int) [responseData length], NULL, NULL, XML_PARSE_COMPACT | XML_PARSE_NOBLANKS);
		
		if (doc == NULL) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
			
			response.error = [NSError errorWithDomain:@"ETPBindingResponseXML" code:1 userInfo:userInfo];
			[delegate operation:self completedWithResponse:response];
		} else {
			if ([delegate respondsToSelector:@selector(operation:receivedSOAPResponse:)]) {
				xmlBufferPtr buf = xmlBufferCreate();
				if (buf) {
					xmlSaveCtxtPtr ctx = xmlSaveToBuffer(buf, "UTF-8",  XML_SAVE_FORMAT | XML_SAVE_AS_XML);
					xmlSaveDoc(ctx, doc);
					xmlSaveFlush(ctx);
					[delegate operation:self receivedSOAPResponse: [NSString stringWithCString:(char*)xmlBufferContent(buf) encoding:NSUTF8StringEncoding]];
					xmlSaveClose(ctx);
					xmlBufferFree(buf);
				}
			}
			cur = xmlDocGetRootElement(doc);
			cur = cur->children;
			for( ; cur != NULL ; cur = cur->next) {
				if(cur->type == XML_ELEMENT_NODE) {
					
					if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
						NSMutableArray *responseBodyParts = [NSMutableArray array];
						
						xmlNodePtr bodyNode;
						for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
							if(cur->type == XML_ELEMENT_NODE) {
								if(xmlStrEqual(bodyNode->name, (const xmlChar *) "TransactionConfirmationResponse")) {
									ETP_TransactionConfirmationResponse *bodyObject = [ETP_TransactionConfirmationResponse deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
								if ((bodyNode->ns != nil && xmlStrEqual(bodyNode->ns->prefix, cur->ns->prefix)) && 
									xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault")) {
                                    NSDictionary *exceptions = [NSDictionary dictionaryWithObjectsAndKeys:
																@"ETP_Fault", @"Fault", // Added only to avoid xcode warnings
                                                                nil];
									SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode expectedExceptions:exceptions];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
							}
						}
						
						response.bodyParts = responseBodyParts;
					}
				}
			}
			
			xmlFreeDoc(doc);
		}
		
		xmlCleanupParser();
		[delegate operation:self completedWithResponse:response];
	}
}
@end
@implementation ETPBinding_TransactionHistory
@synthesize parameters;
- (id)initWithBinding:(ETPBinding *)aBinding delegate:(id<ETPBindingResponseDelegate>)responseDelegate
parameters:(ETP_TransactionHistory *)aParameters
{
	if((self = [super initWithBinding:aBinding delegate:responseDelegate])) {
		self.parameters = aParameters;
	}
	
	return self;
}
- (void)dealloc
{
	if(parameters != nil) [parameters release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [ETPBindingResponse new];
	
	ETPBinding_envelope *envelope = [ETPBinding_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	NSMutableArray *bodyKeys = nil;
	bodyElements = [NSMutableDictionary dictionary];
	bodyKeys = [NSMutableArray array];
	id obj = nil;
	if(parameters != nil) obj = parameters;
	if(obj != nil) {
		[bodyElements setObject:obj forKey:@"TransactionHistory"];
		[bodyKeys addObject:@"TransactionHistory"];
	}
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements bodyKeys:bodyKeys];
	operationXMLString = binding.soapSigner ? [binding.soapSigner signRequest:operationXMLString] : operationXMLString;
	
	[delegate operation:self sentSOAPRequest: operationXMLString];
	[binding sendHTTPCallUsingBody:operationXMLString soapAction:@"TransactionHistory" forOperation:self];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	if (responseData != nil && delegate != nil)
	{
		xmlDocPtr doc;
		xmlNodePtr cur;
		
		if (binding.logXMLInOut) {
			NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
		}
#if !TARGET_OS_IPHONE && (!defined(MAC_OS_X_VERSION_10_6) || MAC_OS_X_VERSION_MIN_REQUIRED < MAC_OS_X_VERSION_10_6)
	// Not yet defined in 10.5 libxml
	#define XML_PARSE_COMPACT 0
#endif
    // EricBe: Put explicit conversion since [responseData length] is NSInteger but xmlReadMemory wants int.
	doc = xmlReadMemory([responseData bytes], (int) [responseData length], NULL, NULL, XML_PARSE_COMPACT | XML_PARSE_NOBLANKS);
		
		if (doc == NULL) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
			
			response.error = [NSError errorWithDomain:@"ETPBindingResponseXML" code:1 userInfo:userInfo];
			[delegate operation:self completedWithResponse:response];
		} else {
			if ([delegate respondsToSelector:@selector(operation:receivedSOAPResponse:)]) {
				xmlBufferPtr buf = xmlBufferCreate();
				if (buf) {
					xmlSaveCtxtPtr ctx = xmlSaveToBuffer(buf, "UTF-8",  XML_SAVE_FORMAT | XML_SAVE_AS_XML);
					xmlSaveDoc(ctx, doc);
					xmlSaveFlush(ctx);
					[delegate operation:self receivedSOAPResponse: [NSString stringWithCString:(char*)xmlBufferContent(buf) encoding:NSUTF8StringEncoding]];
					xmlSaveClose(ctx);
					xmlBufferFree(buf);
				}
			}
			cur = xmlDocGetRootElement(doc);
			cur = cur->children;
			for( ; cur != NULL ; cur = cur->next) {
				if(cur->type == XML_ELEMENT_NODE) {
					
					if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
						NSMutableArray *responseBodyParts = [NSMutableArray array];
						
						xmlNodePtr bodyNode;
						for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
							if(cur->type == XML_ELEMENT_NODE) {
								if(xmlStrEqual(bodyNode->name, (const xmlChar *) "TransactionHistoryResponse")) {
									ETP_TransactionHistoryResponse *bodyObject = [ETP_TransactionHistoryResponse deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
								if ((bodyNode->ns != nil && xmlStrEqual(bodyNode->ns->prefix, cur->ns->prefix)) && 
									xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault")) {
                                    NSDictionary *exceptions = [NSDictionary dictionaryWithObjectsAndKeys:
																@"ETP_Fault", @"Fault", // Added only to avoid xcode warnings
                                                                nil];
									SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode expectedExceptions:exceptions];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
							}
						}
						
						response.bodyParts = responseBodyParts;
					}
				}
			}
			
			xmlFreeDoc(doc);
		}
		
		xmlCleanupParser();
		[delegate operation:self completedWithResponse:response];
	}
}
@end
@implementation ETPBinding_ListNotCleared
@synthesize parameters;
- (id)initWithBinding:(ETPBinding *)aBinding delegate:(id<ETPBindingResponseDelegate>)responseDelegate
parameters:(ETP_ListNotCleared *)aParameters
{
	if((self = [super initWithBinding:aBinding delegate:responseDelegate])) {
		self.parameters = aParameters;
	}
	
	return self;
}
- (void)dealloc
{
	if(parameters != nil) [parameters release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [ETPBindingResponse new];
	
	ETPBinding_envelope *envelope = [ETPBinding_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	NSMutableArray *bodyKeys = nil;
	bodyElements = [NSMutableDictionary dictionary];
	bodyKeys = [NSMutableArray array];
	id obj = nil;
	if(parameters != nil) obj = parameters;
	if(obj != nil) {
		[bodyElements setObject:obj forKey:@"ListNotCleared"];
		[bodyKeys addObject:@"ListNotCleared"];
	}
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements bodyKeys:bodyKeys];
	operationXMLString = binding.soapSigner ? [binding.soapSigner signRequest:operationXMLString] : operationXMLString;
	
	[delegate operation:self sentSOAPRequest: operationXMLString];
	[binding sendHTTPCallUsingBody:operationXMLString soapAction:@"ListNotCleared" forOperation:self];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	if (responseData != nil && delegate != nil)
	{
		xmlDocPtr doc;
		xmlNodePtr cur;
		
		if (binding.logXMLInOut) {
			NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
		}
#if !TARGET_OS_IPHONE && (!defined(MAC_OS_X_VERSION_10_6) || MAC_OS_X_VERSION_MIN_REQUIRED < MAC_OS_X_VERSION_10_6)
	// Not yet defined in 10.5 libxml
	#define XML_PARSE_COMPACT 0
#endif
    // EricBe: Put explicit conversion since [responseData length] is NSInteger but xmlReadMemory wants int.
	doc = xmlReadMemory([responseData bytes], (int) [responseData length], NULL, NULL, XML_PARSE_COMPACT | XML_PARSE_NOBLANKS);
		
		if (doc == NULL) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
			
			response.error = [NSError errorWithDomain:@"ETPBindingResponseXML" code:1 userInfo:userInfo];
			[delegate operation:self completedWithResponse:response];
		} else {
			if ([delegate respondsToSelector:@selector(operation:receivedSOAPResponse:)]) {
				xmlBufferPtr buf = xmlBufferCreate();
				if (buf) {
					xmlSaveCtxtPtr ctx = xmlSaveToBuffer(buf, "UTF-8",  XML_SAVE_FORMAT | XML_SAVE_AS_XML);
					xmlSaveDoc(ctx, doc);
					xmlSaveFlush(ctx);
					[delegate operation:self receivedSOAPResponse: [NSString stringWithCString:(char*)xmlBufferContent(buf) encoding:NSUTF8StringEncoding]];
					xmlSaveClose(ctx);
					xmlBufferFree(buf);
				}
			}
			cur = xmlDocGetRootElement(doc);
			cur = cur->children;
			for( ; cur != NULL ; cur = cur->next) {
				if(cur->type == XML_ELEMENT_NODE) {
					
					if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
						NSMutableArray *responseBodyParts = [NSMutableArray array];
						
						xmlNodePtr bodyNode;
						for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
							if(cur->type == XML_ELEMENT_NODE) {
								if(xmlStrEqual(bodyNode->name, (const xmlChar *) "ListNotClearedResponse")) {
									ETP_ListNotClearedResponse *bodyObject = [ETP_ListNotClearedResponse deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
								if ((bodyNode->ns != nil && xmlStrEqual(bodyNode->ns->prefix, cur->ns->prefix)) && 
									xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault")) {
                                    NSDictionary *exceptions = [NSDictionary dictionaryWithObjectsAndKeys:
																@"ETP_Fault", @"Fault", // Added only to avoid xcode warnings
                                                                nil];
									SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode expectedExceptions:exceptions];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
							}
						}
						
						response.bodyParts = responseBodyParts;
					}
				}
			}
			
			xmlFreeDoc(doc);
		}
		
		xmlCleanupParser();
		[delegate operation:self completedWithResponse:response];
	}
}
@end
@implementation ETPBinding_ListPaymentMethods
@synthesize parameters;
- (id)initWithBinding:(ETPBinding *)aBinding delegate:(id<ETPBindingResponseDelegate>)responseDelegate
parameters:(ETP_ListPaymentMethods *)aParameters
{
	if((self = [super initWithBinding:aBinding delegate:responseDelegate])) {
		self.parameters = aParameters;
	}
	
	return self;
}
- (void)dealloc
{
	if(parameters != nil) [parameters release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [ETPBindingResponse new];
	
	ETPBinding_envelope *envelope = [ETPBinding_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	NSMutableArray *bodyKeys = nil;
	bodyElements = [NSMutableDictionary dictionary];
	bodyKeys = [NSMutableArray array];
	id obj = nil;
	if(parameters != nil) obj = parameters;
	if(obj != nil) {
		[bodyElements setObject:obj forKey:@"ListPaymentMethods"];
		[bodyKeys addObject:@"ListPaymentMethods"];
	}
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements bodyKeys:bodyKeys];
	operationXMLString = binding.soapSigner ? [binding.soapSigner signRequest:operationXMLString] : operationXMLString;
	
	[delegate operation:self sentSOAPRequest: operationXMLString];
	[binding sendHTTPCallUsingBody:operationXMLString soapAction:@"ListPaymentMethods" forOperation:self];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	if (responseData != nil && delegate != nil)
	{
		xmlDocPtr doc;
		xmlNodePtr cur;
		
		if (binding.logXMLInOut) {
			NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
		}
#if !TARGET_OS_IPHONE && (!defined(MAC_OS_X_VERSION_10_6) || MAC_OS_X_VERSION_MIN_REQUIRED < MAC_OS_X_VERSION_10_6)
	// Not yet defined in 10.5 libxml
	#define XML_PARSE_COMPACT 0
#endif
    // EricBe: Put explicit conversion since [responseData length] is NSInteger but xmlReadMemory wants int.
	doc = xmlReadMemory([responseData bytes], (int) [responseData length], NULL, NULL, XML_PARSE_COMPACT | XML_PARSE_NOBLANKS);
		
		if (doc == NULL) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
			
			response.error = [NSError errorWithDomain:@"ETPBindingResponseXML" code:1 userInfo:userInfo];
			[delegate operation:self completedWithResponse:response];
		} else {
			if ([delegate respondsToSelector:@selector(operation:receivedSOAPResponse:)]) {
				xmlBufferPtr buf = xmlBufferCreate();
				if (buf) {
					xmlSaveCtxtPtr ctx = xmlSaveToBuffer(buf, "UTF-8",  XML_SAVE_FORMAT | XML_SAVE_AS_XML);
					xmlSaveDoc(ctx, doc);
					xmlSaveFlush(ctx);
					[delegate operation:self receivedSOAPResponse: [NSString stringWithCString:(char*)xmlBufferContent(buf) encoding:NSUTF8StringEncoding]];
					xmlSaveClose(ctx);
					xmlBufferFree(buf);
				}
			}
			cur = xmlDocGetRootElement(doc);
			cur = cur->children;
			for( ; cur != NULL ; cur = cur->next) {
				if(cur->type == XML_ELEMENT_NODE) {
					
					if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
						NSMutableArray *responseBodyParts = [NSMutableArray array];
						
						xmlNodePtr bodyNode;
						for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
							if(cur->type == XML_ELEMENT_NODE) {
								if(xmlStrEqual(bodyNode->name, (const xmlChar *) "ListPaymentMethodsResponse")) {
									ETP_ListPaymentMethodsResponse *bodyObject = [ETP_ListPaymentMethodsResponse deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
								if ((bodyNode->ns != nil && xmlStrEqual(bodyNode->ns->prefix, cur->ns->prefix)) && 
									xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault")) {
                                    NSDictionary *exceptions = [NSDictionary dictionaryWithObjectsAndKeys:
																@"ETP_Fault", @"Fault", // Added only to avoid xcode warnings
                                                                nil];
									SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode expectedExceptions:exceptions];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
							}
						}
						
						response.bodyParts = responseBodyParts;
					}
				}
			}
			
			xmlFreeDoc(doc);
		}
		
		xmlCleanupParser();
		[delegate operation:self completedWithResponse:response];
	}
}
@end
@implementation ETPBinding_CreateProfile
@synthesize parameters;
- (id)initWithBinding:(ETPBinding *)aBinding delegate:(id<ETPBindingResponseDelegate>)responseDelegate
parameters:(ETP_CreateProfile *)aParameters
{
	if((self = [super initWithBinding:aBinding delegate:responseDelegate])) {
		self.parameters = aParameters;
	}
	
	return self;
}
- (void)dealloc
{
	if(parameters != nil) [parameters release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [ETPBindingResponse new];
	
	ETPBinding_envelope *envelope = [ETPBinding_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	NSMutableArray *bodyKeys = nil;
	bodyElements = [NSMutableDictionary dictionary];
	bodyKeys = [NSMutableArray array];
	id obj = nil;
	if(parameters != nil) obj = parameters;
	if(obj != nil) {
		[bodyElements setObject:obj forKey:@"CreateProfile"];
		[bodyKeys addObject:@"CreateProfile"];
	}
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements bodyKeys:bodyKeys];
	operationXMLString = binding.soapSigner ? [binding.soapSigner signRequest:operationXMLString] : operationXMLString;
	
	[delegate operation:self sentSOAPRequest: operationXMLString];
	[binding sendHTTPCallUsingBody:operationXMLString soapAction:@"CreateProfile" forOperation:self];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	if (responseData != nil && delegate != nil)
	{
		xmlDocPtr doc;
		xmlNodePtr cur;
		
		if (binding.logXMLInOut) {
			NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
		}
#if !TARGET_OS_IPHONE && (!defined(MAC_OS_X_VERSION_10_6) || MAC_OS_X_VERSION_MIN_REQUIRED < MAC_OS_X_VERSION_10_6)
	// Not yet defined in 10.5 libxml
	#define XML_PARSE_COMPACT 0
#endif
    // EricBe: Put explicit conversion since [responseData length] is NSInteger but xmlReadMemory wants int.
	doc = xmlReadMemory([responseData bytes], (int) [responseData length], NULL, NULL, XML_PARSE_COMPACT | XML_PARSE_NOBLANKS);
		
		if (doc == NULL) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
			
			response.error = [NSError errorWithDomain:@"ETPBindingResponseXML" code:1 userInfo:userInfo];
			[delegate operation:self completedWithResponse:response];
		} else {
			if ([delegate respondsToSelector:@selector(operation:receivedSOAPResponse:)]) {
				xmlBufferPtr buf = xmlBufferCreate();
				if (buf) {
					xmlSaveCtxtPtr ctx = xmlSaveToBuffer(buf, "UTF-8",  XML_SAVE_FORMAT | XML_SAVE_AS_XML);
					xmlSaveDoc(ctx, doc);
					xmlSaveFlush(ctx);
					[delegate operation:self receivedSOAPResponse: [NSString stringWithCString:(char*)xmlBufferContent(buf) encoding:NSUTF8StringEncoding]];
					xmlSaveClose(ctx);
					xmlBufferFree(buf);
				}
			}
			cur = xmlDocGetRootElement(doc);
			cur = cur->children;
			for( ; cur != NULL ; cur = cur->next) {
				if(cur->type == XML_ELEMENT_NODE) {
					
					if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
						NSMutableArray *responseBodyParts = [NSMutableArray array];
						
						xmlNodePtr bodyNode;
						for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
							if(cur->type == XML_ELEMENT_NODE) {
								if(xmlStrEqual(bodyNode->name, (const xmlChar *) "CreateProfileResponse")) {
									ETP_CreateProfileResponse *bodyObject = [ETP_CreateProfileResponse deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
								if ((bodyNode->ns != nil && xmlStrEqual(bodyNode->ns->prefix, cur->ns->prefix)) && 
									xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault")) {
                                    NSDictionary *exceptions = [NSDictionary dictionaryWithObjectsAndKeys:
																@"ETP_Fault", @"Fault", // Added only to avoid xcode warnings
                                                                nil];
									SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode expectedExceptions:exceptions];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
							}
						}
						
						response.bodyParts = responseBodyParts;
					}
				}
			}
			
			xmlFreeDoc(doc);
		}
		
		xmlCleanupParser();
		[delegate operation:self completedWithResponse:response];
	}
}
@end
@implementation ETPBinding_ListProfiles
@synthesize parameters;
- (id)initWithBinding:(ETPBinding *)aBinding delegate:(id<ETPBindingResponseDelegate>)responseDelegate
parameters:(ETP_ListProfiles *)aParameters
{
	if((self = [super initWithBinding:aBinding delegate:responseDelegate])) {
		self.parameters = aParameters;
	}
	
	return self;
}
- (void)dealloc
{
	if(parameters != nil) [parameters release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [ETPBindingResponse new];
	
	ETPBinding_envelope *envelope = [ETPBinding_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	NSMutableArray *bodyKeys = nil;
	bodyElements = [NSMutableDictionary dictionary];
	bodyKeys = [NSMutableArray array];
	id obj = nil;
	if(parameters != nil) obj = parameters;
	if(obj != nil) {
		[bodyElements setObject:obj forKey:@"ListProfiles"];
		[bodyKeys addObject:@"ListProfiles"];
	}
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements bodyKeys:bodyKeys];
	operationXMLString = binding.soapSigner ? [binding.soapSigner signRequest:operationXMLString] : operationXMLString;
	
	[delegate operation:self sentSOAPRequest: operationXMLString];
	[binding sendHTTPCallUsingBody:operationXMLString soapAction:@"ListProfiles" forOperation:self];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	if (responseData != nil && delegate != nil)
	{
		xmlDocPtr doc;
		xmlNodePtr cur;
		
		if (binding.logXMLInOut) {
			NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
		}
#if !TARGET_OS_IPHONE && (!defined(MAC_OS_X_VERSION_10_6) || MAC_OS_X_VERSION_MIN_REQUIRED < MAC_OS_X_VERSION_10_6)
	// Not yet defined in 10.5 libxml
	#define XML_PARSE_COMPACT 0
#endif
    // EricBe: Put explicit conversion since [responseData length] is NSInteger but xmlReadMemory wants int.
	doc = xmlReadMemory([responseData bytes], (int) [responseData length], NULL, NULL, XML_PARSE_COMPACT | XML_PARSE_NOBLANKS);
		
		if (doc == NULL) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
			
			response.error = [NSError errorWithDomain:@"ETPBindingResponseXML" code:1 userInfo:userInfo];
			[delegate operation:self completedWithResponse:response];
		} else {
			if ([delegate respondsToSelector:@selector(operation:receivedSOAPResponse:)]) {
				xmlBufferPtr buf = xmlBufferCreate();
				if (buf) {
					xmlSaveCtxtPtr ctx = xmlSaveToBuffer(buf, "UTF-8",  XML_SAVE_FORMAT | XML_SAVE_AS_XML);
					xmlSaveDoc(ctx, doc);
					xmlSaveFlush(ctx);
					[delegate operation:self receivedSOAPResponse: [NSString stringWithCString:(char*)xmlBufferContent(buf) encoding:NSUTF8StringEncoding]];
					xmlSaveClose(ctx);
					xmlBufferFree(buf);
				}
			}
			cur = xmlDocGetRootElement(doc);
			cur = cur->children;
			for( ; cur != NULL ; cur = cur->next) {
				if(cur->type == XML_ELEMENT_NODE) {
					
					if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
						NSMutableArray *responseBodyParts = [NSMutableArray array];
						
						xmlNodePtr bodyNode;
						for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
							if(cur->type == XML_ELEMENT_NODE) {
								if(xmlStrEqual(bodyNode->name, (const xmlChar *) "ListProfilesResponse")) {
									ETP_ListProfilesResponse *bodyObject = [ETP_ListProfilesResponse deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
								if ((bodyNode->ns != nil && xmlStrEqual(bodyNode->ns->prefix, cur->ns->prefix)) && 
									xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault")) {
                                    NSDictionary *exceptions = [NSDictionary dictionaryWithObjectsAndKeys:
																@"ETP_Fault", @"Fault", // Added only to avoid xcode warnings
                                                                nil];
									SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode expectedExceptions:exceptions];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
							}
						}
						
						response.bodyParts = responseBodyParts;
					}
				}
			}
			
			xmlFreeDoc(doc);
		}
		
		xmlCleanupParser();
		[delegate operation:self completedWithResponse:response];
	}
}
@end
@implementation ETPBinding_DeleteProfile
@synthesize parameters;
- (id)initWithBinding:(ETPBinding *)aBinding delegate:(id<ETPBindingResponseDelegate>)responseDelegate
parameters:(ETP_DeleteProfile *)aParameters
{
	if((self = [super initWithBinding:aBinding delegate:responseDelegate])) {
		self.parameters = aParameters;
	}
	
	return self;
}
- (void)dealloc
{
	if(parameters != nil) [parameters release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [ETPBindingResponse new];
	
	ETPBinding_envelope *envelope = [ETPBinding_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	NSMutableArray *bodyKeys = nil;
	bodyElements = [NSMutableDictionary dictionary];
	bodyKeys = [NSMutableArray array];
	id obj = nil;
	if(parameters != nil) obj = parameters;
	if(obj != nil) {
		[bodyElements setObject:obj forKey:@"DeleteProfile"];
		[bodyKeys addObject:@"DeleteProfile"];
	}
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements bodyKeys:bodyKeys];
	operationXMLString = binding.soapSigner ? [binding.soapSigner signRequest:operationXMLString] : operationXMLString;
	
	[delegate operation:self sentSOAPRequest: operationXMLString];
	[binding sendHTTPCallUsingBody:operationXMLString soapAction:@"DeleteProfile" forOperation:self];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	if (responseData != nil && delegate != nil)
	{
		xmlDocPtr doc;
		xmlNodePtr cur;
		
		if (binding.logXMLInOut) {
			NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
		}
#if !TARGET_OS_IPHONE && (!defined(MAC_OS_X_VERSION_10_6) || MAC_OS_X_VERSION_MIN_REQUIRED < MAC_OS_X_VERSION_10_6)
	// Not yet defined in 10.5 libxml
	#define XML_PARSE_COMPACT 0
#endif
    // EricBe: Put explicit conversion since [responseData length] is NSInteger but xmlReadMemory wants int.
	doc = xmlReadMemory([responseData bytes], (int) [responseData length], NULL, NULL, XML_PARSE_COMPACT | XML_PARSE_NOBLANKS);
		
		if (doc == NULL) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
			
			response.error = [NSError errorWithDomain:@"ETPBindingResponseXML" code:1 userInfo:userInfo];
			[delegate operation:self completedWithResponse:response];
		} else {
			if ([delegate respondsToSelector:@selector(operation:receivedSOAPResponse:)]) {
				xmlBufferPtr buf = xmlBufferCreate();
				if (buf) {
					xmlSaveCtxtPtr ctx = xmlSaveToBuffer(buf, "UTF-8",  XML_SAVE_FORMAT | XML_SAVE_AS_XML);
					xmlSaveDoc(ctx, doc);
					xmlSaveFlush(ctx);
					[delegate operation:self receivedSOAPResponse: [NSString stringWithCString:(char*)xmlBufferContent(buf) encoding:NSUTF8StringEncoding]];
					xmlSaveClose(ctx);
					xmlBufferFree(buf);
				}
			}
			cur = xmlDocGetRootElement(doc);
			cur = cur->children;
			for( ; cur != NULL ; cur = cur->next) {
				if(cur->type == XML_ELEMENT_NODE) {
					
					if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
						NSMutableArray *responseBodyParts = [NSMutableArray array];
						
						xmlNodePtr bodyNode;
						for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
							if(cur->type == XML_ELEMENT_NODE) {
								if(xmlStrEqual(bodyNode->name, (const xmlChar *) "DeleteProfileResponse")) {
									ETP_DeleteProfileResponse *bodyObject = [ETP_DeleteProfileResponse deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
								if ((bodyNode->ns != nil && xmlStrEqual(bodyNode->ns->prefix, cur->ns->prefix)) && 
									xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault")) {
                                    NSDictionary *exceptions = [NSDictionary dictionaryWithObjectsAndKeys:
																@"ETP_Fault", @"Fault", // Added only to avoid xcode warnings
                                                                nil];
									SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode expectedExceptions:exceptions];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
							}
						}
						
						response.bodyParts = responseBodyParts;
					}
				}
			}
			
			xmlFreeDoc(doc);
		}
		
		xmlCleanupParser();
		[delegate operation:self completedWithResponse:response];
	}
}
@end
static ETPBinding_envelope *ETPBindingSharedEnvelopeInstance = nil;
@implementation ETPBinding_envelope
+ (ETPBinding_envelope *)sharedInstance
{
	if(ETPBindingSharedEnvelopeInstance == nil) {
		ETPBindingSharedEnvelopeInstance = [ETPBinding_envelope new];
	}
	
	return ETPBindingSharedEnvelopeInstance;
}
- (NSString *)serializedFormUsingHeaderElements:(NSDictionary *)headerElements bodyElements:(NSDictionary *)bodyElements bodyKeys:(NSArray *)bodyKeys
{
	xmlDocPtr doc;
	
	doc = xmlNewDoc((const xmlChar*)XML_DEFAULT_VERSION);
	if (doc == NULL) {
		NSLog(@"Error creating the xml document tree");
		return @"";
	}
	
	xmlNodePtr root = xmlNewDocNode(doc, NULL, (const xmlChar*)"Envelope", NULL);
	xmlDocSetRootElement(doc, root);
	
	xmlNsPtr soapEnvelopeNs = xmlNewNs(root, (const xmlChar*)"http://schemas.xmlsoap.org/soap/envelope/", (const xmlChar*)"soap");
	xmlSetNs(root, soapEnvelopeNs);
	
	xmlNewNs(root, (const xmlChar*)"http://www.w3.org/2001/XMLSchema-instance", (const xmlChar*)"xsi");
    xmlNewNs(root, (const xmlChar*)"https://www.mpay24.com/soap/etp/1.5/ETP.wsdl", (const xmlChar*)"etp");
	
	if((headerElements != nil) && ([headerElements count] > 0)) {
		xmlNodePtr headerNode = xmlNewDocNode(doc, soapEnvelopeNs, (const xmlChar*)"Header", NULL);
		xmlAddChild(root, headerNode);
		
		for(NSString *key in [headerElements allKeys]) {
			id header = [headerElements objectForKey:key];
			xmlAddChild(headerNode, [header xmlNodeForDoc:doc elementName:key elementNSPrefix:nil]);
		}
	}
	
	if((bodyElements != nil) && ([bodyElements count] > 0)) {
		xmlNodePtr bodyNode = xmlNewDocNode(doc, soapEnvelopeNs, (const xmlChar*)"Body", NULL);
		xmlAddChild(root, bodyNode);
		
		for(NSString *key in bodyKeys) {
			id body = [bodyElements objectForKey:key];
			xmlAddChild(bodyNode, [body xmlNodeForDoc:doc elementName:key elementNSPrefix:nil]);
		}
	}
	
	xmlChar *buf;
	int size;
	xmlDocDumpFormatMemory(doc, &buf, &size, 1);
	
	NSString *serializedForm = [NSString stringWithCString:(const char*)buf encoding:NSUTF8StringEncoding];
	xmlFree(buf);
	
	xmlFreeDoc(doc);	
	return serializedForm;
}
@end
@implementation ETPBindingResponse
@synthesize headers;
@synthesize bodyParts;
@synthesize error;
- (id)init
{
	if((self = [super init])) {
		headers = nil;
		bodyParts = nil;
		error = nil;
	}
	
	return self;
}
- (void)dealloc {
	self.headers = nil;
	self.bodyParts = nil;
	self.error = nil;	
	[super dealloc];
}
@end
