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
