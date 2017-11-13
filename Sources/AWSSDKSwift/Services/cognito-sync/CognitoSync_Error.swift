// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for CognitoSync
public enum CognitoSyncError: AWSErrorType {
    case notAuthorizedException(message: String?)
    case invalidParameterException(message: String?)
    case resourceNotFoundException(message: String?)
    case internalErrorException(message: String?)
    case tooManyRequestsException(message: String?)
    case resourceConflictException(message: String?)
    case invalidConfigurationException(message: String?)
    case concurrentModificationException(message: String?)
    case duplicateRequestException(message: String?)
    case alreadyStreamedException(message: String?)
    case limitExceededException(message: String?)
    case invalidLambdaFunctionOutputException(message: String?)
    case lambdaThrottledException(message: String?)
}

extension CognitoSyncError {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "NotAuthorizedException":
            self = .notAuthorizedException(message: message)
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "InternalErrorException":
            self = .internalErrorException(message: message)
        case "TooManyRequestsException":
            self = .tooManyRequestsException(message: message)
        case "ResourceConflictException":
            self = .resourceConflictException(message: message)
        case "InvalidConfigurationException":
            self = .invalidConfigurationException(message: message)
        case "ConcurrentModificationException":
            self = .concurrentModificationException(message: message)
        case "DuplicateRequestException":
            self = .duplicateRequestException(message: message)
        case "AlreadyStreamedException":
            self = .alreadyStreamedException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "InvalidLambdaFunctionOutputException":
            self = .invalidLambdaFunctionOutputException(message: message)
        case "LambdaThrottledException":
            self = .lambdaThrottledException(message: message)
        default:
            return nil
        }
    }
}