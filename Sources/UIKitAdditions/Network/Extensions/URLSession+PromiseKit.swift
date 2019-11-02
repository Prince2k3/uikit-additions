import UIKit
import PromiseKit

extension URLSession {
    public func dataTask(_ convertible: URLRequestConvertible) -> Promise<(data: Data, response: URLResponse)> {
        guard
            let request = convertible.urlRequest
            else { return Promise(error: NetworkError.noRequest) }
        return Promise { dataTask(with: request, completionHandler: adapter($0)).resume() }
    }
    
    public func uploadTask(_ convertible: URLRequestConvertible, from data: Data) -> Promise<(data: Data, response: URLResponse)> {
        guard
            let request = convertible.urlRequest
            else { return Promise(error: NetworkError.noRequest) }
        return Promise { uploadTask(with: request, from: data, completionHandler: adapter($0)).resume() }
    }
    
    public func uploadTask(_ convertible: URLRequestConvertible, fromFile file: URL) -> Promise<(data: Data, response: URLResponse)> {
        guard
            let request = convertible.urlRequest
            else { return Promise(error: NetworkError.noRequest) }
        return Promise { uploadTask(with: request, fromFile: file, completionHandler: adapter($0)).resume() }
    }
    
    public func downloadTask(_ convertible: URLRequestConvertible, to saveLocation: URL) -> Promise<(saveLocation: URL, response: URLResponse)> {
        guard
            let request = convertible.urlRequest
            else { return Promise(error: NetworkError.noRequest) }
        return Promise { seal in
            downloadTask(with: request) { tempLocation, response, error in
                if let error = error {
                    seal.reject(error)
                } else if let response = response, let tempLocation = tempLocation {
                    do {
                        try FileManager.default.moveItem(at: tempLocation, to: saveLocation)
                        seal.fulfill((saveLocation, response))
                    } catch {
                        seal.reject(error)
                    }
                } else {
                    seal.reject(PMKError.invalidCallingConvention)
                }
            }.resume()
        }
    }
}

extension Promise where T == (data: Data, response: URLResponse) {
    public func validate() -> Promise<T> {
        return map {
            guard
                let response = $0.response as? HTTPURLResponse
                else { return $0 }
            
            switch response.statusCode {
            case 200..<300:
                return $0
            case let code:
                throw PMKHTTPError.badStatusCode(code, $0.data, response)
            }
        }
    }
    
    public func responseDecode<T: Decodable>(_ type: T.Type, queue: DispatchQueue = .main, decoder: JSONDecoder = .init()) -> Promise<(decoded: T, response: URLResponse)> {
        return map(on: queue) {
            return try (decoder.decode(type, from: $0.data), $0.response)
        }
    }
    
    public func responseJSON(queue: DispatchQueue = .main, options: JSONSerialization.ReadingOptions = []) -> Promise<(json: Any, response: URLResponse)> {
        return map(on: queue) {
            return try (JSONSerialization.jsonObject(with: $0.data, options: options), $0.response)
        }
    }
}

private func adapter<T, U>(_ seal: Resolver<(data: T, response: U)>) -> (T?, U?, Error?) -> Void {
    return { t, u, e in
        if let t = t, let u = u {
            seal.fulfill((t, u))
        } else if let e = e {
            seal.reject(e)
        } else {
            seal.reject(PMKError.invalidCallingConvention)
        }
    }
}

public enum PMKHTTPError: Error, LocalizedError, CustomStringConvertible {
    case badStatusCode(Int, Data, HTTPURLResponse)
    
    public var errorDescription: String? {
        func url(_ rsp: URLResponse) -> String {
            return rsp.url?.absoluteString ?? "nil"
        }
        switch self {
        case .badStatusCode(401, _, let response):
            return "Unauthorized (\(url(response))"
        case .badStatusCode(let code, _, let response):
            return "Invalid HTTP response (\(code)) for \(url(response))."
        }
    }
    
    public func decodeResponse<T: Decodable>(_ t: T.Type, decoder: JSONDecoder = JSONDecoder()) -> T? {
        switch self {
        case .badStatusCode(_, let data, _):
            return try? decoder.decode(t, from: data)
        }
    }
    
    public var responseJSON: Any? {
        switch self {
        case .badStatusCode(_, let data, _):
            return try? JSONSerialization.jsonObject(with: data)
        }
    }
    
    var responseBodyString: String? {
        switch self {
        case .badStatusCode(_, let data, _):
            return String(data: data, encoding: .utf8)
        }
    }
    
    public var failureReason: String? {
        return responseBodyString
    }
    
    public var description: String {
        switch self {
        case .badStatusCode(let code, let data, let response):
            var dict: [String: Any] = [
                "Status Code": code,
                "Body": String(data: data, encoding: .utf8) ?? "\(data.count) bytes"
            ]
            dict["URL"] = response.url
            dict["Headers"] = response.allHeaderFields
            return "<NSHTTPResponse> \(NSDictionary(dictionary: dict))" // as NSDictionary makes the output look like NSHTTPURLResponse looks
        }
    }
}
