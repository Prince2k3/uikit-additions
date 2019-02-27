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
    
    var errorDescription: String? {
        return self.message
    }
    
    init(error: LocalizedError?, response: HTTPURLResponse?, body: [String: Any]? = nil) {
        self.error = error
        self.statusCode = response?.statusCode ?? .unknownStatusCode
        if let body = body, !body.isEmpty {
            self.message = body["reason"] as? String ?? "an problem has occurred"
        } else {
            self.message = "an problem has occurred"
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
