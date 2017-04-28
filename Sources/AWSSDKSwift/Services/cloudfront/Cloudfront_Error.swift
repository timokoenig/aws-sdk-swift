// THIS FILE IS AUTOMATICALLY GENERATED. DO NOT EDIT.
/**
The MIT License (MIT)

Copyright (c) 2017 Yuki Takei(noppoMan)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

*/

import Core

/// Error enum for Cloudfront
public enum CloudfrontError: AWSErrorType {
    case accessDenied(message: String?)
    case illegalUpdate(message: String?)
    case invalidIfMatchVersion(message: String?)
    case missingBody(message: String?)
    case noSuchCloudFrontOriginAccessIdentity(message: String?)
    case preconditionFailed(message: String?)
    case invalidArgument(message: String?)
    case inconsistentQuantities(message: String?)
    case cNAMEAlreadyExists(message: String?)
    case distributionAlreadyExists(message: String?)
    case invalidOrigin(message: String?)
    case invalidOriginAccessIdentity(message: String?)
    case tooManyTrustedSigners(message: String?)
    case trustedSignerDoesNotExist(message: String?)
    case invalidViewerCertificate(message: String?)
    case invalidMinimumProtocolVersion(message: String?)
    case tooManyDistributionCNAMEs(message: String?)
    case tooManyDistributions(message: String?)
    case invalidDefaultRootObject(message: String?)
    case invalidRelativePath(message: String?)
    case invalidErrorCode(message: String?)
    case invalidResponseCode(message: String?)
    case invalidRequiredProtocol(message: String?)
    case noSuchOrigin(message: String?)
    case tooManyOrigins(message: String?)
    case tooManyCacheBehaviors(message: String?)
    case tooManyCookieNamesInWhiteList(message: String?)
    case invalidForwardCookies(message: String?)
    case tooManyHeadersInForwardedValues(message: String?)
    case invalidHeadersForS3Origin(message: String?)
    case tooManyCertificates(message: String?)
    case invalidLocationCode(message: String?)
    case invalidGeoRestrictionParameter(message: String?)
    case invalidProtocolSettings(message: String?)
    case invalidTTLOrder(message: String?)
    case invalidWebACLId(message: String?)
    case tooManyOriginCustomHeaders(message: String?)
    case tooManyQueryStringParameters(message: String?)
    case invalidQueryStringParameters(message: String?)
    case tooManyDistributionsWithLambdaAssociations(message: String?)
    case tooManyLambdaFunctionAssociations(message: String?)
    case invalidLambdaFunctionAssociation(message: String?)
    case noSuchDistribution(message: String?)
    case cloudFrontOriginAccessIdentityAlreadyExists(message: String?)
    case tooManyCloudFrontOriginAccessIdentities(message: String?)
    case invalidTagging(message: String?)
    case noSuchResource(message: String?)
    case batchTooLarge(message: String?)
    case tooManyInvalidationsInProgress(message: String?)
    case noSuchInvalidation(message: String?)
    case noSuchStreamingDistribution(message: String?)
    case cloudFrontOriginAccessIdentityInUse(message: String?)
    case streamingDistributionNotDisabled(message: String?)
    case streamingDistributionAlreadyExists(message: String?)
    case tooManyStreamingDistributionCNAMEs(message: String?)
    case tooManyStreamingDistributions(message: String?)
    case distributionNotDisabled(message: String?)
}

