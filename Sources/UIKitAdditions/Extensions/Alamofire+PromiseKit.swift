import UIKit
import Alamofire
import PromiseKit

extension DataRequest {
    public func responseData() -> Promise<Data> {
        return Promise { seal in
            responseData { response in
                switch response.result {
                case let .success(object):
                    seal.fulfill(object)
                case let .failure(error):
                    if let data = response.data,
                        let errorInfo = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                        seal.reject(ServiceError(error: error.asAFError, response: response.response, body: errorInfo))
                    } else {
                        seal.reject(ServiceError(error: error.asAFError, response: response.response))
                    }
                }
            }
        }
    }

    public func responseVoid() -> Promise<Void> {
        return Promise { seal in
            response { response in
                switch response.result {
                case .success:
                    seal.fulfill(())
                case let .failure(error):
                    if let data = response.data,
                        let errorInfo = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                        seal.reject(ServiceError(error: error.asAFError, response: response.response, body: errorInfo))
                    } else {
                        seal.reject(ServiceError(error: error.asAFError, response: response.response))
                    }
                }
            }
        }
    }

    public func responseJSON(queue: DispatchQueue = .main, options: JSONSerialization.ReadingOptions = []) -> Promise<Any> {
        return Promise { seal in
            responseJSON(queue: queue, options: options) { response in
                switch response.result {
                case let .success(object):
                    seal.fulfill(object)
                case let .failure(error):
                    if let data = response.data,
                       let errorInfo = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                        seal.reject(ServiceError(error: error.asAFError, response: response.response, body: errorInfo))
                    } else {
                        seal.reject(ServiceError(error: error.asAFError, response: response.response))
                    }
                }
            }
        }
    }
    
    public func responseDecodable<T: Decodable>(queue: DispatchQueue = .main, decoder: JSONDecoder = JSONDecoder()) -> Promise<T> {
        return Promise { seal in
            decoder.dateDecodingStrategy = .iso8601
            responseDecodable(queue: queue, decoder: decoder) { (response: DataResponse<T, AFError>) in
                switch response.result {
                case let .success(value):
                    seal.fulfill(value)
                case let .failure(error):
                    if let data = response.data,
                        let errorInfo = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                        seal.reject(ServiceError(error: error.asAFError, response: response.response, body: errorInfo))
                    } else {
                        seal.reject(ServiceError(error: error.asAFError, response: response.response))
                    }
                }
            }
        }
    }
    
    public func responseDecodable<T: Decodable>(queue: DispatchQueue = .main, decoder: JSONDecoder = JSONDecoder()) -> Promise<(T, LocationHeader?)> {
        return Promise { seal in
            decoder.dateDecodingStrategy = .iso8601
            responseData(queue: queue) { response in
                switch response.result {
                case .success(let value):
                    do { try seal.fulfill((decoder.decode(T.self, from: value), LocationHeader(response.response?.allHeaderFields))) }
                    catch { seal.reject(error) }
                case let .failure(error):
                    if let data = response.data,
                        let errorInfo = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                        seal.reject(ServiceError(error: error.asAFError, response: response.response, body: errorInfo))
                    } else {
                        seal.reject(ServiceError(error: error.asAFError, response: response.response))
                    }
                }
            }
        }
    }
    
    public func responseDecodable<T: Decodable>(_ type: T.Type = T.self, queue: DispatchQueue = .main, decoder: JSONDecoder = JSONDecoder()) -> Promise<(T, LocationHeader?)> {
        return Promise { seal in
            decoder.dateDecodingStrategy = .iso8601
            responseData(queue: queue) { response in
                switch response.result {
                case .success(let value):
                    do { try seal.fulfill((decoder.decode(type, from: value), LocationHeader(response.response?.allHeaderFields))) }
                    catch { seal.reject(error) }
                case let .failure(error):
                    if let data = response.data,
                        let errorInfo = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                        seal.reject(ServiceError(error: error.asAFError, response: response.response, body: errorInfo))
                    } else {
                        seal.reject(ServiceError(error: error.asAFError, response: response.response))
                    }
                }
            }
        }
    }
    
    public func responseLocationHeader() -> Promise<LocationHeader?> {
        return Promise { seal in
            responseData { response in
                switch response.result {
                case .success:
                    seal.fulfill(LocationHeader(response.response?.allHeaderFields))
                case let .failure(error):
                    if let data = response.data,
                        let errorInfo = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                        seal.reject(ServiceError(error: error.asAFError, response: response.response, body: errorInfo))
                    } else {
                        seal.reject(ServiceError(error: error.asAFError, response: response.response))
                    }
                }
            }
        }
    }
    
    public func responseJSON() -> Promise<(Any, LocationHeader?)> {
        return Promise { seal in
            responseJSON { response in
                switch response.result {
                case let .success(object):
                    seal.fulfill((object, LocationHeader(response.response?.allHeaderFields)))
                case let .failure(error):
                    if let data = response.data,
                        let errorInfo = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                        seal.reject(ServiceError(error: error.asAFError, response: response.response, body: errorInfo))
                    } else {
                        seal.reject(ServiceError(error: error.asAFError, response: response.response))
                    }
                }
            }
        }
    }
}
