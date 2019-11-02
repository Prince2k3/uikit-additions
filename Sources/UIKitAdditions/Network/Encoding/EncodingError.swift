import Foundation

public struct EncodingError: Error, LocalizedError {
    public static let readableName = "Encoding Error"
    
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

extension EncodingError {
    public static let noComponentsFromURL = EncodingError(identifier: "noComponentsFromURL", reason: "no components from url")
    public static let noURLFromComponents = EncodingError(identifier: "noURLFromComponents", reason: "no url from components")
    
    public static func jsonEncodingError(reason error: Error) -> EncodingError {
        return EncodingError(identifier: "jsonEncodingError", reason: error.localizedDescription)
    }
}
