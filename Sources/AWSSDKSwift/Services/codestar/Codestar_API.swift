// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

/**
AWS CodeStar This is the API reference for AWS CodeStar. This reference provides descriptions of the operations and data types for the AWS CodeStar API along with usage examples. You can use the AWS CodeStar API to work with: Projects and their resources, by calling the following:    DeleteProject, which deletes a project in AWS CodeStar.    DescribeProject, which lists the attributes of a project.    ListProjects, which lists all AWS CodeStar projects associated with your AWS account.    ListResources, which lists the resources associated with an AWS CodeStar project.    UpdateProject, which updates the attributes of an AWS CodeStar project.   Teams and team members, by calling the following:    AssociateTeamMember, which adds an IAM user to the team for an AWS CodeStar project.    DisassociateTeamMember, which removes an IAM user from the team for an AWS CodeStar project.    ListTeamMembers, which lists all the IAM users in the team for an AWS CodeStar project, including their roles and attributes.   Users, by calling the following:    CreateUserProfile, which creates a user profile that contains data associated with the user across all AWS CodeStar projects.    DeleteUserProfile, which deletes all user profile information across all AWS CodeStar projects.    DescribeUserProfile, which describes the profile of a user.    ListUserProfiles, which lists all AWS CodeStar user profiles.    UpdateUserProfile, which updates the profile for an AWS CodeStar user.   
*/
public struct Codestar {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "CodeStar_20170419",
            service: "codestar",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-04-19",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [CodestarError.self]
        )
    }

    ///  Deletes a user profile in AWS CodeStar, including all personal preference data associated with that profile, such as display name and email address. It does not delete the history of that user, for example the history of commits made by that user.
    public func deleteUserProfile(_ input: DeleteUserProfileRequest) throws -> DeleteUserProfileResult {
        return try client.send(operation: "DeleteUserProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all projects in AWS CodeStar associated with your AWS account.
    public func listProjects(_ input: ListProjectsRequest) throws -> ListProjectsResult {
        return try client.send(operation: "ListProjects", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes a user in AWS CodeStar and the user attributes across all projects.
    public func describeUserProfile(_ input: DescribeUserProfileRequest) throws -> DescribeUserProfileResult {
        return try client.send(operation: "DescribeUserProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Reserved for future use. To create a project, use the AWS CodeStar console.
    public func createProject(_ input: CreateProjectRequest) throws -> CreateProjectResult {
        return try client.send(operation: "CreateProject", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates a project in AWS CodeStar.
    public func updateProject(_ input: UpdateProjectRequest) throws -> UpdateProjectResult {
        return try client.send(operation: "UpdateProject", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates a user's profile in AWS CodeStar. The user profile is not project-specific. Information in the user profile is displayed wherever the user's information appears to other users in AWS CodeStar. 
    public func updateUserProfile(_ input: UpdateUserProfileRequest) throws -> UpdateUserProfileResult {
        return try client.send(operation: "UpdateUserProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a project, including project resources. Does not delete users associated with the project, but does delete the IAM roles that allowed access to the project.
    public func deleteProject(_ input: DeleteProjectRequest) throws -> DeleteProjectResult {
        return try client.send(operation: "DeleteProject", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists resources associated with a project in AWS CodeStar.
    public func listResources(_ input: ListResourcesRequest) throws -> ListResourcesResult {
        return try client.send(operation: "ListResources", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all team members associated with a project.
    public func listTeamMembers(_ input: ListTeamMembersRequest) throws -> ListTeamMembersResult {
        return try client.send(operation: "ListTeamMembers", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds an IAM user to the team for an AWS CodeStar project.
    public func associateTeamMember(_ input: AssociateTeamMemberRequest) throws -> AssociateTeamMemberResult {
        return try client.send(operation: "AssociateTeamMember", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a profile for a user that includes user preferences, such as the display name and email address assocciated with the user, in AWS CodeStar. The user profile is not project-specific. Information in the user profile is displayed wherever the user's information appears to other users in AWS CodeStar.
    public func createUserProfile(_ input: CreateUserProfileRequest) throws -> CreateUserProfileResult {
        return try client.send(operation: "CreateUserProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes a user from a project. Removing a user from a project also removes the IAM policies from that user that allowed access to the project and its resources. Disassociating a team member does not remove that user's profile from AWS CodeStar. It does not remove the user from IAM.
    public func disassociateTeamMember(_ input: DisassociateTeamMemberRequest) throws -> DisassociateTeamMemberResult {
        return try client.send(operation: "DisassociateTeamMember", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all the user profiles configured for your AWS account in AWS CodeStar.
    public func listUserProfiles(_ input: ListUserProfilesRequest) throws -> ListUserProfilesResult {
        return try client.send(operation: "ListUserProfiles", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates a team member's attributes in an AWS CodeStar project. For example, you can change a team member's role in the project, or change whether they have remote access to project resources.
    public func updateTeamMember(_ input: UpdateTeamMemberRequest) throws -> UpdateTeamMemberResult {
        return try client.send(operation: "UpdateTeamMember", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes a project and its resources.
    public func describeProject(_ input: DescribeProjectRequest) throws -> DescribeProjectResult {
        return try client.send(operation: "DescribeProject", path: "/", httpMethod: "POST", input: input)
    }


}