//
//  LocationHeader.swift
//  UIKitAdditions
//
//  Created by Prince Ugwuh on 7/20/19.
//  Copyright © 2019 Prince Ugwuh. All rights reserved.
//

import Foundation

public struct LocationHeader {
    public let url: URL
    
    public init(url: URL) {
        self.url = url
    }
    
    public init?(_ headers: [AnyHashable: Any]?) {
        guard
            let headers = headers,
            let string = headers["Location"] as? String,
            let url = URL(string: string)
            else { return nil }
        self.url = url
    }
}

extension LocationHeader {
    public var value: String {
        return self.url.lastPathComponent
    }
}
