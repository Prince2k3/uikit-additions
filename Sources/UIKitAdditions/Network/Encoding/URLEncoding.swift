import Foundation

public struct URLEncoding: Encoding {
    
    public enum Mode {
        case `default`, urlQuery, httpBody
    }
    
    public static let `default` = URLEncoding()
    
    private(set) var mode: Mode
    
    public init(mode: Mode = .default) {
        self.mode = mode
    }
    
    public func encode<E: Encodable>(_ request: inout URLRequest, encodable: E, using encoder: JSONEncoder? = nil) throws {
        let encoder = encoder ?? JSONEncoder()
        let data = try encoder.encode(encodable)
        let parameters = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
        try encode(&request, parameters: parameters)
    }
    
    public func encode(_ request: inout URLRequest, parameters: Parameters?) throws {
        guard
            let parameters = parameters,
            !parameters.values.isEmpty
            else { return }
        
        if self.shouldEncodeInQuery(using: request.httpMethod!) {
            guard
                let components = NSURLComponents(url: request.url!, resolvingAgainstBaseURL: false)
                else { throw EncodingError.noComponentsFromURL }
            
            components.query = URLEncoding.getQuery(from: parameters)
            
            guard
                let newURL = components.url
                else { throw EncodingError.noURLFromComponents }
            
            request.url = newURL
        } else {
            let query = URLEncoding.getQuery(from: parameters)
            
            request.setValue("application/x-www-form-urlencoded; charset=utf-8", forHTTPHeaderField: "Content-Type")
            request.httpBody = query.data(using: .utf8, allowLossyConversion: false)!
        }
    }
    
    private func shouldEncodeInQuery(using method: String) -> Bool {
        switch (self.mode, method) {
        case (.urlQuery, _):
            return true
        case (.httpBody, _):
            return false
        case (_, "GET"), (_, "HEAD"), (_, "DELETE"):
            return true
        default:
            return false
        }
    }
    
    private static func getQuery(from parameters: Parameters) -> String {
        let query = self.getComponents(from: parameters)
        return query.map { "\($0)=\($1)" }.joined(separator: "&")
    }
}
 
