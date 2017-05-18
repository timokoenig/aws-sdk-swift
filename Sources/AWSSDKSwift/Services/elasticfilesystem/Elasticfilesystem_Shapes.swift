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

import Foundation
import Core

extension Elasticfilesystem {

    public struct DescribeFileSystemsResponse: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "FileSystems", required: false, type: .list), 
            AWSShapeProperty(label: "Marker", required: false, type: .string), 
            AWSShapeProperty(label: "NextMarker", required: false, type: .string)
        ]
        /// Array of file system descriptions.
        public let fileSystems: [FileSystemDescription]?
        /// Present if provided by caller in the request (String).
        public let marker: String?
        /// Present if there are more file systems than returned in the response (String). You can use the NextMarker in the subsequent request to fetch the descriptions.
        public let nextMarker: String?

        public init(fileSystems: [FileSystemDescription]? = nil, marker: String? = nil, nextMarker: String? = nil) {
            self.fileSystems = fileSystems
            self.marker = marker
            self.nextMarker = nextMarker
        }

        public init(dictionary: [String: Any]) throws {
            if let fileSystems = dictionary["FileSystems"] as? [[String: Any]] {
                self.fileSystems = try fileSystems.map({ try FileSystemDescription(dictionary: $0) })
            } else { 
                self.fileSystems = nil
            }
            self.marker = dictionary["Marker"] as? String
            self.nextMarker = dictionary["NextMarker"] as? String
        }
    }

    public struct DescribeTagsResponse: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "Marker", required: false, type: .string), 
            AWSShapeProperty(label: "Tags", required: true, type: .list), 
            AWSShapeProperty(label: "NextMarker", required: false, type: .string)
        ]
        /// If the request included a Marker, the response returns that value in this field.
        public let marker: String?
        /// Returns tags associated with the file system as an array of Tag objects. 
        public let tags: [Tag]
        /// If a value is present, there are more tags to return. In a subsequent request, you can provide the value of NextMarker as the value of the Marker parameter in your next request to retrieve the next set of tags.
        public let nextMarker: String?

        public init(marker: String? = nil, tags: [Tag], nextMarker: String? = nil) {
            self.marker = marker
            self.tags = tags
            self.nextMarker = nextMarker
        }

        public init(dictionary: [String: Any]) throws {
            self.marker = dictionary["Marker"] as? String
            guard let tags = dictionary["Tags"] as? [[String: Any]] else { throw InitializableError.missingRequiredParam("Tags") }
            self.tags = try tags.map({ try Tag(dictionary: $0) })
            self.nextMarker = dictionary["NextMarker"] as? String
        }
    }

    public struct CreateTagsRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var pathParams: [String: String] {
            return ["FileSystemId": "FileSystemId"]
        }
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "FileSystemId", required: true, type: .string), 
            AWSShapeProperty(label: "Tags", required: true, type: .list)
        ]
        /// ID of the file system whose tags you want to modify (String). This operation modifies the tags only, not the file system.
        public let fileSystemId: String
        /// Array of Tag objects to add. Each Tag object is a key-value pair. 
        public let tags: [Tag]

        public init(fileSystemId: String, tags: [Tag]) {
            self.fileSystemId = fileSystemId
            self.tags = tags
        }

        public init(dictionary: [String: Any]) throws {
            guard let fileSystemId = dictionary["FileSystemId"] as? String else { throw InitializableError.missingRequiredParam("FileSystemId") }
            self.fileSystemId = fileSystemId
            guard let tags = dictionary["Tags"] as? [[String: Any]] else { throw InitializableError.missingRequiredParam("Tags") }
            self.tags = try tags.map({ try Tag(dictionary: $0) })
        }
    }

    public struct DescribeMountTargetsRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var queryParams: [String: String] {
            return ["MaxItems": "MaxItems", "FileSystemId": "FileSystemId", "Marker": "Marker", "MountTargetId": "MountTargetId"]
        }
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "MaxItems", required: false, type: .integer), 
            AWSShapeProperty(label: "FileSystemId", required: false, type: .string), 
            AWSShapeProperty(label: "Marker", required: false, type: .string), 
            AWSShapeProperty(label: "MountTargetId", required: false, type: .string)
        ]
        /// (Optional) Maximum number of mount targets to return in the response. It must be an integer with a value greater than zero.
        public let maxItems: Int32?
        /// (Optional) ID of the file system whose mount targets you want to list (String). It must be included in your request if MountTargetId is not included.
        public let fileSystemId: String?
        /// (Optional) Opaque pagination token returned from a previous DescribeMountTargets operation (String). If present, it specifies to continue the list from where the previous returning call left off.
        public let marker: String?
        /// (Optional) ID of the mount target that you want to have described (String). It must be included in your request if FileSystemId is not included.
        public let mountTargetId: String?

        public init(maxItems: Int32? = nil, fileSystemId: String? = nil, marker: String? = nil, mountTargetId: String? = nil) {
            self.maxItems = maxItems
            self.fileSystemId = fileSystemId
            self.marker = marker
            self.mountTargetId = mountTargetId
        }

        public init(dictionary: [String: Any]) throws {
            self.maxItems = dictionary["MaxItems"] as? Int32
            self.fileSystemId = dictionary["FileSystemId"] as? String
            self.marker = dictionary["Marker"] as? String
            self.mountTargetId = dictionary["MountTargetId"] as? String
        }
    }

    public struct DescribeFileSystemsRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var queryParams: [String: String] {
            return ["MaxItems": "MaxItems", "FileSystemId": "FileSystemId", "Marker": "Marker", "CreationToken": "CreationToken"]
        }
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "MaxItems", required: false, type: .integer), 
            AWSShapeProperty(label: "FileSystemId", required: false, type: .string), 
            AWSShapeProperty(label: "Marker", required: false, type: .string), 
            AWSShapeProperty(label: "CreationToken", required: false, type: .string)
        ]
        /// (Optional) Specifies the maximum number of file systems to return in the response (integer). This parameter value must be greater than 0. The number of items that Amazon EFS returns is the minimum of the MaxItems parameter specified in the request and the service's internal maximum number of items per page. 
        public let maxItems: Int32?
        /// (Optional) ID of the file system whose description you want to retrieve (String).
        public let fileSystemId: String?
        /// (Optional) Opaque pagination token returned from a previous DescribeFileSystems operation (String). If present, specifies to continue the list from where the returning call had left off. 
        public let marker: String?
        /// (Optional) Restricts the list to the file system with this creation token (String). You specify a creation token when you create an Amazon EFS file system.
        public let creationToken: String?

        public init(maxItems: Int32? = nil, fileSystemId: String? = nil, marker: String? = nil, creationToken: String? = nil) {
            self.maxItems = maxItems
            self.fileSystemId = fileSystemId
            self.marker = marker
            self.creationToken = creationToken
        }

        public init(dictionary: [String: Any]) throws {
            self.maxItems = dictionary["MaxItems"] as? Int32
            self.fileSystemId = dictionary["FileSystemId"] as? String
            self.marker = dictionary["Marker"] as? String
            self.creationToken = dictionary["CreationToken"] as? String
        }
    }

    public struct DescribeMountTargetSecurityGroupsResponse: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "SecurityGroups", required: true, type: .list)
        ]
        /// Array of security groups.
        public let securityGroups: [String]

        public init(securityGroups: [String]) {
            self.securityGroups = securityGroups
        }

        public init(dictionary: [String: Any]) throws {
            guard let securityGroups = dictionary["SecurityGroups"] as? [String] else { throw InitializableError.missingRequiredParam("SecurityGroups") }
            self.securityGroups = securityGroups
        }
    }

    public enum LifeCycleState: String, CustomStringConvertible {
        case creating = "creating"
        case available = "available"
        case deleting = "deleting"
        case deleted = "deleted"
        public var description: String { return self.rawValue }
    }

    public struct DeleteTagsRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var pathParams: [String: String] {
            return ["FileSystemId": "FileSystemId"]
        }
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "FileSystemId", required: true, type: .string), 
            AWSShapeProperty(label: "TagKeys", required: true, type: .list)
        ]
        /// ID of the file system whose tags you want to delete (String).
        public let fileSystemId: String
        /// List of tag keys to delete.
        public let tagKeys: [String]

        public init(fileSystemId: String, tagKeys: [String]) {
            self.fileSystemId = fileSystemId
            self.tagKeys = tagKeys
        }

        public init(dictionary: [String: Any]) throws {
            guard let fileSystemId = dictionary["FileSystemId"] as? String else { throw InitializableError.missingRequiredParam("FileSystemId") }
            self.fileSystemId = fileSystemId
            guard let tagKeys = dictionary["TagKeys"] as? [String] else { throw InitializableError.missingRequiredParam("TagKeys") }
            self.tagKeys = tagKeys
        }
    }

    public struct DescribeTagsRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var queryParams: [String: String] {
            return ["Marker": "Marker", "MaxItems": "MaxItems"]
        }
        public static var pathParams: [String: String] {
            return ["FileSystemId": "FileSystemId"]
        }
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "Marker", required: false, type: .string), 
            AWSShapeProperty(label: "FileSystemId", required: true, type: .string), 
            AWSShapeProperty(label: "MaxItems", required: false, type: .integer)
        ]
        /// (Optional) Opaque pagination token returned from a previous DescribeTags operation (String). If present, it specifies to continue the list from where the previous call left off.
        public let marker: String?
        /// ID of the file system whose tag set you want to retrieve.
        public let fileSystemId: String
        /// (Optional) Maximum number of file system tags to return in the response. It must be an integer with a value greater than zero.
        public let maxItems: Int32?

        public init(marker: String? = nil, fileSystemId: String, maxItems: Int32? = nil) {
            self.marker = marker
            self.fileSystemId = fileSystemId
            self.maxItems = maxItems
        }

        public init(dictionary: [String: Any]) throws {
            self.marker = dictionary["Marker"] as? String
            guard let fileSystemId = dictionary["FileSystemId"] as? String else { throw InitializableError.missingRequiredParam("FileSystemId") }
            self.fileSystemId = fileSystemId
            self.maxItems = dictionary["MaxItems"] as? Int32
        }
    }

    public struct ModifyMountTargetSecurityGroupsRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var pathParams: [String: String] {
            return ["MountTargetId": "MountTargetId"]
        }
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "MountTargetId", required: true, type: .string), 
            AWSShapeProperty(label: "SecurityGroups", required: false, type: .list)
        ]
        /// ID of the mount target whose security groups you want to modify.
        public let mountTargetId: String
        /// Array of up to five VPC security group IDs.
        public let securityGroups: [String]?

        public init(mountTargetId: String, securityGroups: [String]? = nil) {
            self.mountTargetId = mountTargetId
            self.securityGroups = securityGroups
        }

        public init(dictionary: [String: Any]) throws {
            guard let mountTargetId = dictionary["MountTargetId"] as? String else { throw InitializableError.missingRequiredParam("MountTargetId") }
            self.mountTargetId = mountTargetId
            self.securityGroups = dictionary["SecurityGroups"] as? [String]
        }
    }

    public struct Tag: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "Value", required: true, type: .string), 
            AWSShapeProperty(label: "Key", required: true, type: .string)
        ]
        /// Value of the tag key.
        public let value: String
        /// Tag key (String). The key can't start with aws:.
        public let key: String

        public init(value: String, key: String) {
            self.value = value
            self.key = key
        }

        public init(dictionary: [String: Any]) throws {
            guard let value = dictionary["Value"] as? String else { throw InitializableError.missingRequiredParam("Value") }
            self.value = value
            guard let key = dictionary["Key"] as? String else { throw InitializableError.missingRequiredParam("Key") }
            self.key = key
        }
    }

    public struct DescribeMountTargetsResponse: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "Marker", required: false, type: .string), 
            AWSShapeProperty(label: "MountTargets", required: false, type: .list), 
            AWSShapeProperty(label: "NextMarker", required: false, type: .string)
        ]
        /// If the request included the Marker, the response returns that value in this field.
        public let marker: String?
        /// Returns the file system's mount targets as an array of MountTargetDescription objects.
        public let mountTargets: [MountTargetDescription]?
        /// If a value is present, there are more mount targets to return. In a subsequent request, you can provide Marker in your request with this value to retrieve the next set of mount targets.
        public let nextMarker: String?

        public init(marker: String? = nil, mountTargets: [MountTargetDescription]? = nil, nextMarker: String? = nil) {
            self.marker = marker
            self.mountTargets = mountTargets
            self.nextMarker = nextMarker
        }

        public init(dictionary: [String: Any]) throws {
            self.marker = dictionary["Marker"] as? String
            if let mountTargets = dictionary["MountTargets"] as? [[String: Any]] {
                self.mountTargets = try mountTargets.map({ try MountTargetDescription(dictionary: $0) })
            } else { 
                self.mountTargets = nil
            }
            self.nextMarker = dictionary["NextMarker"] as? String
        }
    }

    public struct DeleteMountTargetRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var pathParams: [String: String] {
            return ["MountTargetId": "MountTargetId"]
        }
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "MountTargetId", required: true, type: .string)
        ]
        /// ID of the mount target to delete (String).
        public let mountTargetId: String

        public init(mountTargetId: String) {
            self.mountTargetId = mountTargetId
        }

        public init(dictionary: [String: Any]) throws {
            guard let mountTargetId = dictionary["MountTargetId"] as? String else { throw InitializableError.missingRequiredParam("MountTargetId") }
            self.mountTargetId = mountTargetId
        }
    }

    public struct DeleteFileSystemRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var pathParams: [String: String] {
            return ["FileSystemId": "FileSystemId"]
        }
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "FileSystemId", required: true, type: .string)
        ]
        /// ID of the file system you want to delete.
        public let fileSystemId: String

        public init(fileSystemId: String) {
            self.fileSystemId = fileSystemId
        }

        public init(dictionary: [String: Any]) throws {
            guard let fileSystemId = dictionary["FileSystemId"] as? String else { throw InitializableError.missingRequiredParam("FileSystemId") }
            self.fileSystemId = fileSystemId
        }
    }

    public struct CreateFileSystemRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "PerformanceMode", required: false, type: .enum), 
            AWSShapeProperty(label: "CreationToken", required: true, type: .string)
        ]
        /// The PerformanceMode of the file system. We recommend generalPurpose performance mode for most file systems. File systems using the maxIO performance mode can scale to higher levels of aggregate throughput and operations per second with a tradeoff of slightly higher latencies for most file operations. This can't be changed after the file system has been created.
        public let performanceMode: PerformanceMode?
        /// String of up to 64 ASCII characters. Amazon EFS uses this to ensure idempotent creation.
        public let creationToken: String

        public init(performanceMode: PerformanceMode? = nil, creationToken: String) {
            self.performanceMode = performanceMode
            self.creationToken = creationToken
        }

        public init(dictionary: [String: Any]) throws {
            if let performanceMode = dictionary["PerformanceMode"] as? String { self.performanceMode = PerformanceMode(rawValue: performanceMode) } else { self.performanceMode = nil }
            guard let creationToken = dictionary["CreationToken"] as? String else { throw InitializableError.missingRequiredParam("CreationToken") }
            self.creationToken = creationToken
        }
    }

    public struct FileSystemSize: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "Value", required: true, type: .long), 
            AWSShapeProperty(label: "Timestamp", required: false, type: .timestamp)
        ]
        /// Latest known metered size (in bytes) of data stored in the file system.
        public let value: Int64
        /// Time at which the size of data, returned in the Value field, was determined. The value is the integer number of seconds since 1970-01-01T00:00:00Z.
        public let timestamp: Date?

        public init(value: Int64, timestamp: Date? = nil) {
            self.value = value
            self.timestamp = timestamp
        }

        public init(dictionary: [String: Any]) throws {
            guard let value = dictionary["Value"] as? Int64 else { throw InitializableError.missingRequiredParam("Value") }
            self.value = value
            self.timestamp = dictionary["Timestamp"] as? Date
        }
    }

    public struct DescribeMountTargetSecurityGroupsRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var pathParams: [String: String] {
            return ["MountTargetId": "MountTargetId"]
        }
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "MountTargetId", required: true, type: .string)
        ]
        /// ID of the mount target whose security groups you want to retrieve.
        public let mountTargetId: String

        public init(mountTargetId: String) {
            self.mountTargetId = mountTargetId
        }

        public init(dictionary: [String: Any]) throws {
            guard let mountTargetId = dictionary["MountTargetId"] as? String else { throw InitializableError.missingRequiredParam("MountTargetId") }
            self.mountTargetId = mountTargetId
        }
    }

    public enum PerformanceMode: String, CustomStringConvertible {
        case generalpurpose = "generalPurpose"
        case maxio = "maxIO"
        public var description: String { return self.rawValue }
    }

    public struct CreateMountTargetRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "SecurityGroups", required: false, type: .list), 
            AWSShapeProperty(label: "FileSystemId", required: true, type: .string), 
            AWSShapeProperty(label: "SubnetId", required: true, type: .string), 
            AWSShapeProperty(label: "IpAddress", required: false, type: .string)
        ]
        /// Up to five VPC security group IDs, of the form sg-xxxxxxxx. These must be for the same VPC as subnet specified.
        public let securityGroups: [String]?
        /// ID of the file system for which to create the mount target.
        public let fileSystemId: String
        /// ID of the subnet to add the mount target in.
        public let subnetId: String
        /// Valid IPv4 address within the address range of the specified subnet.
        public let ipAddress: String?

        public init(securityGroups: [String]? = nil, fileSystemId: String, subnetId: String, ipAddress: String? = nil) {
            self.securityGroups = securityGroups
            self.fileSystemId = fileSystemId
            self.subnetId = subnetId
            self.ipAddress = ipAddress
        }

        public init(dictionary: [String: Any]) throws {
            self.securityGroups = dictionary["SecurityGroups"] as? [String]
            guard let fileSystemId = dictionary["FileSystemId"] as? String else { throw InitializableError.missingRequiredParam("FileSystemId") }
            self.fileSystemId = fileSystemId
            guard let subnetId = dictionary["SubnetId"] as? String else { throw InitializableError.missingRequiredParam("SubnetId") }
            self.subnetId = subnetId
            self.ipAddress = dictionary["IpAddress"] as? String
        }
    }

    public struct FileSystemDescription: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "Name", required: false, type: .string), 
            AWSShapeProperty(label: "CreationToken", required: true, type: .string), 
            AWSShapeProperty(label: "SizeInBytes", required: true, type: .structure), 
            AWSShapeProperty(label: "FileSystemId", required: true, type: .string), 
            AWSShapeProperty(label: "LifeCycleState", required: true, type: .enum), 
            AWSShapeProperty(label: "CreationTime", required: true, type: .timestamp), 
            AWSShapeProperty(label: "PerformanceMode", required: true, type: .enum), 
            AWSShapeProperty(label: "NumberOfMountTargets", required: true, type: .integer), 
            AWSShapeProperty(label: "OwnerId", required: true, type: .string)
        ]
        /// You can add tags to a file system, including a Name tag. For more information, see CreateTags. If the file system has a Name tag, Amazon EFS returns the value in this field. 
        public let name: String?
        /// Opaque string specified in the request.
        public let creationToken: String
        /// Latest known metered size (in bytes) of data stored in the file system, in bytes, in its Value field, and the time at which that size was determined in its Timestamp field. The Timestamp value is the integer number of seconds since 1970-01-01T00:00:00Z. Note that the value does not represent the size of a consistent snapshot of the file system, but it is eventually consistent when there are no writes to the file system. That is, the value will represent actual size only if the file system is not modified for a period longer than a couple of hours. Otherwise, the value is not the exact size the file system was at any instant in time. 
        public let sizeInBytes: FileSystemSize
        /// ID of the file system, assigned by Amazon EFS.
        public let fileSystemId: String
        /// Lifecycle phase of the file system.
        public let lifeCycleState: LifeCycleState
        /// Time that the file system was created, in seconds (since 1970-01-01T00:00:00Z).
        public let creationTime: Date
        /// The PerformanceMode of the file system.
        public let performanceMode: PerformanceMode
        /// Current number of mount targets that the file system has. For more information, see CreateMountTarget.
        public let numberOfMountTargets: Int32
        /// AWS account that created the file system. If the file system was created by an IAM user, the parent account to which the user belongs is the owner.
        public let ownerId: String

        public init(name: String? = nil, creationToken: String, sizeInBytes: FileSystemSize, fileSystemId: String, lifeCycleState: LifeCycleState, creationTime: Date, performanceMode: PerformanceMode, numberOfMountTargets: Int32, ownerId: String) {
            self.name = name
            self.creationToken = creationToken
            self.sizeInBytes = sizeInBytes
            self.fileSystemId = fileSystemId
            self.lifeCycleState = lifeCycleState
            self.creationTime = creationTime
            self.performanceMode = performanceMode
            self.numberOfMountTargets = numberOfMountTargets
            self.ownerId = ownerId
        }

        public init(dictionary: [String: Any]) throws {
            self.name = dictionary["Name"] as? String
            guard let creationToken = dictionary["CreationToken"] as? String else { throw InitializableError.missingRequiredParam("CreationToken") }
            self.creationToken = creationToken
            guard let sizeInBytes = dictionary["SizeInBytes"] as? [String: Any] else { throw InitializableError.missingRequiredParam("SizeInBytes") }
            self.sizeInBytes = try Elasticfilesystem.FileSystemSize(dictionary: sizeInBytes)
            guard let fileSystemId = dictionary["FileSystemId"] as? String else { throw InitializableError.missingRequiredParam("FileSystemId") }
            self.fileSystemId = fileSystemId
            guard let rawLifeCycleState = dictionary["LifeCycleState"] as? String, let lifeCycleState = LifeCycleState(rawValue: rawLifeCycleState) else { throw InitializableError.missingRequiredParam("LifeCycleState") }
            self.lifeCycleState = lifeCycleState
            guard let creationTime = dictionary["CreationTime"] as? Date else { throw InitializableError.missingRequiredParam("CreationTime") }
            self.creationTime = creationTime
            guard let rawPerformanceMode = dictionary["PerformanceMode"] as? String, let performanceMode = PerformanceMode(rawValue: rawPerformanceMode) else { throw InitializableError.missingRequiredParam("PerformanceMode") }
            self.performanceMode = performanceMode
            guard let numberOfMountTargets = dictionary["NumberOfMountTargets"] as? Int32 else { throw InitializableError.missingRequiredParam("NumberOfMountTargets") }
            self.numberOfMountTargets = numberOfMountTargets
            guard let ownerId = dictionary["OwnerId"] as? String else { throw InitializableError.missingRequiredParam("OwnerId") }
            self.ownerId = ownerId
        }
    }

    public struct MountTargetDescription: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "SubnetId", required: true, type: .string), 
            AWSShapeProperty(label: "NetworkInterfaceId", required: false, type: .string), 
            AWSShapeProperty(label: "MountTargetId", required: true, type: .string), 
            AWSShapeProperty(label: "IpAddress", required: false, type: .string), 
            AWSShapeProperty(label: "FileSystemId", required: true, type: .string), 
            AWSShapeProperty(label: "LifeCycleState", required: true, type: .enum), 
            AWSShapeProperty(label: "OwnerId", required: false, type: .string)
        ]
        /// ID of the mount target's subnet.
        public let subnetId: String
        /// ID of the network interface that Amazon EFS created when it created the mount target.
        public let networkInterfaceId: String?
        /// System-assigned mount target ID.
        public let mountTargetId: String
        /// Address at which the file system may be mounted via the mount target.
        public let ipAddress: String?
        /// ID of the file system for which the mount target is intended.
        public let fileSystemId: String
        /// Lifecycle state of the mount target.
        public let lifeCycleState: LifeCycleState
        /// AWS account ID that owns the resource.
        public let ownerId: String?

        public init(subnetId: String, networkInterfaceId: String? = nil, mountTargetId: String, ipAddress: String? = nil, fileSystemId: String, lifeCycleState: LifeCycleState, ownerId: String? = nil) {
            self.subnetId = subnetId
            self.networkInterfaceId = networkInterfaceId
            self.mountTargetId = mountTargetId
            self.ipAddress = ipAddress
            self.fileSystemId = fileSystemId
            self.lifeCycleState = lifeCycleState
            self.ownerId = ownerId
        }

        public init(dictionary: [String: Any]) throws {
            guard let subnetId = dictionary["SubnetId"] as? String else { throw InitializableError.missingRequiredParam("SubnetId") }
            self.subnetId = subnetId
            self.networkInterfaceId = dictionary["NetworkInterfaceId"] as? String
            guard let mountTargetId = dictionary["MountTargetId"] as? String else { throw InitializableError.missingRequiredParam("MountTargetId") }
            self.mountTargetId = mountTargetId
            self.ipAddress = dictionary["IpAddress"] as? String
            guard let fileSystemId = dictionary["FileSystemId"] as? String else { throw InitializableError.missingRequiredParam("FileSystemId") }
            self.fileSystemId = fileSystemId
            guard let rawLifeCycleState = dictionary["LifeCycleState"] as? String, let lifeCycleState = LifeCycleState(rawValue: rawLifeCycleState) else { throw InitializableError.missingRequiredParam("LifeCycleState") }
            self.lifeCycleState = lifeCycleState
            self.ownerId = dictionary["OwnerId"] as? String
        }
    }

}