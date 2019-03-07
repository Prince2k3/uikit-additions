import Alamofire
import PromiseKit

public protocol RequestConvertible: URLRequestConvertible, RequestPerformable {
    associatedtype Route: Router
    associatedtype Params
    
    var params: Params? { get }
    var route: Route { get }
}

extension RequestConvertible where Params == Parameters {
    public func asURLRequest() throws -> URLRequest {
        var url = self.route.baseURL
        url.appendPathComponent(self.route.path)
        var request = URLRequest(url: url)
        request.httpMethod = self.route.httpMethod.rawValue
        if self.route.httpMethod == .get {
            return try URLEncoding.default.encode(request, with: self.params)
        }
        return try self.route.parameterEncoding.encode(request, with: self.params)
    }
}

extension RequestConvertible where Params: Encodable {
    public func asURLRequest() throws -> URLRequest {
        var url = self.route.baseURL
        url.appendPathComponent(self.route.path)
        var request = URLRequest(url: url)
        request.httpMethod = self.route.httpMethod.rawValue
        
        if self.route.httpMethod == .get {
            return try URLEncodedFormParameterEncoder.default.encode(self.params, into: request)
        }
        
        return try self.route.parameterEncoder.encode(self.params, into: request)
    }
}

extension RequestConvertible where Self: Encodable {
    var params: Self {
        return self
    }
}

public protocol RequestPerformable {
    var client: Session { get }
}

extension RequestPerformable where Self: RequestConvertible {
    public func perform<T: Decodable>() -> Promise<T> {
        return self.client.request(self).validate().responseDecodable()
    }
    
    public func perform() -> Promise<Void> {
        return self.client.request(self).validate().responseVoid()
    }
    
    public func perform() -> Promise<Any> {
        return self.client.request(self).validate().responseJSON()
    }
    
    public func perform<T: Decodable>(queue: DispatchQueue? = nil, decoder: JSONDecoder = .init()) -> Promise<T> {
        return self.client.request(self).validate().responseDecodable(queue: queue, decoder: decoder)
    }
}
