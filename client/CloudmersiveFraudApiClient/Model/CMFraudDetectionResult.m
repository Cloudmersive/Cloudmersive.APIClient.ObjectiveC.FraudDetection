#import "CMFraudDetectionResult.h"

@implementation CMFraudDetectionResult

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"successful": @"Successful", @"cleanResult": @"CleanResult", @"fraudRiskLevel": @"FraudRiskLevel", @"containsFinancialLiability": @"ContainsFinancialLiability", @"containsSensitiveInformationCollection": @"ContainsSensitiveInformationCollection", @"containsAssetTransfer": @"ContainsAssetTransfer", @"containsPurchaseAgreement": @"ContainsPurchaseAgreement", @"containsEmploymentAgreement": @"ContainsEmploymentAgreement" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"successful", @"cleanResult", @"fraudRiskLevel", @"containsFinancialLiability", @"containsSensitiveInformationCollection", @"containsAssetTransfer", @"containsPurchaseAgreement", @"containsEmploymentAgreement"];
  return [optionalProperties containsObject:propertyName];
}

@end
