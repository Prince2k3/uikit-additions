import Alamofire

public protocol Router {
    var path: String { get set }
    var baseURL: URL { get }
    var httpMethod: HTTPMethod { get }
    var parameterEncoder: ParameterEncoder { get }
    var parameterEncoding: ParameterEncoding { get }
}

extension Router {
    public mutating func mapRouteValues(_ items: [String: String]) -> Self {
        items.forEach {
            self.path = self.path.replace(":\($0.key)", with: $0.value)
        }
        return self
    }
    
    public var absoluteURL: URL {
        return self.baseURL.appendingPathComponent(self.path)
    }
}
