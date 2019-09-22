//
//  Keychain+Keys.swift
//  Tradelytics
//
//  Created by Prince Ugwuh on 2/14/19.
//  Copyright © 2019 Alerting Options. All rights reserved.
//

import Foundation
import SwiftAdditions

extension Keychain {
    public struct Key: RawRepresentable, Hashable {
        public let rawValue: String
        
        public init(_ rawValue: String) {
            self.rawValue = rawValue
        }
        
        public init(rawValue: String) {
            self.rawValue = rawValue
        }
    }
}

extension Keychain {
    public static func value<T: Codable>(forKey key: Key) -> T? {
        return value(forKey: key.rawValue)
    }
    
    public static func remove(key: Key, accessibility: Keychain.Accessibility = .whenUnlockedThisDeviceOnly) -> Bool {
        return remove(key: key.rawValue, accessibility: accessibility)
    }
    
    @discardableResult
    public static func set<T: Codable>(_ value: T?, key: Key, accessibility: Keychain.Accessibility = .whenUnlockedThisDeviceOnly) -> Bool {
        return set(value, key: key.rawValue, accessibility: accessibility)
    }
}
