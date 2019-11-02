import Foundation

public struct NetworkError: Error, LocalizedError {
    public static let readableName = "Network Error"
    
    public let identifier: String
    public var reason: String
    
    public init(identifier: String, reason: String) {
        self.identifier = identifier
        self.reason = reason
    }
    
    public var errorDescription: String? {
        return "\(reason) - (\(identifier))"
    }
}

extension NetworkError {
    public static let noRequest = NetworkError(identifier: "noRequest", reason: "Could not make URLRequest")
    public static func invalidURL(url: URLConvertible) -> NetworkError {
        return NetworkError(identifier: "invalidURLError", reason: "Invalid URL \(url)")
    }
}
