// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

/**
AWS Support The AWS Support API reference is intended for programmers who need detailed information about the AWS Support operations and data types. This service enables you to manage your AWS Support cases programmatically. It uses HTTP methods that return results in JSON format. The AWS Support service also exposes a set of Trusted Advisor features. You can retrieve a list of checks and their descriptions, get check results, specify checks to refresh, and get the refresh status of checks.  The following list describes the AWS Support case management operations:    Service names, issue categories, and available severity levels. The DescribeServices and DescribeSeverityLevels operations return AWS service names, service codes, service categories, and problem severity levels. You use these values when you call the CreateCase operation.     Case creation, case details, and case resolution. The CreateCase, DescribeCases, DescribeAttachment, and ResolveCase operations create AWS Support cases, retrieve information about cases, and resolve cases.    Case communication. The DescribeCommunications, AddCommunicationToCase, and AddAttachmentsToSet operations retrieve and add communications and attachments to AWS Support cases.    The following list describes the operations available from the AWS Support service for Trusted Advisor:    DescribeTrustedAdvisorChecks returns the list of checks that run against your AWS resources.   Using the checkId for a specific check returned by DescribeTrustedAdvisorChecks, you can call DescribeTrustedAdvisorCheckResult to obtain the results for the check you specified.    DescribeTrustedAdvisorCheckSummaries returns summarized results for one or more Trusted Advisor checks.    RefreshTrustedAdvisorCheck requests that Trusted Advisor rerun a specified check.     DescribeTrustedAdvisorCheckRefreshStatuses reports the refresh status of one or more checks.    For authentication of requests, AWS Support uses Signature Version 4 Signing Process. See About the AWS Support API in the AWS Support User Guide for information about how to use this service to create and manage your support cases, and how to call Trusted Advisor for results of checks on your resources. 
*/
public struct Support {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "AWSSupport_20130415",
            service: "support",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2013-04-15",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [SupportError.self]
        )
    }

    ///  Adds additional customer communication to an AWS Support case. You use the caseId value to identify the case to add communication to. You can list a set of email addresses to copy on the communication using the ccEmailAddresses value. The communicationBody value contains the text of the communication. The response indicates the success or failure of the request. This operation implements a subset of the features of the AWS Support Center.
    public func addCommunicationToCase(_ input: AddCommunicationToCaseRequest) throws -> AddCommunicationToCaseResponse {
        return try client.send(operation: "AddCommunicationToCase", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of cases that you specify by passing one or more case IDs. In addition, you can filter the cases by date by setting values for the afterTime and beforeTime request parameters. You can set values for the includeResolvedCases and includeCommunications request parameters to control how much information is returned.  Case data is available for 12 months after creation. If a case was created more than 12 months ago, a request for data might cause an error. The response returns the following in JSON format:   One or more CaseDetails data types.    One or more nextToken values, which specify where to paginate the returned records represented by the CaseDetails objects.  
    public func describeCases(_ input: DescribeCasesRequest) throws -> DescribeCasesResponse {
        return try client.send(operation: "DescribeCases", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the results of the Trusted Advisor check that has the specified check ID. Check IDs can be obtained by calling DescribeTrustedAdvisorChecks. The response contains a TrustedAdvisorCheckResult object, which contains these three objects:    TrustedAdvisorCategorySpecificSummary     TrustedAdvisorResourceDetail     TrustedAdvisorResourcesSummary    In addition, the response contains these fields:    status. The alert status of the check: "ok" (green), "warning" (yellow), "error" (red), or "not_available".    timestamp. The time of the last refresh of the check.    checkId. The unique identifier for the check.  
    public func describeTrustedAdvisorCheckResult(_ input: DescribeTrustedAdvisorCheckResultRequest) throws -> DescribeTrustedAdvisorCheckResultResponse {
        return try client.send(operation: "DescribeTrustedAdvisorCheckResult", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about all available Trusted Advisor checks, including name, ID, category, description, and metadata. You must specify a language code; English ("en") and Japanese ("ja") are currently supported. The response contains a TrustedAdvisorCheckDescription for each check.
    public func describeTrustedAdvisorChecks(_ input: DescribeTrustedAdvisorChecksRequest) throws -> DescribeTrustedAdvisorChecksResponse {
        return try client.send(operation: "DescribeTrustedAdvisorChecks", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the summaries of the results of the Trusted Advisor checks that have the specified check IDs. Check IDs can be obtained by calling DescribeTrustedAdvisorChecks. The response contains an array of TrustedAdvisorCheckSummary objects.
    public func describeTrustedAdvisorCheckSummaries(_ input: DescribeTrustedAdvisorCheckSummariesRequest) throws -> DescribeTrustedAdvisorCheckSummariesResponse {
        return try client.send(operation: "DescribeTrustedAdvisorCheckSummaries", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds one or more attachments to an attachment set. If an attachmentSetId is not specified, a new attachment set is created, and the ID of the set is returned in the response. If an attachmentSetId is specified, the attachments are added to the specified set, if it exists. An attachment set is a temporary container for attachments that are to be added to a case or case communication. The set is available for one hour after it is created; the expiryTime returned in the response indicates when the set expires. The maximum number of attachments in a set is 3, and the maximum size of any attachment in the set is 5 MB.
    public func addAttachmentsToSet(_ input: AddAttachmentsToSetRequest) throws -> AddAttachmentsToSetResponse {
        return try client.send(operation: "AddAttachmentsToSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the refresh status of the Trusted Advisor checks that have the specified check IDs. Check IDs can be obtained by calling DescribeTrustedAdvisorChecks.  Some checks are refreshed automatically, and their refresh statuses cannot be retrieved by using this operation. Use of the DescribeTrustedAdvisorCheckRefreshStatuses operation for these checks causes an InvalidParameterValue error. 
    public func describeTrustedAdvisorCheckRefreshStatuses(_ input: DescribeTrustedAdvisorCheckRefreshStatusesRequest) throws -> DescribeTrustedAdvisorCheckRefreshStatusesResponse {
        return try client.send(operation: "DescribeTrustedAdvisorCheckRefreshStatuses", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the list of severity levels that you can assign to an AWS Support case. The severity level for a case is also a field in the CaseDetails data type included in any CreateCase request. 
    public func describeSeverityLevels(_ input: DescribeSeverityLevelsRequest) throws -> DescribeSeverityLevelsResponse {
        return try client.send(operation: "DescribeSeverityLevels", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the current list of AWS services and a list of service categories that applies to each one. You then use service names and categories in your CreateCase requests. Each AWS service has its own set of categories. The service codes and category codes correspond to the values that are displayed in the Service and Category drop-down lists on the AWS Support Center Create Case page. The values in those fields, however, do not necessarily match the service codes and categories returned by the DescribeServices request. Always use the service codes and categories obtained programmatically. This practice ensures that you always have the most recent set of service and category codes.
    public func describeServices(_ input: DescribeServicesRequest) throws -> DescribeServicesResponse {
        return try client.send(operation: "DescribeServices", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns communications (and attachments) for one or more support cases. You can use the afterTime and beforeTime parameters to filter by date. You can use the caseId parameter to restrict the results to a particular case. Case data is available for 12 months after creation. If a case was created more than 12 months ago, a request for data might cause an error. You can use the maxResults and nextToken parameters to control the pagination of the result set. Set maxResults to the number of cases you want displayed on each page, and use nextToken to specify the resumption of pagination.
    public func describeCommunications(_ input: DescribeCommunicationsRequest) throws -> DescribeCommunicationsResponse {
        return try client.send(operation: "DescribeCommunications", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the attachment that has the specified ID. Attachment IDs are generated by the case management system when you add an attachment to a case or case communication. Attachment IDs are returned in the AttachmentDetails objects that are returned by the DescribeCommunications operation.
    public func describeAttachment(_ input: DescribeAttachmentRequest) throws -> DescribeAttachmentResponse {
        return try client.send(operation: "DescribeAttachment", path: "/", httpMethod: "POST", input: input)
    }

    ///  Takes a caseId and returns the initial state of the case along with the state of the case after the call to ResolveCase completed.
    public func resolveCase(_ input: ResolveCaseRequest) throws -> ResolveCaseResponse {
        return try client.send(operation: "ResolveCase", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new case in the AWS Support Center. This operation is modeled on the behavior of the AWS Support Center Create Case page. Its parameters require you to specify the following information:     issueType. The type of issue for the case. You can specify either "customer-service" or "technical." If you do not indicate a value, the default is "technical."     serviceCode. The code for an AWS service. You obtain the serviceCode by calling DescribeServices.     categoryCode. The category for the service defined for the serviceCode value. You also obtain the category code for a service by calling DescribeServices. Each AWS service defines its own set of category codes.     severityCode. A value that indicates the urgency of the case, which in turn determines the response time according to your service level agreement with AWS Support. You obtain the SeverityCode by calling DescribeSeverityLevels.    subject. The Subject field on the AWS Support Center Create Case page.    communicationBody. The Description field on the AWS Support Center Create Case page.    attachmentSetId. The ID of a set of attachments that has been created by using AddAttachmentsToSet.    language. The human language in which AWS Support handles the case. English and Japanese are currently supported.    ccEmailAddresses. The AWS Support Center CC field on the Create Case page. You can list email addresses to be copied on any correspondence about the case. The account that opens the case is already identified by passing the AWS Credentials in the HTTP POST method or in a method or function call from one of the programming languages supported by an AWS SDK.     To add additional communication or attachments to an existing case, use AddCommunicationToCase.  A successful CreateCase request returns an AWS Support case number. Case numbers are used by the DescribeCases operation to retrieve existing AWS Support cases. 
    public func createCase(_ input: CreateCaseRequest) throws -> CreateCaseResponse {
        return try client.send(operation: "CreateCase", path: "/", httpMethod: "POST", input: input)
    }

    ///  Requests a refresh of the Trusted Advisor check that has the specified check ID. Check IDs can be obtained by calling DescribeTrustedAdvisorChecks.  Some checks are refreshed automatically, and they cannot be refreshed by using this operation. Use of the RefreshTrustedAdvisorCheck operation for these checks causes an InvalidParameterValue error.  The response contains a TrustedAdvisorCheckRefreshStatus object, which contains these fields:    status. The refresh status of the check: "none", "enqueued", "processing", "success", or "abandoned".    millisUntilNextRefreshable. The amount of time, in milliseconds, until the check is eligible for refresh.    checkId. The unique identifier for the check.  
    public func refreshTrustedAdvisorCheck(_ input: RefreshTrustedAdvisorCheckRequest) throws -> RefreshTrustedAdvisorCheckResponse {
        return try client.send(operation: "RefreshTrustedAdvisorCheck", path: "/", httpMethod: "POST", input: input)
    }


}