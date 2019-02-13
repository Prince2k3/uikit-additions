import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get { return self.layer.cornerRadius }
        set { self.layer.cornerRadius = newValue }
    }

    @IBInspectable var borderWidth: CGFloat {
        get { return self.layer.borderWidth }
        set { self.layer.borderWidth = newValue }
    }

    @IBInspectable var borderColor: UIColor? {
        get { return self.layer.borderColor.flatMap { UIColor(cgColor: $0) } }
        set { self.layer.borderColor = newValue?.cgColor }
    }

    @IBInspectable var shadowColor: UIColor? {
        get { return self.layer.shadowColor.flatMap { UIColor(cgColor: $0) } }
        set { self.layer.shadowColor = newValue?.cgColor }
    }

    @IBInspectable var shadowOffset: CGSize {
        get { return self.layer.shadowOffset }
        set { self.layer.shadowOffset = newValue }
    }

    @IBInspectable var shadowRadius: CGFloat {
        get { return self.layer.shadowRadius }
        set { self.layer.shadowRadius = newValue }
    }

    @IBInspectable var shadowOpacity: CGFloat {
        get { return CGFloat(self.layer.shadowOpacity) }
        set { self.layer.shadowOpacity = Float(newValue) }
    }
}
