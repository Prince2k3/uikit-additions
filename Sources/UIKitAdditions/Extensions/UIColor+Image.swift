import UIKit

extension UIColor {
    public func fillImage(_ size: CGSize = .init(width: 1, height: 1), cornerRadius: CGFloat = 0.0) -> UIImage {
        return UIGraphicsImageRenderer(size: size)
            .image { _ in
                self.setFill()
                let bezierPath = UIBezierPath(roundedRect: CGRect(origin: .zero, size: size), cornerRadius: cornerRadius)
                bezierPath.fill()
        }
    }
    
    public func fillCircleImage(_ size: CGSize = .init(width: 1, height: 1)) -> UIImage {
        let cornerRadius = min(size.width, size.height) / 2.0
        return fillImage(size, cornerRadius: cornerRadius)
    }
    
    public func fillImage(_ size: CGSize = .init(width: 1, height: 1)) -> UIImage {
        return UIGraphicsImageRenderer(size: size)
            .image { _ in
                self.setFill()
                let bezierPath = UIBezierPath(rect: CGRect(origin: .zero, size: size))
                bezierPath.fill()
        }
    }
    
    public func strokeCircleImage(_ size: CGSize, lineWidth: CGFloat = 2) -> UIImage {
        let cornerRadius = min(size.width, size.height) / 2.0
        return strokeImage(size, cornerRadius: cornerRadius, lineWidth: lineWidth)
    }
    
    public func strokeImage(_ size: CGSize, cornerRadius: CGFloat = 0.0, lineWidth: CGFloat = 2) -> UIImage {
        return UIGraphicsImageRenderer(size: size)
            .image { _ in
                self.setStroke()
                let bezierPath = UIBezierPath(roundedRect: CGRect(origin: .zero, size: size).insetBy(dx: lineWidth, dy: lineWidth), cornerRadius: cornerRadius)
                bezierPath.lineWidth = lineWidth
                bezierPath.stroke()
                
        }
    }
}
