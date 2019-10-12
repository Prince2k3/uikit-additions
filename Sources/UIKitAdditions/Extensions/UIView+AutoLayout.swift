import UIKit

extension UIView {
    public func anchorToSuperview(edgeInset: UIEdgeInsets = .zero) {
        guard let superview = self.superview else { return }
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superview.topAnchor, constant: edgeInset.top),
            leftAnchor.constraint(equalTo: superview.leftAnchor, constant: edgeInset.left),
            bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: edgeInset.bottom),
            rightAnchor.constraint(equalTo: superview.rightAnchor, constant: edgeInset.right)
        ])
        
    }

    @available(iOS 11, *)
    public func anchorToSuperviewSafeArea() {
        guard let superview = self.superview else { return }
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.topAnchor, constant: safeAreaInsets.top),
            leftAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.leftAnchor, constant: safeAreaInsets.left),
            bottomAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.bottomAnchor, constant: safeAreaInsets.bottom),
            rightAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.rightAnchor, constant: safeAreaInsets.right)
        ])
    }

    public func anchor(to view: UIView, edgeInset: UIEdgeInsets = .zero) {
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: view.topAnchor, constant: edgeInset.top),
            leftAnchor.constraint(equalTo: view.leftAnchor, constant: edgeInset.left),
            bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: edgeInset.bottom),
            rightAnchor.constraint(equalTo: view.rightAnchor, constant: edgeInset.right)
        ])
    }

    public func anchor(centerTo view: UIView, offset: CGPoint = .zero) {
        NSLayoutConstraint.activate([
            centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: offset.x),
            centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: offset.y)
        ])
    }
}
