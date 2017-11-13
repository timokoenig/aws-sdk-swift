// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Workspaces
public enum WorkspacesError: AWSErrorType {
    case resourceNotFoundException(message: String?)
    case invalidParameterValuesException(message: String?)
    case resourceLimitExceededException(message: String?)
    case invalidResourceStateException(message: String?)
    case operationInProgressException(message: String?)
    case unsupportedWorkspaceConfigurationException(message: String?)
    case accessDeniedException(message: String?)
    case resourceUnavailableException(message: String?)
}

extension WorkspacesError {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "InvalidParameterValuesException":
            self = .invalidParameterValuesException(message: message)
        case "ResourceLimitExceededException":
            self = .resourceLimitExceededException(message: message)
        case "InvalidResourceStateException":
            self = .invalidResourceStateException(message: message)
        case "OperationInProgressException":
            self = .operationInProgressException(message: message)
        case "UnsupportedWorkspaceConfigurationException":
            self = .unsupportedWorkspaceConfigurationException(message: message)
        case "AccessDeniedException":
            self = .accessDeniedException(message: message)
        case "ResourceUnavailableException":
            self = .resourceUnavailableException(message: message)
        default:
            return nil
        }
    }
}