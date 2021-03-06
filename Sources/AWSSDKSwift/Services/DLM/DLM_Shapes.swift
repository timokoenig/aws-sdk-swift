// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension DLM {

    public enum IntervalUnitValues: String, CustomStringConvertible, Codable {
        case hours = "HOURS"
        public var description: String { return self.rawValue }
    }

    public struct GetLifecyclePoliciesResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Policies", required: false, type: .list)
        ]
        /// Summary information about the lifecycle policies.
        public let policies: [LifecyclePolicySummary]?

        public init(policies: [LifecyclePolicySummary]? = nil) {
            self.policies = policies
        }

        private enum CodingKeys: String, CodingKey {
            case policies = "Policies"
        }
    }

    public struct LifecyclePolicySummary: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "State", required: false, type: .enum), 
            AWSShapeMember(label: "PolicyId", required: false, type: .string), 
            AWSShapeMember(label: "Description", required: false, type: .string)
        ]
        /// The activation state of the lifecycle policy.
        public let state: GettablePolicyStateValues?
        /// The identifier of the lifecycle policy.
        public let policyId: String?
        /// The description of the lifecycle policy.
        public let description: String?

        public init(state: GettablePolicyStateValues? = nil, policyId: String? = nil, description: String? = nil) {
            self.state = state
            self.policyId = policyId
            self.description = description
        }

        private enum CodingKeys: String, CodingKey {
            case state = "State"
            case policyId = "PolicyId"
            case description = "Description"
        }
    }

    public struct Schedule: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "CreateRule", required: false, type: .structure), 
            AWSShapeMember(label: "TagsToAdd", required: false, type: .list), 
            AWSShapeMember(label: "CopyTags", required: false, type: .boolean), 
            AWSShapeMember(label: "RetainRule", required: false, type: .structure), 
            AWSShapeMember(label: "Name", required: false, type: .string)
        ]
        /// The create rule.
        public let createRule: CreateRule?
        /// The tags to apply to policy-created resources. These user-defined tags are in addition to the AWS-added lifecycle tags.
        public let tagsToAdd: [Tag]?
        public let copyTags: Bool?
        /// The retain rule.
        public let retainRule: RetainRule?
        /// The name of the schedule.
        public let name: String?

        public init(createRule: CreateRule? = nil, tagsToAdd: [Tag]? = nil, copyTags: Bool? = nil, retainRule: RetainRule? = nil, name: String? = nil) {
            self.createRule = createRule
            self.tagsToAdd = tagsToAdd
            self.copyTags = copyTags
            self.retainRule = retainRule
            self.name = name
        }

        private enum CodingKeys: String, CodingKey {
            case createRule = "CreateRule"
            case tagsToAdd = "TagsToAdd"
            case copyTags = "CopyTags"
            case retainRule = "RetainRule"
            case name = "Name"
        }
    }

    public struct UpdateLifecyclePolicyRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "PolicyDetails", required: false, type: .structure), 
            AWSShapeMember(label: "State", required: false, type: .enum), 
            AWSShapeMember(label: "ExecutionRoleArn", required: false, type: .string), 
            AWSShapeMember(label: "Description", required: false, type: .string), 
            AWSShapeMember(label: "PolicyId", location: .uri(locationName: "policyId"), required: true, type: .string)
        ]
        /// The configuration of the lifecycle policy. Target tags cannot be re-used across policies.
        public let policyDetails: PolicyDetails?
        /// The desired activation state of the lifecycle policy after creation.
        public let state: SettablePolicyStateValues?
        /// The Amazon Resource Name (ARN) of the IAM role used to run the operations specified by the lifecycle policy.
        public let executionRoleArn: String?
        /// A description of the lifecycle policy.
        public let description: String?
        /// The identifier of the lifecycle policy.
        public let policyId: String

        public init(policyDetails: PolicyDetails? = nil, state: SettablePolicyStateValues? = nil, executionRoleArn: String? = nil, description: String? = nil, policyId: String) {
            self.policyDetails = policyDetails
            self.state = state
            self.executionRoleArn = executionRoleArn
            self.description = description
            self.policyId = policyId
        }

        private enum CodingKeys: String, CodingKey {
            case policyDetails = "PolicyDetails"
            case state = "State"
            case executionRoleArn = "ExecutionRoleArn"
            case description = "Description"
            case policyId = "policyId"
        }
    }

    public enum ResourceTypeValues: String, CustomStringConvertible, Codable {
        case volume = "VOLUME"
        public var description: String { return self.rawValue }
    }

    public enum SettablePolicyStateValues: String, CustomStringConvertible, Codable {
        case enabled = "ENABLED"
        case disabled = "DISABLED"
        public var description: String { return self.rawValue }
    }

    public struct CreateLifecyclePolicyResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "PolicyId", required: false, type: .string)
        ]
        /// The identifier of the lifecycle policy.
        public let policyId: String?

        public init(policyId: String? = nil) {
            self.policyId = policyId
        }

        private enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
        }
    }

    public struct LifecyclePolicy: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DateCreated", required: false, type: .timestamp), 
            AWSShapeMember(label: "PolicyId", required: false, type: .string), 
            AWSShapeMember(label: "Description", required: false, type: .string), 
            AWSShapeMember(label: "ExecutionRoleArn", required: false, type: .string), 
            AWSShapeMember(label: "PolicyDetails", required: false, type: .structure), 
            AWSShapeMember(label: "State", required: false, type: .enum), 
            AWSShapeMember(label: "DateModified", required: false, type: .timestamp)
        ]
        /// The local date and time when the lifecycle policy was created.
        public let dateCreated: TimeStamp?
        /// The identifier of the lifecycle policy.
        public let policyId: String?
        /// The description of the lifecycle policy.
        public let description: String?
        /// The Amazon Resource Name (ARN) of the IAM role used to run the operations specified by the lifecycle policy.
        public let executionRoleArn: String?
        /// The configuration of the lifecycle policy
        public let policyDetails: PolicyDetails?
        /// The activation state of the lifecycle policy.
        public let state: GettablePolicyStateValues?
        /// The local date and time when the lifecycle policy was last modified.
        public let dateModified: TimeStamp?

        public init(dateCreated: TimeStamp? = nil, policyId: String? = nil, description: String? = nil, executionRoleArn: String? = nil, policyDetails: PolicyDetails? = nil, state: GettablePolicyStateValues? = nil, dateModified: TimeStamp? = nil) {
            self.dateCreated = dateCreated
            self.policyId = policyId
            self.description = description
            self.executionRoleArn = executionRoleArn
            self.policyDetails = policyDetails
            self.state = state
            self.dateModified = dateModified
        }

        private enum CodingKeys: String, CodingKey {
            case dateCreated = "DateCreated"
            case policyId = "PolicyId"
            case description = "Description"
            case executionRoleArn = "ExecutionRoleArn"
            case policyDetails = "PolicyDetails"
            case state = "State"
            case dateModified = "DateModified"
        }
    }

    public struct PolicyDetails: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ResourceTypes", required: false, type: .list), 
            AWSShapeMember(label: "TargetTags", required: false, type: .list), 
            AWSShapeMember(label: "Schedules", required: false, type: .list)
        ]
        /// The resource type.
        public let resourceTypes: [ResourceTypeValues]?
        /// The single tag that identifies targeted resources for this policy.
        public let targetTags: [Tag]?
        /// The schedule of policy-defined actions.
        public let schedules: [Schedule]?

        public init(resourceTypes: [ResourceTypeValues]? = nil, targetTags: [Tag]? = nil, schedules: [Schedule]? = nil) {
            self.resourceTypes = resourceTypes
            self.targetTags = targetTags
            self.schedules = schedules
        }

        private enum CodingKeys: String, CodingKey {
            case resourceTypes = "ResourceTypes"
            case targetTags = "TargetTags"
            case schedules = "Schedules"
        }
    }

    public struct GetLifecyclePolicyRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "PolicyId", location: .uri(locationName: "policyId"), required: true, type: .string)
        ]
        /// The identifier of the lifecycle policy.
        public let policyId: String

        public init(policyId: String) {
            self.policyId = policyId
        }

        private enum CodingKeys: String, CodingKey {
            case policyId = "policyId"
        }
    }

    public struct CreateLifecyclePolicyRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "PolicyDetails", required: true, type: .structure), 
            AWSShapeMember(label: "State", required: true, type: .enum), 
            AWSShapeMember(label: "ExecutionRoleArn", required: true, type: .string), 
            AWSShapeMember(label: "Description", required: true, type: .string)
        ]
        /// The configuration details of the lifecycle policy. Target tags cannot be re-used across lifecycle policies.
        public let policyDetails: PolicyDetails
        /// The desired activation state of the lifecycle policy after creation.
        public let state: SettablePolicyStateValues
        /// The Amazon Resource Name (ARN) of the IAM role used to run the operations specified by the lifecycle policy.
        public let executionRoleArn: String
        /// A description of the lifecycle policy. The characters ^[0-9A-Za-z _-]+$ are supported.
        public let description: String

        public init(policyDetails: PolicyDetails, state: SettablePolicyStateValues, executionRoleArn: String, description: String) {
            self.policyDetails = policyDetails
            self.state = state
            self.executionRoleArn = executionRoleArn
            self.description = description
        }

        private enum CodingKeys: String, CodingKey {
            case policyDetails = "PolicyDetails"
            case state = "State"
            case executionRoleArn = "ExecutionRoleArn"
            case description = "Description"
        }
    }

    public enum GettablePolicyStateValues: String, CustomStringConvertible, Codable {
        case enabled = "ENABLED"
        case disabled = "DISABLED"
        case error = "ERROR"
        public var description: String { return self.rawValue }
    }

    public struct DeleteLifecyclePolicyRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "PolicyId", location: .uri(locationName: "policyId"), required: true, type: .string)
        ]
        /// The identifier of the lifecycle policy.
        public let policyId: String

        public init(policyId: String) {
            self.policyId = policyId
        }

        private enum CodingKeys: String, CodingKey {
            case policyId = "policyId"
        }
    }

    public struct RetainRule: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Count", required: true, type: .integer)
        ]
        /// The number of snapshots to keep for each volume, up to a maximum of 1000.
        public let count: Int32

        public init(count: Int32) {
            self.count = count
        }

        private enum CodingKeys: String, CodingKey {
            case count = "Count"
        }
    }

    public struct DeleteLifecyclePolicyResponse: AWSShape {

    }

    public struct CreateRule: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "IntervalUnit", required: true, type: .enum), 
            AWSShapeMember(label: "Times", required: false, type: .list), 
            AWSShapeMember(label: "Interval", required: true, type: .integer)
        ]
        /// The interval unit.
        public let intervalUnit: IntervalUnitValues
        /// The time, in UTC, to start the operation. The operation occurs within a one-hour window following the specified time.
        public let times: [String]?
        /// The interval. The supported values are 12 and 24.
        public let interval: Int32

        public init(intervalUnit: IntervalUnitValues, times: [String]? = nil, interval: Int32) {
            self.intervalUnit = intervalUnit
            self.times = times
            self.interval = interval
        }

        private enum CodingKeys: String, CodingKey {
            case intervalUnit = "IntervalUnit"
            case times = "Times"
            case interval = "Interval"
        }
    }

    public struct UpdateLifecyclePolicyResponse: AWSShape {

    }

    public struct GetLifecyclePolicyResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Policy", required: false, type: .structure)
        ]
        /// Detailed information about the lifecycle policy.
        public let policy: LifecyclePolicy?

        public init(policy: LifecyclePolicy? = nil) {
            self.policy = policy
        }

        private enum CodingKeys: String, CodingKey {
            case policy = "Policy"
        }
    }

    public struct Tag: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Value", required: true, type: .string), 
            AWSShapeMember(label: "Key", required: true, type: .string)
        ]
        /// The tag value.
        public let value: String
        /// The tag key.
        public let key: String

        public init(value: String, key: String) {
            self.value = value
            self.key = key
        }

        private enum CodingKeys: String, CodingKey {
            case value = "Value"
            case key = "Key"
        }
    }

    public struct GetLifecyclePoliciesRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "TargetTags", location: .querystring(locationName: "targetTags"), required: false, type: .list), 
            AWSShapeMember(label: "ResourceTypes", location: .querystring(locationName: "resourceTypes"), required: false, type: .list), 
            AWSShapeMember(label: "TagsToAdd", location: .querystring(locationName: "tagsToAdd"), required: false, type: .list), 
            AWSShapeMember(label: "PolicyIds", location: .querystring(locationName: "policyIds"), required: false, type: .list), 
            AWSShapeMember(label: "State", location: .querystring(locationName: "state"), required: false, type: .enum)
        ]
        /// The target tag for a policy. Tags are strings in the format key=value.
        public let targetTags: [String]?
        /// The resource type.
        public let resourceTypes: [ResourceTypeValues]?
        /// The tags to add to objects created by the policy. Tags are strings in the format key=value. These user-defined tags are added in addition to the AWS-added lifecycle tags.
        public let tagsToAdd: [String]?
        /// The identifiers of the data lifecycle policies.
        public let policyIds: [String]?
        /// The activation state.
        public let state: GettablePolicyStateValues?

        public init(targetTags: [String]? = nil, resourceTypes: [ResourceTypeValues]? = nil, tagsToAdd: [String]? = nil, policyIds: [String]? = nil, state: GettablePolicyStateValues? = nil) {
            self.targetTags = targetTags
            self.resourceTypes = resourceTypes
            self.tagsToAdd = tagsToAdd
            self.policyIds = policyIds
            self.state = state
        }

        private enum CodingKeys: String, CodingKey {
            case targetTags = "targetTags"
            case resourceTypes = "resourceTypes"
            case tagsToAdd = "tagsToAdd"
            case policyIds = "policyIds"
            case state = "state"
        }
    }

}