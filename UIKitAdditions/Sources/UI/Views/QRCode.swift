import UIKit

fileprivate extension CGSize {
    static let `default` = CGSize(width: 300, height: 300)
}

public struct QRCode {
    public enum CorrectionLevel: String {
        case low = "L"
        case medium = "M"
        case quartile = "Q"
        case high = "H"
    }
    
    public let data: Data
    public var color: CIColor = .black
    public var backgroundColor: CIColor = .white
    public var size: CGSize = .default
    public var correctionLevel: CorrectionLevel = .high
    
    public init(_ data: Data) {
        self.data = data
    }
    
    public init?(_ string: String) {
        guard
            let data = string.data(using: .isoLatin1)
            else { return nil }
        self.data = data
    }
    
    public init?(_ url: URL) {
        guard
            let data = url.absoluteString.data(using: .isoLatin1)
            else { return nil }
        self.data = data
    }
    
    public var image: UIImage? {
        return self.ciImage.flatMap { UIImage(ciImage: $0) }
    }
    
    public var ciImage: CIImage? {
        guard
            let filter = CIFilter(name: "CIQRCodeGenerator")
            else { return nil }
        
        filter.setDefaults()
        filter.setValue(self.data, forKey: "inputMessage")
        filter.setValue(self.correctionLevel.rawValue, forKey: "inputCorrectionLevel")
        
        guard
            let colorFilter = CIFilter(name: "CIFalseColor")
            else { return nil }
        
        colorFilter.setDefaults()
        colorFilter.setValue(filter.outputImage, forKey: "inputImage")
        colorFilter.setValue(self.color, forKey: "inputColor0")
        colorFilter.setValue(self.backgroundColor, forKey: "inputColor1")
        
        return colorFilter.outputImage
    }
}

extension UIImageView {
    public convenience init?(qrCode: QRCode) {
        guard let image = qrCode.image else { return nil }
        self.init(image: image)
    }
}
