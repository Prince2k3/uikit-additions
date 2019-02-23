import UIKit

extension UIView {
    @IBInspectable public var cornerRadius: CGFloat {
        get { return self.layer.cornerRadius }
        set { self.layer.cornerRadius = newValue }
    }

    @IBInspectable public var borderWidth: CGFloat {
        get { return self.layer.borderWidth }
        set { self.layer.borderWidth = newValue }
    }

    @IBInspectable public var borderColor: UIColor? {
        get { return self.layer.borderColor.flatMap { UIColor(cgColor: $0) } }
        set { self.layer.borderColor = newValue?.cgColor }
    }

    @IBInspectable public var shadowColor: UIColor? {
        get { return self.layer.shadowColor.flatMap { UIColor(cgColor: $0) } }
        set { self.layer.shadowColor = newValue?.cgColor }
    }

    @IBInspectable public var shadowOffset: CGSize {
        get { return self.layer.shadowOffset }
        set { self.layer.shadowOffset = newValue }
    }

    @IBInspectable public var shadowRadius: CGFloat {
        get { return self.layer.shadowRadius }
        set { self.layer.shadowRadius = newValue }
    }

    @IBInspectable public var shadowOpacity: CGFloat {
        get { return CGFloat(self.layer.shadowOpacity) }
        set { self.layer.shadowOpacity = Float(newValue) }
    }
}

extension UIView {
    func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
}
