import UIKit
import Alamofire

public protocol Router {
    var path: String { get set }
    var httpMethod: HTTPMethod { get }
    var baseURL: URL { get }
    var client: Session { get }
    var httpHeaders: [String: String] { get }
}

extension Router {
    public var absoluteURL: URL {
        return baseURL.appendingPathComponent(path)
    }
    
    public mutating func mapRouteValues(_ items: [String: String]) -> Self {
        items.forEach {
            self.path = self.path.replace(":\($0.key)", with: $0.value)
        }
        return self
    }
}
