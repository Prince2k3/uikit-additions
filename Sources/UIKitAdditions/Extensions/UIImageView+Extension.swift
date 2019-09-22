import UIKit

extension UIImageView {
    // Fix for interface builder around image tint
    @IBInspectable public var imageTintColor: UIColor! {
        set { self.tintColor = newValue }
        get { return self.tintColor }
    }
}
