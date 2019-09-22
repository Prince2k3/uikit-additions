import Foundation
import UIKit.UIImage

extension Disk {
    public static func write(_ image: UIImage, to directory: Directory, to path: Path) throws {
        do {
            var imageData: Data
            if path.rawValue.suffix(4).lowercased() == ".png" {
                if let data = image.pngData() {
                    imageData = data
                } else {
                    throw DiskError.serialization
                }
            } else if path.rawValue.suffix(4).lowercased() == ".jpg" || path.rawValue.suffix(5).lowercased() == ".jpeg" {
                if let data = image.jpegData(compressionQuality: 1) {
                    imageData = data
                } else {
                    throw DiskError.serialization
                }
            } else {
                if let data = image.pngData() {
                    imageData = data
                } else if let data = image.jpegData(compressionQuality: 1) {
                    imageData = data
                } else {
                    throw DiskError.serialization
                }
            }

            guard let url = directory.url?.appendingPathComponent(path.rawValue) else {
                throw DiskError.locationNotFound
            }

            try FileManager.makeSubfolderIfNeeded(at: url)
            try imageData.write(to: url, options: .atomic)
        } catch { throw error }
    }

    public static func read(_ path: Path, from directory: Directory, as type: UIImage.Type) throws -> UIImage {
        do {
            guard let url = directory.url?.appendingPathComponent(path.rawValue) else {
                throw DiskError.locationNotFound
            }

            guard FileManager.fileExists(url.path) else { throw DiskError.noFileFound }
            let data = try Data(contentsOf: url)
            guard let image = UIImage(data: data) else { throw DiskError.serialization }
            return image
        } catch { throw error }
    }
}
