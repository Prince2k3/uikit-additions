import UIKit

extension UIView {
    public static func autoLayout() -> Self {
        let newView = Self.init()
        newView.translatesAutoresizingMaskIntoConstraints = false
        return newView
    }
}

extension UIView {
    public func anchorToBottom(atHeight height: CGFloat) {
        guard let superview = self.superview else { return }
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            leftAnchor.constraint(equalTo: superview.leftAnchor),
            rightAnchor.constraint(equalTo: superview.rightAnchor),
            bottomAnchor.constraint(equalTo: superview.bottomAnchor),
            heightAnchor.constraint(equalToConstant: height),
        ])
    }
    
    public func anchorToTop(atHeight height: CGFloat) {
        guard let superview = self.superview else { return }
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            leftAnchor.constraint(equalTo: superview.leftAnchor),
            rightAnchor.constraint(equalTo: superview.rightAnchor),
            topAnchor.constraint(equalTo: superview.topAnchor),
            heightAnchor.constraint(equalToConstant: height),
        ])
    }
    
    public func anchorToSuperview(edgeInset: UIEdgeInsets = .zero) {
        guard let superview = self.superview else { return }
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superview.topAnchor, constant: edgeInset.top),
            leftAnchor.constraint(equalTo: superview.leftAnchor, constant: edgeInset.left),
            bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: edgeInset.bottom),
            rightAnchor.constraint(equalTo: superview.rightAnchor, constant: edgeInset.right)
        ])
        
    }

    public func centerToSuperview(offset: CGPoint = .zero) {
        guard let superview = self.superview else { return }
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            centerXAnchor.constraint(equalTo: superview.centerXAnchor, constant: offset.x),
            centerYAnchor.constraint(equalTo: superview.centerYAnchor, constant: offset.y)
        ])
    }

    @available(iOS 11, *)
    public func anchorToSuperviewSafeArea(edgeInset: UIEdgeInsets = .zero) {
        guard let superview = self.superview else { return }
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.topAnchor, constant: edgeInset.top),
            leftAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.leftAnchor, constant: edgeInset.left),
            bottomAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.bottomAnchor, constant: -edgeInset.bottom),
            rightAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.rightAnchor, constant: -edgeInset.right)
        ])
    }
    
    public func sizeTo(width: CGFloat? = nil, height: CGFloat? = nil) {
        guard superview != nil else { return }
        translatesAutoresizingMaskIntoConstraints = false
        
        var constraints = [NSLayoutConstraint]()
        if let width = width {
            constraints.append(widthAnchor.constraint(equalToConstant: width))
        }
        
        if let height = height {
            constraints.append(heightAnchor.constraint(equalToConstant: height))
        }
        
        NSLayoutConstraint.activate(constraints)
        
    }
    
    @discardableResult
    public func addLayoutAnchors(
        topAnchor: NSLayoutYAxisAnchor? = nil,
        leftAnchor: NSLayoutXAxisAnchor? = nil,
        leadingAnchor: NSLayoutXAxisAnchor? = nil,
        bottomAnchor: NSLayoutYAxisAnchor? = nil,
        rightAnchor: NSLayoutXAxisAnchor? = nil,
        trailingAnchor: NSLayoutXAxisAnchor? = nil,
        centerYAnchor: NSLayoutYAxisAnchor? = nil,
        centerXAnchor: NSLayoutXAxisAnchor? = nil,
        topConstant: CGFloat = 0,
        leftConstant: CGFloat = 0,
        leadingConstant: CGFloat = 0,
        bottomConstant: CGFloat = 0,
        rightConstant: CGFloat = 0,
        trailingConstant: CGFloat = 0,
        centerYConstant: CGFloat = 0,
        centerXConstant: CGFloat = 0,
        widthConstant: CGFloat = 0,
        heightConstant: CGFloat = 0) -> [NSLayoutConstraint] {
        
        guard superview != nil else { return [] }
        
        translatesAutoresizingMaskIntoConstraints = false
        
        var constraints = [NSLayoutConstraint]()
        
        if let topAnchor = topAnchor {
            let constraint = self.topAnchor.constraint(equalTo: topAnchor, constant: topConstant)
            constraint.identifier = "top"
            constraints.append(constraint)
        }
        
        if let leftAnchor = leftAnchor {
            let constraint = self.leftAnchor.constraint(equalTo: leftAnchor, constant: leftConstant)
            constraint.identifier = "left"
            constraints.append(constraint)
        }
        
        if let leadingAnchor = leadingAnchor {
            let constraint = self.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingConstant)
            constraint.identifier = "leading"
            constraints.append(constraint)
        }
        
        if let bottomAnchor = bottomAnchor {
            let constraint = self.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -bottomConstant)
            constraint.identifier = "bottom"
            constraints.append(constraint)
        }
        
        if let rightAnchor = rightAnchor {
            let constraint = self.rightAnchor.constraint(equalTo: rightAnchor, constant: -rightConstant)
            constraint.identifier = "right"
            constraints.append(constraint)
        }
        
        
        if let trailingAnchor = trailingAnchor {
            let constraint = self.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -trailingConstant)
            constraint.identifier = "trailing"
            constraints.append(constraint)
        }
        
        if let centerYAnchor = centerYAnchor {
            let constraint = self.centerYAnchor.constraint(equalTo: centerYAnchor, constant: centerYConstant)
            constraint.identifier = "centerY"
            constraints.append(constraint)
        }

        if let centerXAnchor = centerXAnchor {
            let constraint = self.centerXAnchor.constraint(equalTo: centerXAnchor, constant: centerXConstant)
            constraint.identifier = "centerX"
            constraints.append(constraint)
        }
        
        if widthConstant > 0 {
            let constraint = self.widthAnchor.constraint(equalToConstant: widthConstant)
            constraint.identifier = "width"
            constraints.append(constraint)
        }
        
        if heightConstant > 0 {
            let constraint = self.heightAnchor.constraint(equalToConstant: heightConstant)
            constraint.identifier = "height"
            constraints.append(constraint)
        }
        
        NSLayoutConstraint.activate(constraints)
        return constraints
    }

}
