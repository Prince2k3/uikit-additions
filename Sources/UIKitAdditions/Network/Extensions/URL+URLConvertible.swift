import Foundation

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
