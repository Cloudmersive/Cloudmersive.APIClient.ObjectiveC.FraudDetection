#import "CMFraudDetectionApi.h"
#import "CMQueryParamCollection.h"
#import "CMApiClient.h"
#import "CMAdvancedFraudDetectionResult.h"
#import "CMFraudDetectionResult.h"


@interface CMFraudDetectionApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation CMFraudDetectionApi

NSString* kCMFraudDetectionApiErrorDomain = @"CMFraudDetectionApiErrorDomain";
NSInteger kCMFraudDetectionApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[CMApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(CMApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// AI Fraud Detection for Documents
/// Perform fraud detection and classification on input document and user context.  Input document formats supported include DOCX, PDF, PNG and JPG.
///  @param inputFile Input document, or photos of a document, to perform fraud detection on (optional)
///
///  @returns CMFraudDetectionResult*
///
-(NSURLSessionTask*) documentDetectFraudWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMFraudDetectionResult* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/fraud-ai/detection/document"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"text/plain", @"application/json", @"text/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[@"Apikey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    localVarFiles[@"inputFile"] = inputFile;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"CMFraudDetectionResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMFraudDetectionResult*)data, error);
                                }
                            }];
}

///
/// Advanced AI Fraud Detection for Documents
/// Perform advanced fraud detection and classification on input document and user context.  Input document formats supported include DOCX, PDF, PNG and JPG.
///  @param userEmailAddress User email address for context (optional) (optional)
///
///  @param userEmailAddressVerified True if the user's email address was verified (optional) (optional)
///
///  @param inputFile Input document, or photos of a document, to perform fraud detection on (optional)
///
///  @returns CMAdvancedFraudDetectionResult*
///
-(NSURLSessionTask*) documentDetectFraudAdvancedWithUserEmailAddress: (NSString*) userEmailAddress
    userEmailAddressVerified: (NSNumber*) userEmailAddressVerified
    inputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMAdvancedFraudDetectionResult* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/fraud-ai/detection/document/advanced"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (userEmailAddress != nil) {
        headerParams[@"UserEmailAddress"] = userEmailAddress;
    }
    if (userEmailAddressVerified != nil) {
        headerParams[@"UserEmailAddressVerified"] = userEmailAddressVerified;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"text/plain", @"application/json", @"text/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[@"Apikey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    localVarFiles[@"inputFile"] = inputFile;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"CMAdvancedFraudDetectionResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMAdvancedFraudDetectionResult*)data, error);
                                }
                            }];
}



@end
