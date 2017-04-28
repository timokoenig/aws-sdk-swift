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

/// Error enum for Ds
public enum DsError: AWSErrorType {
    case entityDoesNotExistException(message: String?)
    case directoryUnavailableException(message: String?)
    case invalidParameterException(message: String?)
    case unsupportedOperationException(message: String?)
    case clientException(message: String?)
    case serviceException(message: String?)
    case directoryLimitExceededException(message: String?)
    case entityAlreadyExistsException(message: String?)
    case snapshotLimitExceededException(message: String?)
    case insufficientPermissionsException(message: String?)
    case authenticationFailedException(message: String?)
    case invalidNextTokenException(message: String?)
    case ipRouteLimitExceededException(message: String?)
    case tagLimitExceededException(message: String?)
}

extension DsError {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = errorCode.substring(from: errorCode.index(index, offsetBy: 1))
        }
        switch errorCode {
        case "EntityDoesNotExistException":
            self = .entityDoesNotExistException(message: message)
        case "DirectoryUnavailableException":
            self = .directoryUnavailableException(message: message)
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "UnsupportedOperationException":
            self = .unsupportedOperationException(message: message)
        case "ClientException":
            self = .clientException(message: message)
        case "ServiceException":
            self = .serviceException(message: message)
        case "DirectoryLimitExceededException":
            self = .directoryLimitExceededException(message: message)
        case "EntityAlreadyExistsException":
            self = .entityAlreadyExistsException(message: message)
        case "SnapshotLimitExceededException":
            self = .snapshotLimitExceededException(message: message)
        case "InsufficientPermissionsException":
            self = .insufficientPermissionsException(message: message)
        case "AuthenticationFailedException":
            self = .authenticationFailedException(message: message)
        case "InvalidNextTokenException":
            self = .invalidNextTokenException(message: message)
        case "IpRouteLimitExceededException":
            self = .ipRouteLimitExceededException(message: message)
        case "TagLimitExceededException":
            self = .tagLimitExceededException(message: message)
        default:
            return nil
        }
    }
}