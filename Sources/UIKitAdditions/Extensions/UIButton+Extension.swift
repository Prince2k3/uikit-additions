import UIKit

extension UIButton {
    public func setBackgroundColor(_ color: UIColor?, for state: UIControl.State) {
        guard let color = color else {
            return setBackgroundImage(nil, for: state)
        }
        setBackgroundImage(.makeImage(with: color), for: state)
    }
}
