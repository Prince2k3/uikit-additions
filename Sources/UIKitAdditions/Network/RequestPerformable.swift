import Foundation
import PromiseKit

public protocol RequestPerformable {
    var client: URLSession { get }
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
