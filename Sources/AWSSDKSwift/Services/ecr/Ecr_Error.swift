// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Ecr
public enum EcrError: AWSErrorType {
    case serverException(message: String?)
    case invalidParameterException(message: String?)
    case layersNotFoundException(message: String?)
    case layerInaccessibleException(message: String?)
    case repositoryNotFoundException(message: String?)
    case repositoryPolicyNotFoundException(message: String?)
    case uploadNotFoundException(message: String?)
    case invalidLayerException(message: String?)
    case layerPartTooSmallException(message: String?)
    case layerAlreadyExistsException(message: String?)
    case emptyUploadException(message: String?)
    case repositoryAlreadyExistsException(message: String?)
    case limitExceededException(message: String?)
    case repositoryNotEmptyException(message: String?)
    case imageAlreadyExistsException(message: String?)
    case imageNotFoundException(message: String?)
    case invalidLayerPartException(message: String?)
}

extension EcrError {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ServerException":
            self = .serverException(message: message)
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "LayersNotFoundException":
            self = .layersNotFoundException(message: message)
        case "LayerInaccessibleException":
            self = .layerInaccessibleException(message: message)
        case "RepositoryNotFoundException":
            self = .repositoryNotFoundException(message: message)
        case "RepositoryPolicyNotFoundException":
            self = .repositoryPolicyNotFoundException(message: message)
        case "UploadNotFoundException":
            self = .uploadNotFoundException(message: message)
        case "InvalidLayerException":
            self = .invalidLayerException(message: message)
        case "LayerPartTooSmallException":
            self = .layerPartTooSmallException(message: message)
        case "LayerAlreadyExistsException":
            self = .layerAlreadyExistsException(message: message)
        case "EmptyUploadException":
            self = .emptyUploadException(message: message)
        case "RepositoryAlreadyExistsException":
            self = .repositoryAlreadyExistsException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "RepositoryNotEmptyException":
            self = .repositoryNotEmptyException(message: message)
        case "ImageAlreadyExistsException":
            self = .imageAlreadyExistsException(message: message)
        case "ImageNotFoundException":
            self = .imageNotFoundException(message: message)
        case "InvalidLayerPartException":
            self = .invalidLayerPartException(message: message)
        default:
            return nil
        }
    }
}