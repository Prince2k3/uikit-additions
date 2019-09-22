import UIKit
import SwiftAdditions

extension UITextField {
    public func makeForInputAccessoryView(message: String, backgroundColor: UIColor = .black) -> UIView {
        let view = UIView(frame: CGRect(width: 200.0, height: 54.0))
        view.backgroundColor = backgroundColor
        
        let label = UILabel()
        label.text = message
        label.backgroundColor = .clear
        label.numberOfLines = 0
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        label.anchorToSuperview(edgeInset: UIEdgeInsets(right: 16, left: 16))
        return view
    }
}
