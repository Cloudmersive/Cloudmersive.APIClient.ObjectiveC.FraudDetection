# CMFraudDetectionApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**documentDetectFraud**](CMFraudDetectionApi.md#documentdetectfraud) | **POST** /fraud-ai/detection/document | AI Fraud Detection for Documents
[**documentDetectFraudAdvanced**](CMFraudDetectionApi.md#documentdetectfraudadvanced) | **POST** /fraud-ai/detection/document/advanced | Advanced AI Fraud Detection for Documents


# **documentDetectFraud**
```objc
-(NSURLSessionTask*) documentDetectFraudWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMFraudDetectionResult* output, NSError* error)) handler;
```

AI Fraud Detection for Documents

Perform fraud detection and classification on input document and user context.  Input document formats supported include DOCX, PDF, PNG and JPG.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input document, or photos of a document, to perform fraud detection on (optional)

CMFraudDetectionApi*apiInstance = [[CMFraudDetectionApi alloc] init];

// AI Fraud Detection for Documents
[apiInstance documentDetectFraudWithInputFile:inputFile
          completionHandler: ^(CMFraudDetectionResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMFraudDetectionApi->documentDetectFraud: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input document, or photos of a document, to perform fraud detection on | [optional] 

### Return type

[**CMFraudDetectionResult***](CMFraudDetectionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **documentDetectFraudAdvanced**
```objc
-(NSURLSessionTask*) documentDetectFraudAdvancedWithUserEmailAddress: (NSString*) userEmailAddress
    userEmailAddressVerified: (NSNumber*) userEmailAddressVerified
    inputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMAdvancedFraudDetectionResult* output, NSError* error)) handler;
```

Advanced AI Fraud Detection for Documents

Perform advanced fraud detection and classification on input document and user context.  Input document formats supported include DOCX, PDF, PNG and JPG.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* userEmailAddress = @"userEmailAddress_example"; // User email address for context (optional) (optional)
NSNumber* userEmailAddressVerified = @true; // True if the user's email address was verified (optional) (optional)
NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input document, or photos of a document, to perform fraud detection on (optional)

CMFraudDetectionApi*apiInstance = [[CMFraudDetectionApi alloc] init];

// Advanced AI Fraud Detection for Documents
[apiInstance documentDetectFraudAdvancedWithUserEmailAddress:userEmailAddress
              userEmailAddressVerified:userEmailAddressVerified
              inputFile:inputFile
          completionHandler: ^(CMAdvancedFraudDetectionResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMFraudDetectionApi->documentDetectFraudAdvanced: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userEmailAddress** | **NSString***| User email address for context (optional) | [optional] 
 **userEmailAddressVerified** | **NSNumber***| True if the user&#39;s email address was verified (optional) | [optional] 
 **inputFile** | **NSURL***| Input document, or photos of a document, to perform fraud detection on | [optional] 

### Return type

[**CMAdvancedFraudDetectionResult***](CMAdvancedFraudDetectionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

