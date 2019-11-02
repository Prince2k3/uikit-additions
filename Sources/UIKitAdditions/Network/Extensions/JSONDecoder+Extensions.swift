import Foundation

extension JSONDecoder {
    public static var iso8601Strategy: JSONDecoder {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        return decoder
    }
}
