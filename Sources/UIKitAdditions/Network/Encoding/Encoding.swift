import Foundation

public protocol Encoding {
    func encode(_ request: inout URLRequest, parameters: Parameters?) throws
}

extension Encoding {
    private static func getComponents(_ key: String, _ value: Any) -> [(String, String)] {
        var result = [(String, String)]()
        
        switch value {
        case let dictionary as [String: Any]:
            result = dictionary.reduce(result) { value, element in
                let components = self.getComponents("\(key)[\(element.0)]", element.1)
                return value + components
            }
        case let array as [Any]:
            result = array.reduce(result) { value, element in
                let components = self.getComponents("\(key)[]", element)
                return value + components
            }
        default:
            result.append((key, "\(value)"))
        }
        
        return result
    }
    
    static func getComponents(from parameters: Parameters) -> [(String, String)] {
        let components = parameters.reduce([(String, String)]()) { value, element in
            let key = element.0
            let components = self.getComponents(key, element.1)
            return value + components
        }
        
        return components
    }
}
