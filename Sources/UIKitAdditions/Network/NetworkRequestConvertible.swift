import UIKit
import PromiseKit

public protocol RequestConvertible: URLRequestConvertible, RequestPerformable {
    associatedtype Route: Router
    associatedtype Params
    
    var params: Params? { get }
    var route: Route { get }
}

extension RequestConvertible where Params == [String: Any] {
    public func asURLRequest() throws -> URLRequest {
        var request = URLRequest(url: self.route.absoluteURL)
        request.httpMethod = self.route.httpMethod.rawValue
        if self.route.httpMethod == .get {
            try URLEncoding.default.encode(&request, parameters: params)
        } else {
            try JSONEncoding.default.encode(&request, parameters: params)
        }
        return request
    }
}

extension RequestConvertible where Params: Encodable {
    public func asURLRequest() throws -> URLRequest {
        var request = URLRequest(url: self.route.absoluteURL)
        request.httpMethod = self.route.httpMethod.rawValue
        
        if self.route.httpMethod == .get {
            try URLEncoding.default.encode(&request, encodable: params)
        } else {
            try JSONEncoding.default.encode(&request, encodable: params)
        }
        
        return request
    }
}

extension RequestConvertible where Self: Encodable {
    public var params: Self? {
        return self
    }
}

public protocol RequestPerformable {
    var client: URLSession { get }
}

extension RequestConvertible where Self: RequestPerformable {
    var client: URLSession {
        return self.route.client
    }
}

extension RequestPerformable where Self: RequestConvertible {
    public func perform() -> Promise<Void> {
        return client.dataTask(self).validate().asVoid()
    }
    
    public func perform<T: Decodable>(queue: DispatchQueue = .main, decoder: JSONDecoder = .init()) -> Promise<T> {
        return client.dataTask(self).validate().responseDecode(T.self, queue: queue, decoder: decoder).map { $0.decoded }
    }
    
    public func perform(queue: DispatchQueue = .main, options: JSONSerialization.ReadingOptions = []) -> Promise<Any> {
        return client.dataTask(self).validate().responseJSON(options: options).map { $0.json }
    }
    
    public func perform() -> Promise<LocationHeader?> {
        return client.dataTask(self).validate()
        .map {
            guard
                let response = $0.response as? HTTPURLResponse
                else { return nil }
            return LocationHeader(response.allHeaderFields)
        }
    }
    
    public func perform<T: Decodable>(queue: DispatchQueue = .main, decoder: JSONDecoder = .init()) -> Promise<(T, LocationHeader?)> {
        return client.dataTask(self).validate().responseDecode(T.self, queue: queue, decoder: decoder)
        .map {
            guard
                let response = $0.response as? HTTPURLResponse
                else { return ($0.decoded, nil) }
            return ($0.decoded, LocationHeader(response.allHeaderFields))
        }
    }
    
    public func perform(options: JSONSerialization.ReadingOptions = []) -> Promise<(Any, LocationHeader?)> {
        return client.dataTask(self).validate().responseJSON(options: options)
        .map {
            guard
                let response = $0.response as? HTTPURLResponse
                else { return ($0.json, nil) }
            return ($0.json, LocationHeader(response.allHeaderFields))
        }
    }
}
