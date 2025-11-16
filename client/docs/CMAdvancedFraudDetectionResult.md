# CMAdvancedFraudDetectionResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**successful** | **NSNumber*** | True if successful, false otherwise | [optional] 
**cleanResult** | **NSNumber*** | True if the document is clean, false if fraud threats were found | [optional] 
**fraudRiskLevel** | **NSNumber*** | Overall fraud risk level between 0.0 and 1.0 | [optional] 
**containsFinancialLiability** | **NSNumber*** | True if the document contains financial liability | [optional] 
**containsSensitiveInformationCollection** | **NSNumber*** | True if the document contains sensitive data collection from the recipient | [optional] 
**containsAssetTransfer** | **NSNumber*** | True if the document contains an asset transfer | [optional] 
**containsPurchaseAgreement** | **NSNumber*** | True if the document contains a purchase agreement | [optional] 
**containsEmploymentAgreement** | **NSNumber*** | True if the document contains an employment agreement | [optional] 
**analysisRationale** | **NSString*** | Rationale on why the document was classified as such | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


