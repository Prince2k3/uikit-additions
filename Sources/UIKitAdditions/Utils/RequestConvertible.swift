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
        return try JSONEncoding.default.encode(self, with: params)
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

// WebSocket
@available(iOS 13, *)
extension RequestPerformable where Self: RequestConvertible {
    public func send(_ string: String) -> CancellableWebSocketRequest {
        let request = route.client.openWebsocket(self, message: string)
        return CancellableWebSocketRequest(request)
    }
    
    public func send(_ data: Data) -> CancellableWebSocketRequest {
        let request = route.client.openWebsocket(self, message: data)
        return CancellableWebSocketRequest(request)
    }
    
    public func send<T: Encodable>(_ encodable: T, encoder: JSONEncoder = .init()) throws -> CancellableWebSocketRequest {
        let data = try encoder.encode(encodable)
        let request = route.client.openWebsocket(self, message: data)
        return CancellableWebSocketRequest(request)
    }
}

@available(iOS 13, *)
public class CancellableWebSocketRequest {
    let request: WebSocketRequest
    
    init(_ request: WebSocketRequest) {
        self.request = request
    }
    
    public func close() {
        request.close()
    }
    
    public func ping(wait: TimeInterval = 15) {
        request.ping(wait: wait)
    }
    
    public func receivedData(_ handler: @escaping (Swift.Result<Data, Error>) -> Void) {
        request.receivedData(handler)
        
    }
    
    public func receivedString(_ handler: @escaping (Swift.Result<String, Error>) -> Void) {
        request.receivedString(handler)
    }
    
    public func received<T: Decodable>(_ handler: @escaping (Swift.Result<T, Error>) -> Void) {
        request.received(handler)
    }
}
