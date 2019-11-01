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

public protocol RequestPerformable {}

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

// WebSocket
@available(iOS 13, *)
extension RequestPerformable where Self: RequestConvertible {
    public func openSocket() -> WebSocketRequest {
        return route.client.openWebSocket(self)
    }
    public func openSocket(sendMessage string: String) -> WebSocketRequest {
        return route.client.openWebSocket(self, andSend: string)
    }
    
    public func openSocket(sendMessage data: Data) -> WebSocketRequest {
        return route.client.openWebSocket(self, sendMessage: data)
    }
    
    public func openSocket<T: Encodable>(sendMessage encodable: T, encoder: JSONEncoder = .init()) throws -> WebSocketRequest {
        let encodableData = try encoder.encode(encodable)
        return route.client.openWebSocket(self, sendMessage: encodableData)
    }
}
