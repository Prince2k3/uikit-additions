import UIKit

extension UIImage {
    public static func makeImage(with color: UIColor) -> UIImage {
        let onePixel = 1 / UIScreen.main.scale
        let rect = CGRect(width: onePixel, height: onePixel)
        let renderer = UIGraphicsImageRenderer(bounds: rect)
        let image = renderer.image { renderer in
            let cgContext = renderer.cgContext
            cgContext.setFillColor(color.cgColor)
            cgContext.fill(rect)
        }
        return image
    }
}
