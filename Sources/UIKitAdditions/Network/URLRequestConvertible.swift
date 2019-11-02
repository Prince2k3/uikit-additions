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

///

extension URLRequest: URLRequestConvertible {
    public func asURLRequest() throws -> URLRequest {
        return self
    }
}

extension URLRequest {
    public init(url: URLConvertible, method: HTTPMethod, headers: [String: String]? = nil) throws {
        let url = try url.asURL()
        self.init(url: url)
        httpMethod = method.rawValue
        allHTTPHeaderFields = headers
    }
}

///

extension String: URLConvertible {
    public func asURL() throws -> URL {
        guard
            let url = URL(string: self)
            else { throw NetworkError.invalidURL(url: self) }
        
        return url
    }
}

extension URL: URLConvertible {
    public func asURL() throws -> URL {
        return self
    }
}

extension URLComponents: URLConvertible {
    public func asURL() throws -> URL {
        guard
            let url = url
            else { throw NetworkError.invalidURL(url: self) }
        return url
    }
}
