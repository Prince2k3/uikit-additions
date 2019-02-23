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
                        seal.reject(ServiceError(error: error, response: response.response, body: errorInfo))
                    } else {
                        seal.reject(ServiceError(error: error, response: response.response))
                    }
                }
            }
        }
    }

    public func responseVoid() -> Promise<Void> {
        return Promise { seal in
            responseData { response in
                switch response.result {
                case .success:
                    seal.fulfill(())
                case let .failure(error):
                    if let data = response.data,
                        let errorInfo = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                        seal.reject(ServiceError(error: error, response: response.response, body: errorInfo))
                    } else {
                        seal.reject(ServiceError(error: error, response: response.response))
                    }
                }
            }
        }
    }

    public func responseJSON() -> Promise<Any> {
        return Promise { seal in
            responseJSON { response in
                switch response.result {
                case let .success(object):
                    seal.fulfill(object)
                case let .failure(error):
                    if let data = response.data,
                       let errorInfo = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                        seal.reject(ServiceError(error: error, response: response.response, body: errorInfo))
                    } else {
                        seal.reject(ServiceError(error: error, response: response.response))
                    }
                }
            }
        }
    }
    
    public func responseDecodable<T: Decodable>(queue: DispatchQueue? = nil, decoder: JSONDecoder = JSONDecoder()) -> Promise<T> {
        return Promise { seal in
            decoder.dateDecodingStrategy = .iso8601
            responseDecodable(queue: queue, decoder: decoder) { (response: DataResponse<T>) in
                switch response.result {
                case let .success(value):
                    seal.fulfill(value)
                case let .failure(error):
                    if let data = response.data,
                        let errorInfo = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                        seal.reject(ServiceError(error: error, response: response.response, body: errorInfo))
                    } else {
                        seal.reject(ServiceError(error: error, response: response.response))
                    }
                }
            }
        }
    }
}
