import Foundation

public typealias Parameters = [String: Any]

public protocol URLConvertible {
    func asURL() throws -> URL
}

public protocol URLRequestConvertible {
    func asURLRequest() throws -> URLRequest
}

extension URLRequestConvertible {
    public var urlRequest: URLRequest? {
        return try? asURLRequest()
    }
}
