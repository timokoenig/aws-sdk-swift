// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

/**
Amazon Lightsail is the easiest way to get started with AWS for developers who just need virtual private servers. Lightsail includes everything you need to launch your project quickly - a virtual machine, SSD-based storage, data transfer, DNS management, and a static IP - for a low, predictable price. You manage those Lightsail servers through the Lightsail console or by using the API or command-line interface (CLI). For more information about Lightsail concepts and tasks, see the Lightsail Dev Guide. To use the Lightsail API or the CLI, you will need to use AWS Identity and Access Management (IAM) to generate access keys. For details about how to set this up, see the Lightsail Dev Guide.
*/
public struct Lightsail {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "Lightsail_20161128",
            service: "lightsail",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2016-11-28",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [LightsailError.self]
        )
    }

    ///  Returns information about a specific domain recordset.
    public func getDomain(_ input: GetDomainRequest) throws -> GetDomainResult {
        return try client.send(operation: "GetDomain", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about all operations. Results are returned from oldest to newest, up to a maximum of 200. Results can be paged by making each subsequent call to GetOperations use the maximum (last) statusChangedAt value from the previous request.
    public func getOperations(_ input: GetOperationsRequest) throws -> GetOperationsResult {
        return try client.send(operation: "GetOperations", path: "/", httpMethod: "POST", input: input)
    }

    ///  Restarts a specific instance. When your Amazon Lightsail instance is finished rebooting, Lightsail assigns a new public IP address. To use the same IP address after restarting, create a static IP address and attach it to the instance.
    public func rebootInstance(_ input: RebootInstanceRequest) throws -> RebootInstanceResult {
        return try client.send(operation: "RebootInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a specific static IP from your account.
    public func releaseStaticIp(_ input: ReleaseStaticIpRequest) throws -> ReleaseStaticIpResult {
        return try client.send(operation: "ReleaseStaticIp", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a specific domain entry.
    public func deleteDomainEntry(_ input: DeleteDomainEntryRequest) throws -> DeleteDomainEntryResult {
        return try client.send(operation: "DeleteDomainEntry", path: "/", httpMethod: "POST", input: input)
    }

    ///  Attempts to unpeer the Lightsail VPC from the user's default VPC.
    public func unpeerVpc(_ input: UnpeerVpcRequest) throws -> UnpeerVpcResult {
        return try client.send(operation: "UnpeerVpc", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the state of a specific instance. Works on one instance at a time.
    public func getInstanceState(_ input: GetInstanceStateRequest) throws -> GetInstanceStateResult {
        return try client.send(operation: "GetInstanceState", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a specific Amazon Lightsail instance, which is a virtual private server.
    public func getInstance(_ input: GetInstanceRequest) throws -> GetInstanceResult {
        return try client.send(operation: "GetInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the names of all active (not deleted) resources.
    public func getActiveNames(_ input: GetActiveNamesRequest) throws -> GetActiveNamesResult {
        return try client.send(operation: "GetActiveNames", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about all key pairs in the user's account.
    public func getKeyPairs(_ input: GetKeyPairsRequest) throws -> GetKeyPairsResult {
        return try client.send(operation: "GetKeyPairs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a snapshot of a specific virtual private server, or instance. You can use a snapshot to create a new instance that is based on that snapshot.
    public func createInstanceSnapshot(_ input: CreateInstanceSnapshotRequest) throws -> CreateInstanceSnapshotResult {
        return try client.send(operation: "CreateInstanceSnapshot", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of all valid regions for Amazon Lightsail. Use the include availability zones parameter to also return the availability zones in a region.
    public func getRegions(_ input: GetRegionsRequest) throws -> GetRegionsResult {
        return try client.send(operation: "GetRegions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a Boolean value indicating whether your Lightsail VPC is peered.
    public func isVpcPeered(_ input: IsVpcPeeredRequest) throws -> IsVpcPeeredResult {
        return try client.send(operation: "IsVpcPeered", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a specific key pair.
    public func getKeyPair(_ input: GetKeyPairRequest) throws -> GetKeyPairResult {
        return try client.send(operation: "GetKeyPair", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates a domain recordset after it is created.
    public func updateDomainEntry(_ input: UpdateDomainEntryRequest) throws -> UpdateDomainEntryResult {
        return try client.send(operation: "UpdateDomainEntry", path: "/", httpMethod: "POST", input: input)
    }

    ///  Attaches a static IP address to a specific Amazon Lightsail instance.
    public func attachStaticIp(_ input: AttachStaticIpRequest) throws -> AttachStaticIpResult {
        return try client.send(operation: "AttachStaticIp", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the list of available instance images, or blueprints. You can use a blueprint to create a new virtual private server already running a specific operating system, as well as a preinstalled app or development stack. The software each instance is running depends on the blueprint image you choose.
    public func getBlueprints(_ input: GetBlueprintsRequest) throws -> GetBlueprintsResult {
        return try client.send(operation: "GetBlueprints", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns all instance snapshots for the user's account.
    public func getInstanceSnapshots(_ input: GetInstanceSnapshotsRequest) throws -> GetInstanceSnapshotsResult {
        return try client.send(operation: "GetInstanceSnapshots", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns temporary SSH keys you can use to connect to a specific virtual private server, or instance.
    public func getInstanceAccessDetails(_ input: GetInstanceAccessDetailsRequest) throws -> GetInstanceAccessDetailsResult {
        return try client.send(operation: "GetInstanceAccessDetails", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates one of the following entry records associated with the domain: A record, CNAME record, TXT record, or MX record.
    public func createDomainEntry(_ input: CreateDomainEntryRequest) throws -> CreateDomainEntryResult {
        return try client.send(operation: "CreateDomainEntry", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified domain recordset and all of its domain records.
    public func deleteDomain(_ input: DeleteDomainRequest) throws -> DeleteDomainResult {
        return try client.send(operation: "DeleteDomain", path: "/", httpMethod: "POST", input: input)
    }

    ///  Imports a public SSH key from a specific key pair.
    public func importKeyPair(_ input: ImportKeyPairRequest) throws -> ImportKeyPairResult {
        return try client.send(operation: "ImportKeyPair", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the data points for the specified Amazon Lightsail instance metric, given an instance name.
    public func getInstanceMetricData(_ input: GetInstanceMetricDataRequest) throws -> GetInstanceMetricDataResult {
        return try client.send(operation: "GetInstanceMetricData", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates sn SSH key pair.
    public func createKeyPair(_ input: CreateKeyPairRequest) throws -> CreateKeyPairResult {
        return try client.send(operation: "CreateKeyPair", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts a specific Amazon Lightsail instance from a stopped state. To restart an instance, use the reboot instance operation.
    public func startInstance(_ input: StartInstanceRequest) throws -> StartInstanceResult {
        return try client.send(operation: "StartInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Detaches a static IP from the Amazon Lightsail instance to which it is attached.
    public func detachStaticIp(_ input: DetachStaticIpRequest) throws -> DetachStaticIpResult {
        return try client.send(operation: "DetachStaticIp", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of all domains in the user's account.
    public func getDomains(_ input: GetDomainsRequest) throws -> GetDomainsResult {
        return try client.send(operation: "GetDomains", path: "/", httpMethod: "POST", input: input)
    }

    ///  Allocates a static IP address.
    public func allocateStaticIp(_ input: AllocateStaticIpRequest) throws -> AllocateStaticIpResult {
        return try client.send(operation: "AllocateStaticIp", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a domain resource for the specified domain (e.g., example.com).
    public func createDomain(_ input: CreateDomainRequest) throws -> CreateDomainResult {
        return try client.send(operation: "CreateDomain", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about all static IPs in the user's account.
    public func getStaticIps(_ input: GetStaticIpsRequest) throws -> GetStaticIpsResult {
        return try client.send(operation: "GetStaticIps", path: "/", httpMethod: "POST", input: input)
    }

    ///  Stops a specific Amazon Lightsail instance that is currently running.
    public func stopInstance(_ input: StopInstanceRequest) throws -> StopInstanceResult {
        return try client.send(operation: "StopInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Closes the public ports on a specific Amazon Lightsail instance.
    public func closeInstancePublicPorts(_ input: CloseInstancePublicPortsRequest) throws -> CloseInstancePublicPortsResult {
        return try client.send(operation: "CloseInstancePublicPorts", path: "/", httpMethod: "POST", input: input)
    }

    ///  Downloads the default SSH key pair from the user's account.
    public func downloadDefaultKeyPair(_ input: DownloadDefaultKeyPairRequest) throws -> DownloadDefaultKeyPairResult {
        return try client.send(operation: "DownloadDefaultKeyPair", path: "/", httpMethod: "POST", input: input)
    }

    ///  Uses a specific snapshot as a blueprint for creating one or more new instances that are based on that identical configuration.
    public func createInstancesFromSnapshot(_ input: CreateInstancesFromSnapshotRequest) throws -> CreateInstancesFromSnapshotResult {
        return try client.send(operation: "CreateInstancesFromSnapshot", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates one or more Amazon Lightsail virtual private servers, or instances.
    public func createInstances(_ input: CreateInstancesRequest) throws -> CreateInstancesResult {
        return try client.send(operation: "CreateInstances", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about all Amazon Lightsail virtual private servers, or instances.
    public func getInstances(_ input: GetInstancesRequest) throws -> GetInstancesResult {
        return try client.send(operation: "GetInstances", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a specific operation. Operations include events such as when you create an instance, allocate a static IP, attach a static IP, and so on.
    public func getOperation(_ input: GetOperationRequest) throws -> GetOperationResult {
        return try client.send(operation: "GetOperation", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a specific snapshot of a virtual private server (or instance).
    public func deleteInstanceSnapshot(_ input: DeleteInstanceSnapshotRequest) throws -> DeleteInstanceSnapshotResult {
        return try client.send(operation: "DeleteInstanceSnapshot", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the list of bundles that are available for purchase. A bundle describes the specs for your virtual private server (or instance).
    public func getBundles(_ input: GetBundlesRequest) throws -> GetBundlesResult {
        return try client.send(operation: "GetBundles", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the port states for a specific virtual private server, or instance.
    public func getInstancePortStates(_ input: GetInstancePortStatesRequest) throws -> GetInstancePortStatesResult {
        return try client.send(operation: "GetInstancePortStates", path: "/", httpMethod: "POST", input: input)
    }

    ///  Tries to peer the Lightsail VPC with the user's default VPC.
    public func peerVpc(_ input: PeerVpcRequest) throws -> PeerVpcResult {
        return try client.send(operation: "PeerVpc", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds public ports to an Amazon Lightsail instance.
    public func openInstancePublicPorts(_ input: OpenInstancePublicPortsRequest) throws -> OpenInstancePublicPortsResult {
        return try client.send(operation: "OpenInstancePublicPorts", path: "/", httpMethod: "POST", input: input)
    }

    ///  Sets the specified open ports for an Amazon Lightsail instance, and closes all ports for every protocol not included in the current request.
    public func putInstancePublicPorts(_ input: PutInstancePublicPortsRequest) throws -> PutInstancePublicPortsResult {
        return try client.send(operation: "PutInstancePublicPorts", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets operations for a specific resource (e.g., an instance or a static IP).
    public func getOperationsForResource(_ input: GetOperationsForResourceRequest) throws -> GetOperationsForResourceResult {
        return try client.send(operation: "GetOperationsForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a specific SSH key pair.
    public func deleteKeyPair(_ input: DeleteKeyPairRequest) throws -> DeleteKeyPairResult {
        return try client.send(operation: "DeleteKeyPair", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a specific instance snapshot.
    public func getInstanceSnapshot(_ input: GetInstanceSnapshotRequest) throws -> GetInstanceSnapshotResult {
        return try client.send(operation: "GetInstanceSnapshot", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a specific Amazon Lightsail virtual private server, or instance.
    public func deleteInstance(_ input: DeleteInstanceRequest) throws -> DeleteInstanceResult {
        return try client.send(operation: "DeleteInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a specific static IP.
    public func getStaticIp(_ input: GetStaticIpRequest) throws -> GetStaticIpResult {
        return try client.send(operation: "GetStaticIp", path: "/", httpMethod: "POST", input: input)
    }


}