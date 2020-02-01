import UIKit

extension UIButton {
    public func setBackgroundColor(_ color: UIColor?, for state: UIControl.State) {
        return color.flatMap { setBackgroundImage($0.fillImage(), for: state) } ??
        setBackgroundImage(nil, for: state)
    }
}