extension CloudfrontError {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = errorCode.substring(from: errorCode.index(index, offsetBy: 1))
        }
        switch errorCode {
        case "AccessDenied":
            self = .accessDenied(message: message)
        case "IllegalUpdate":
            self = .illegalUpdate(message: message)
        case "InvalidIfMatchVersion":
            self = .invalidIfMatchVersion(message: message)
        case "MissingBody":
            self = .missingBody(message: message)
        case "NoSuchCloudFrontOriginAccessIdentity":
            self = .noSuchCloudFrontOriginAccessIdentity(message: message)
        case "PreconditionFailed":
            self = .preconditionFailed(message: message)
        case "InvalidArgument":
            self = .invalidArgument(message: message)
        case "InconsistentQuantities":
            self = .inconsistentQuantities(message: message)
        case "CNAMEAlreadyExists":
            self = .cNAMEAlreadyExists(message: message)
        case "DistributionAlreadyExists":
            self = .distributionAlreadyExists(message: message)
        case "InvalidOrigin":
            self = .invalidOrigin(message: message)
        case "InvalidOriginAccessIdentity":
            self = .invalidOriginAccessIdentity(message: message)
        case "TooManyTrustedSigners":
            self = .tooManyTrustedSigners(message: message)
        case "TrustedSignerDoesNotExist":
            self = .trustedSignerDoesNotExist(message: message)
        case "InvalidViewerCertificate":
            self = .invalidViewerCertificate(message: message)
        case "InvalidMinimumProtocolVersion":
            self = .invalidMinimumProtocolVersion(message: message)
        case "TooManyDistributionCNAMEs":
            self = .tooManyDistributionCNAMEs(message: message)
        case "TooManyDistributions":
            self = .tooManyDistributions(message: message)
        case "InvalidDefaultRootObject":
            self = .invalidDefaultRootObject(message: message)
        case "InvalidRelativePath":
            self = .invalidRelativePath(message: message)
        case "InvalidErrorCode":
            self = .invalidErrorCode(message: message)
        case "InvalidResponseCode":
            self = .invalidResponseCode(message: message)
        case "InvalidRequiredProtocol":
            self = .invalidRequiredProtocol(message: message)
        case "NoSuchOrigin":
            self = .noSuchOrigin(message: message)
        case "TooManyOrigins":
            self = .tooManyOrigins(message: message)
        case "TooManyCacheBehaviors":
            self = .tooManyCacheBehaviors(message: message)
        case "TooManyCookieNamesInWhiteList":
            self = .tooManyCookieNamesInWhiteList(message: message)
        case "InvalidForwardCookies":
            self = .invalidForwardCookies(message: message)
        case "TooManyHeadersInForwardedValues":
            self = .tooManyHeadersInForwardedValues(message: message)
        case "InvalidHeadersForS3Origin":
            self = .invalidHeadersForS3Origin(message: message)
        case "TooManyCertificates":
            self = .tooManyCertificates(message: message)
        case "InvalidLocationCode":
            self = .invalidLocationCode(message: message)
        case "InvalidGeoRestrictionParameter":
            self = .invalidGeoRestrictionParameter(message: message)
        case "InvalidProtocolSettings":
            self = .invalidProtocolSettings(message: message)
        case "InvalidTTLOrder":
            self = .invalidTTLOrder(message: message)
        case "InvalidWebACLId":
            self = .invalidWebACLId(message: message)
        case "TooManyOriginCustomHeaders":
            self = .tooManyOriginCustomHeaders(message: message)
        case "TooManyQueryStringParameters":
            self = .tooManyQueryStringParameters(message: message)
        case "InvalidQueryStringParameters":
            self = .invalidQueryStringParameters(message: message)
        case "TooManyDistributionsWithLambdaAssociations":
            self = .tooManyDistributionsWithLambdaAssociations(message: message)
        case "TooManyLambdaFunctionAssociations":
            self = .tooManyLambdaFunctionAssociations(message: message)
        case "InvalidLambdaFunctionAssociation":
            self = .invalidLambdaFunctionAssociation(message: message)
        case "NoSuchDistribution":
            self = .noSuchDistribution(message: message)
        case "CloudFrontOriginAccessIdentityAlreadyExists":
            self = .cloudFrontOriginAccessIdentityAlreadyExists(message: message)
        case "TooManyCloudFrontOriginAccessIdentities":
            self = .tooManyCloudFrontOriginAccessIdentities(message: message)
        case "InvalidTagging":
            self = .invalidTagging(message: message)
        case "NoSuchResource":
            self = .noSuchResource(message: message)
        case "BatchTooLarge":
            self = .batchTooLarge(message: message)
        case "TooManyInvalidationsInProgress":
            self = .tooManyInvalidationsInProgress(message: message)
        case "NoSuchInvalidation":
            self = .noSuchInvalidation(message: message)
        case "NoSuchStreamingDistribution":
            self = .noSuchStreamingDistribution(message: message)
        case "CloudFrontOriginAccessIdentityInUse":
            self = .cloudFrontOriginAccessIdentityInUse(message: message)
        case "StreamingDistributionNotDisabled":
            self = .streamingDistributionNotDisabled(message: message)
        case "StreamingDistributionAlreadyExists":
            self = .streamingDistributionAlreadyExists(message: message)
        case "TooManyStreamingDistributionCNAMEs":
            self = .tooManyStreamingDistributionCNAMEs(message: message)
        case "TooManyStreamingDistributions":
            self = .tooManyStreamingDistributions(message: message)
        case "DistributionNotDisabled":
            self = .distributionNotDisabled(message: message)
        default:
            return nil
        }
    }
}