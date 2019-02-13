import Foundation

enum DiskError: Error {
    case noFileFound
    case serialization
    case deserialization
    case invalidFileName
    case locationNotFound
}

class Disk {
    enum Directory {
        case documents, cache, applicationSupport, temporary, sharedContainer(appGroupName: String)
        var url: URL? {
            switch self {
            case .documents:
                return FileManager.documentDirectory()
            case .cache:
                return FileManager.cacheDirectory()
            case .applicationSupport:
                return FileManager.applicationSupportDirectory()
            case .temporary:
                return FileManager.temporaryDirectory()
            case .sharedContainer(let appGroupName):
                return FileManager.sharedContainer(appGroupName: appGroupName)
            }
        }
    }

    struct Path: RawRepresentable, Equatable, Hashable {
        var rawValue: String

        init(_ rawValue: String) {
            self.rawValue = rawValue
        }

        init(rawValue: String) {
            self.rawValue = rawValue
        }
    }

    static func write<T: Encodable>(_ value: T, to directory: Directory, to path: Path) throws {
        guard !path.rawValue.hasSuffix("/") else { throw DiskError.invalidFileName }
        do {
            guard let url = directory.url?.appendingPathComponent(path.rawValue) else {
                throw DiskError.locationNotFound
            }

            let encoder = JSONEncoder()
            encoder.outputFormatting = .prettyPrinted
            let data = try encoder.encode(value)
            try FileManager.makeSubfolderIfNeeded(at: url)
            try data.write(to: url, options: .atomic)
        } catch { throw error }
    }

    static func read<T: Decodable>(_ path: Path, from directory: Directory, as type: T.Type) throws -> T {
        guard !path.rawValue.hasSuffix("/") else { throw DiskError.invalidFileName }
        do {
            guard let url = directory.url?.appendingPathComponent(path.rawValue) else {
                throw DiskError.locationNotFound
            }

            if !FileManager.fileExists(url.path) {
                throw DiskError.noFileFound
            }
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            return try decoder.decode(type, from: data)
        } catch { throw error }
    }
}

extension Disk {
    static func clear(_ directory: Directory) throws {
        do {
            guard let url = directory.url else {
                throw DiskError.locationNotFound
            }

            let contents = try FileManager.contentsOfDirectory(at: url.path)
            try contents.forEach { try FileManager.remove(at: URL(fileURLWithPath: $0)) }
        } catch { throw error }
    }

    static func remove(_ path: Path, from directory: Directory) throws {
        do {
            guard let url = directory.url?.appendingPathComponent(path.rawValue) else {
                throw DiskError.locationNotFound
            }

            if !FileManager.fileExists(url.path) {
                throw DiskError.noFileFound
            }
            try FileManager.default.removeItem(at: url)
        } catch { throw error }
    }

    static func exists(_ path: Path, in directory: Directory) -> Bool {
        guard let url = directory.url?.appendingPathComponent(path.rawValue),
              FileManager.fileExists(url.path) else { return false }
        return true
    }

    static func move(_ path: Path, in directory: Directory, to newDirectory: Directory) throws {
        do {
            guard let url = directory.url else {
                throw DiskError.locationNotFound
            }

            let currentURL = url.appendingPathComponent(path.rawValue)
            let justDirectoryPath = url.absoluteString
            let filePath = currentURL.absoluteString.replacingOccurrences(of: justDirectoryPath, with: "")

            guard let newURL = newDirectory.url?.appendingPathComponent(filePath) else {
                throw DiskError.locationNotFound
            }

            try FileManager.makeSubfolderIfNeeded(at: newURL)
            try FileManager.default.moveItem(at: currentURL, to: newURL)
        } catch { throw error }
    }

    static func rename(_ path: Path, in directory: Directory, to newName: String) throws {
        do {
            guard let currentURL = directory.url?.appendingPathComponent(path.rawValue) else {
                throw DiskError.locationNotFound
            }

            try FileManager.rename(at: currentURL, newName: newName)
        } catch { throw error }
    }
}

func == (lhs: Disk.Path, rhs: Disk.Path) -> Bool {
    return lhs.rawValue == rhs.rawValue
}
