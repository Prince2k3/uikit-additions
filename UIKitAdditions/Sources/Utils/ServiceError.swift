//
//  ServiceError.swift
//  UIKitAdditions
//
//  Created by Prince Ugwuh on 2/23/19.
//  Copyright © 2019 Prince Ugwuh. All rights reserved.
//

import Foundation

extension Int {
    static let unknownStatusCode = -999
}

struct ServiceError: LocalizedError {
    private(set) var message: String
    private(set) var statusCode: Int
    private(set) var error: LocalizedError?
    private let errorKeys: [String] = [
        "error_description",
        "errorDescription",
        "description",
        "error_message",
        "errorMessage",
        "message",
        "error_reason",
        "errorReason",
        "reason"
    ]
    
    var errorDescription: String? {
        return self.message
    }
    
    private func findErrorMessage(_ body: [String: Any]) -> String? {
        return body.first { self.errorKeys.contains($0.key) }?.value as? String ??
               body["error"] as? String // last resort use error as key
    }
    
    init(error: LocalizedError?, response: HTTPURLResponse?, body: [String: Any]? = nil) {
        self.error = error
        self.statusCode = response?.statusCode ?? .unknownStatusCode
        self.message = "A problem has occurred"
        if let body = body, !body.isEmpty {
            self.message = findErrorMessage(body) ?? "A problem has occurred"
        }
    }
    
    init(statusCode: Int = .unknownStatusCode, message: String) {
        self.statusCode = statusCode
        self.message = message
    }
}

extension ServiceError: Equatable {
    static func == (lhs: ServiceError, rhs: ServiceError) -> Bool {
        if lhs.statusCode == .unknownStatusCode || rhs.statusCode == .unknownStatusCode {
            return lhs.message.lowercased() == rhs.message.lowercased()
        }
        
        return lhs.statusCode == rhs.statusCode && lhs.message.lowercased() == rhs.message.lowercased()
    }
}

extension String: Error {}
