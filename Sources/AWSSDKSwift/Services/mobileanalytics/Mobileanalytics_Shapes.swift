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

extension Mobileanalytics {

    public struct Event: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "metrics", required: false, type: .map), 
            AWSShapeProperty(label: "session", required: false, type: .structure), 
            AWSShapeProperty(label: "attributes", required: false, type: .map), 
            AWSShapeProperty(label: "timestamp", required: true, type: .string), 
            AWSShapeProperty(label: "eventType", required: true, type: .string), 
            AWSShapeProperty(label: "version", required: false, type: .string)
        ]
        /// A collection of key-value pairs that gives additional, measurable context to the event. The key-value pairs are specified by the developer. This collection can be empty or the attribute object can be omitted.
        public let metrics: [String: Double]?
        /// The session the event occured within. 
        public let session: Session?
        /// A collection of key-value pairs that give additional context to the event. The key-value pairs are specified by the developer. This collection can be empty or the attribute object can be omitted.
        public let attributes: [String: String]?
        /// The time the event occurred in ISO 8601 standard date time format. For example, 2014-06-30T19:07:47.885Z
        public let timestamp: String
        /// A name signifying an event that occurred in your app. This is used for grouping and aggregating like events together for reporting purposes.
        public let eventType: String
        /// The version of the event.
        public let version: String?

        public init(metrics: [String: Double]? = nil, session: Session? = nil, attributes: [String: String]? = nil, timestamp: String, eventType: String, version: String? = nil) {
            self.metrics = metrics
            self.session = session
            self.attributes = attributes
            self.timestamp = timestamp
            self.eventType = eventType
            self.version = version
        }

        public init(dictionary: [String: Any]) throws {
            if let metrics = dictionary["metrics"] as? [String: Double] {
                self.metrics = metrics
            } else { 
                self.metrics = nil
            }
            if let session = dictionary["session"] as? [String: Any] { self.session = try Mobileanalytics.Session(dictionary: session) } else { self.session = nil }
            if let attributes = dictionary["attributes"] as? [String: String] {
                self.attributes = attributes
            } else { 
                self.attributes = nil
            }
            guard let timestamp = dictionary["timestamp"] as? String else { throw InitializableError.missingRequiredParam("timestamp") }
            self.timestamp = timestamp
            guard let eventType = dictionary["eventType"] as? String else { throw InitializableError.missingRequiredParam("eventType") }
            self.eventType = eventType
            self.version = dictionary["version"] as? String
        }
    }

    public struct Session: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "startTimestamp", required: false, type: .string), 
            AWSShapeProperty(label: "id", required: false, type: .string), 
            AWSShapeProperty(label: "stopTimestamp", required: false, type: .string), 
            AWSShapeProperty(label: "duration", required: false, type: .long)
        ]
        /// The time the event started in ISO 8601 standard date time format. For example, 2014-06-30T19:07:47.885Z
        public let startTimestamp: String?
        /// A unique identifier for the session
        public let id: String?
        /// The time the event terminated in ISO 8601 standard date time format. For example, 2014-06-30T19:07:47.885Z
        public let stopTimestamp: String?
        /// The duration of the session.
        public let duration: Int64?

        public init(startTimestamp: String? = nil, id: String? = nil, stopTimestamp: String? = nil, duration: Int64? = nil) {
            self.startTimestamp = startTimestamp
            self.id = id
            self.stopTimestamp = stopTimestamp
            self.duration = duration
        }

        public init(dictionary: [String: Any]) throws {
            self.startTimestamp = dictionary["startTimestamp"] as? String
            self.id = dictionary["id"] as? String
            self.stopTimestamp = dictionary["stopTimestamp"] as? String
            self.duration = dictionary["duration"] as? Int64
        }
    }

    public struct PutEventsInput: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var headerParams: [String: String] {
            return ["x-amz-Client-Context-Encoding": "clientContextEncoding", "x-amz-Client-Context": "clientContext"]
        }
        public static var parsingHints: [AWSShapeProperty] = [
            AWSShapeProperty(label: "X-amz-Client-Context", required: true, type: .string), 
            AWSShapeProperty(label: "X-amz-Client-Context-Encoding", required: false, type: .string), 
            AWSShapeProperty(label: "events", required: true, type: .list)
        ]
        /// The client context including the client ID, app title, app version and package name.
        public let clientContext: String
        /// The encoding used for the client context.
        public let clientContextEncoding: String?
        /// An array of Event JSON objects
        public let events: [Event]

        public init(clientContext: String, clientContextEncoding: String? = nil, events: [Event]) {
            self.clientContext = clientContext
            self.clientContextEncoding = clientContextEncoding
            self.events = events
        }

        public init(dictionary: [String: Any]) throws {
            guard let clientContext = dictionary["X-amz-Client-Context"] as? String else { throw InitializableError.missingRequiredParam("X-amz-Client-Context") }
            self.clientContext = clientContext
            self.clientContextEncoding = dictionary["X-amz-Client-Context-Encoding"] as? String
            guard let events = dictionary["events"] as? [[String: Any]] else { throw InitializableError.missingRequiredParam("events") }
            self.events = try events.map({ try Event(dictionary: $0) })
        }
    }

}