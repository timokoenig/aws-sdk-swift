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

/// Error enum for Logs
public enum LogsError: AWSErrorType {
    case invalidParameterException(message: String?)
    case resourceAlreadyExistsException(message: String?)
    case resourceNotFoundException(message: String?)
    case serviceUnavailableException(message: String?)
    case operationAbortedException(message: String?)
    case invalidSequenceTokenException(message: String?)
    case dataAlreadyAcceptedException(message: String?)
    case limitExceededException(message: String?)
    case invalidOperationException(message: String?)
}

extension LogsError {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = errorCode.substring(from: errorCode.index(index, offsetBy: 1))
        }
        switch errorCode {
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "ResourceAlreadyExistsException":
            self = .resourceAlreadyExistsException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ServiceUnavailableException":
            self = .serviceUnavailableException(message: message)
        case "OperationAbortedException":
            self = .operationAbortedException(message: message)
        case "InvalidSequenceTokenException":
            self = .invalidSequenceTokenException(message: message)
        case "DataAlreadyAcceptedException":
            self = .dataAlreadyAcceptedException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "InvalidOperationException":
            self = .invalidOperationException(message: message)
        default:
            return nil
        }
    }
}