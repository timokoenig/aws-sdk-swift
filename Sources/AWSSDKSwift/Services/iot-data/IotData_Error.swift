// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for IotData
public enum IotDataError: AWSErrorType {
    case conflictException(message: String?)
    case requestEntityTooLargeException(message: String?)
    case invalidRequestException(message: String?)
    case throttlingException(message: String?)
    case unauthorizedException(message: String?)
    case serviceUnavailableException(message: String?)
    case internalFailureException(message: String?)
    case methodNotAllowedException(message: String?)
    case unsupportedDocumentEncodingException(message: String?)
    case resourceNotFoundException(message: String?)
}

extension IotDataError {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ConflictException":
            self = .conflictException(message: message)
        case "RequestEntityTooLargeException":
            self = .requestEntityTooLargeException(message: message)
        case "InvalidRequestException":
            self = .invalidRequestException(message: message)
        case "ThrottlingException":
            self = .throttlingException(message: message)
        case "UnauthorizedException":
            self = .unauthorizedException(message: message)
        case "ServiceUnavailableException":
            self = .serviceUnavailableException(message: message)
        case "InternalFailureException":
            self = .internalFailureException(message: message)
        case "MethodNotAllowedException":
            self = .methodNotAllowedException(message: message)
        case "UnsupportedDocumentEncodingException":
            self = .unsupportedDocumentEncodingException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        default:
            return nil
        }
    }
}