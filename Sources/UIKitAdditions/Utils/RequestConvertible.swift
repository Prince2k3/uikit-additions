import UIKit
import Alamofire
import PromiseKit

public protocol RequestConvertible: URLRequestConvertible, RequestPerformable {
    associatedtype Route: Router
    associatedtype Params
    
    var params: Params? { get }
    var route: Route { get }
}

extension RequestConvertible where Params == Parameters {
    public var params: Parameters? {
       return nil
    }
   
    public func asURLRequest() throws -> URLRequest {
        var request = URLRequest(url: route.absoluteURL)
        request.httpMethod = route.httpMethod.rawValue
        if route.httpMethod == .get {
            return try URLEncoding.default.encode(request, with: params)
        }
        return try JSONEncoding.default.encode(request, with: params)
    }
}

extension RequestConvertible where Params: Encodable {
    public func asURLRequest() throws -> URLRequest {
        var request = URLRequest(url: route.absoluteURL)
        request.httpMethod = route.httpMethod.rawValue
        
        if route.httpMethod == .get {
            return try URLEncodedFormParameterEncoder.default.encode(params, into: request)
        }
        
        return try JSONParameterEncoder.default.encode(params, into: request)
    }
}

extension RequestConvertible where Self: Encodable {
    public var params: Self? {
        return self
    }
}

public protocol RequestPerformable {
    func perform<T: Decodable>() -> Promise<T>
    func perform() -> Promise<Void>
    func perform(queue: DispatchQueue, options: JSONSerialization.ReadingOptions) -> Promise<Any>
    func perform<T: Decodable>(queue: DispatchQueue, decoder: JSONDecoder) -> Promise<T>
    func perform() -> Promise<LocationHeader?>
    func perform<T: Decodable>() -> Promise<(T, LocationHeader?)>
    func perform() -> Promise<(Any, LocationHeader?)>
    func perform<T: Decodable>(queue: DispatchQueue, decoder: JSONDecoder) -> Promise<(T, LocationHeader?)>
}

extension RequestPerformable where Self: RequestConvertible {
    public func perform<T: Decodable>() -> Promise<T> {
        return route.client.request(self).validate().responseDecodable()
    }
    
    public func perform() -> Promise<Void> {
        return route.client.request(self).validate().responseVoid()
    }
    
    public func perform(queue: DispatchQueue = .main, options: JSONSerialization.ReadingOptions = []) -> Promise<Any> {
        return route.client.request(self).validate().responseJSON(queue: queue, options: options)
    }
    
    public func perform<T: Decodable>(queue: DispatchQueue = .main, decoder: JSONDecoder = .init()) -> Promise<T> {
        return route.client.request(self).validate().responseDecodable(queue: queue, decoder: decoder)
    }
    
    public func perform() -> Promise<LocationHeader?> {
        return route.client.request(self).validate().responseLocationHeader()
    }
    
    public func perform<T: Decodable>() -> Promise<(T, LocationHeader?)> {
        return route.client.request(self).validate().responseDecodable()
    }
    
    public func perform() -> Promise<(Any, LocationHeader?)> {
        return route.client.request(self).validate().responseJSON()
    }
    
    public func perform<T: Decodable>(queue: DispatchQueue = .main, decoder: JSONDecoder = .init()) -> Promise<(T, LocationHeader?)> {
        return route.client.request(self).validate().responseDecodable(queue: queue, decoder: decoder)
    }
}
