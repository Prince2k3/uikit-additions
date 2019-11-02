import Foundation

public protocol RequestConvertible: URLRequestConvertible, RequestPerformable {
    associatedtype Route: Router
    associatedtype Params
    
    var params: Params? { get }
    var route: Route { get }
}

extension RequestConvertible where Params == Parameters {
    public var client: URLSession {
        return route.client
    }
    
    public func asURLRequest() throws -> URLRequest {
        var request = URLRequest(url: route.absoluteURL)
        request.httpMethod = route.httpMethod.rawValue
        if route.httpMethod == .get {
            try URLEncoding.default.encode(&request, parameters: params)
        } else {
            try JSONEncoding.default.encode(&request, parameters: params)
        }
        return request
    }
}

extension RequestConvertible where Params: Encodable {
    public var params: Self? {
        return self
    }
    
    public var client: URLSession {
        return self.route.client
    }
    
    public func asURLRequest() throws -> URLRequest {
        var request = URLRequest(url: route.absoluteURL)
        request.httpMethod = route.httpMethod.rawValue
        
        if route.httpMethod == .get {
            try URLEncoding.default.encode(&request, encodable: params)
        } else {
            try JSONEncoding.default.encode(&request, encodable: params)
        }
        
        return request
    }
}
