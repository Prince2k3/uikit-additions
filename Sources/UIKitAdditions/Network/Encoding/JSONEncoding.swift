import Foundation

public struct JSONEncoding: Encoding {
    public static let `default` = JSONEncoding()
    
    public func encode(_ request: inout URLRequest, parameters: Parameters?) throws {
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        guard
            let parameters = parameters, !parameters.isEmpty
            else { return }
        
        do {
            let data = try JSONSerialization.data(withJSONObject: parameters, options: [])
            request.httpBody = data
        }
        catch { throw EncodingError.jsonEncodingError(reason: error) }
    }
    
    public func encode<E: Encodable>(_ request: inout URLRequest, encodable: E?, encoder: JSONEncoder = .init()) throws {
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        do {
            let data = try encoder.encode(encodable)
            request.httpBody = data
        }
        catch { throw EncodingError.jsonEncodingError(reason: error) }
    }
}
