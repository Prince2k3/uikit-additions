//
//  TextView.swift
//  UIKitAdditions
//
//  Created by Prince Ugwuh on 4/27/19.
//  Copyright © 2019 Prince Ugwuh. All rights reserved.
//

import Foundation

open class TextView: UITextView {
    @IBInspectable var activeTextColor: UIColor = .black
    @IBInspectable var inactiveTextColor: UIColor = .darkGray
    @IBInspectable var activeFloatingLabelColor: UIColor = .blue
    @IBInspectable var inactiveFloatingLabelColor: UIColor = .lightGray
    @IBInspectable var placeholderTextColor: UIColor = .lightGray {
        didSet { self.placeholderLabel?.textColor = self.placeholderTextColor }
    }
    
    @IBInspectable open  var placeholder: String = "" {
        didSet {
            self.placeholderLabel?.text = self.placeholder
            self.floatingLabel?.text = self.placeholder
        }
    }
    
    @IBInspectable open  var enableFloatingPlaceholder: Bool = true {
        didSet {
            if !self.enableFloatingPlaceholder {
                hideFloatinglabel(false)
            }
        }
    }
    
    open var minimumHeight: CGFloat = 44
    open var maximumHeight: CGFloat = 9999999
    open var maxCharacterLength: Int = .max
    var heightDidUpdate: (() -> Void)?
    
    private var heightConstraint: NSLayoutConstraint!
    private var placeholderLabel: UILabel!
    private var floatingLabel: UILabel!
    private var floatingLabelTopConstraint: NSLayoutConstraint!
    private var floatingLabelVisible: Bool = false
    private var heightRange: ClosedRange<CGFloat> {
        return self.minimumHeight...self.maximumHeight
    }
    
    open override func awakeFromNib() {
        super.awakeFromNib()
        commonInit()
    }
    
    open override var text: String! {
        didSet { update() }
    }
    
    open override var intrinsicContentSize: CGSize {
        var contentSize = self.contentSize
        contentSize.height += (self.textContainerInset.bottom + self.textContainerInset.top) / 2
        return contentSize
    }
    
    open override func layoutSubviews() {
        super.layoutSubviews()
        
        if self.heightConstraint != nil {
            let height = self.heightRange.clamp(self.intrinsicContentSize.height)
            
            if self.maximumHeight != height {
                self.contentOffset = .zero
            }
            
            self.heightConstraint.constant = height
            self.heightDidUpdate?()
            
        } else {
            self.contentOffset = CGPoint(x: 0, y: -8) // HACK ALERT: weird workaroud for text not starting at the top of the view.
        }
    }
    
    open func commonInit() {
        NotificationCenter.default.addObserver(self, selector: #selector(textDidChange), name: UITextView.textDidChangeNotification, object: nil)
        
        self.placeholderLabel = UILabel()
        addSubview(self.placeholderLabel)
        self.placeholderLabel.numberOfLines = 0
        self.placeholderLabel.font = self.font
        self.placeholderLabel.textColor = self.placeholderTextColor
        self.placeholderLabel.backgroundColor = .clear
        self.placeholderLabel.text = self.placeholder
        self.placeholderLabel.translatesAutoresizingMaskIntoConstraints = false
        self.placeholderLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 5).isActive = true
        self.placeholderLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
        self.placeholderLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -5).isActive = true
        
        self.floatingLabel = UILabel()
        addSubview(self.floatingLabel)
        
        self.floatingLabel.textAlignment = self.textAlignment
        self.floatingLabel.textColor = self.activeFloatingLabelColor
        
        if let font = self.font {
            self.floatingLabel.font = UIFont(name: font.fontName, size: (max(12, font.pointSize * 0.65)))
        }
        
        self.floatingLabel.text = self.placeholder
        self.floatingLabel.alpha = 0
        self.floatingLabel.translatesAutoresizingMaskIntoConstraints = false
        self.floatingLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 4).isActive = true
        self.floatingLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -4).isActive = true
        self.floatingLabelTopConstraint = self.floatingLabel.topAnchor.constraint(equalTo: self.topAnchor)
        self.floatingLabelTopConstraint?.isActive = true
        
        self.clipsToBounds = false
        
        for constraint in self.constraints where constraint.firstAttribute == .height {
            self.heightConstraint = constraint
            self.minimumHeight = constraint.constant
        }
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self, name: UITextView.textDidChangeNotification, object: nil)
    }
    
    func update() {
        if let text = self.text, !text.isEmpty {
            self.placeholderLabel.isHidden = true
            showFloatingLabel()
            
            if text.count > self.maxCharacterLength {
                self.text = text.substring(0, length: self.maxCharacterLength)
            }
        } else {
            self.placeholderLabel.isHidden = false
            hideFloatinglabel()
        }
    }
    
    @objc func textDidChange(_ notification: Notification) {
        invalidateIntrinsicContentSize()
        update()
        layoutIfNeeded()
    }
    
    open func showFloatingLabel(_ animated: Bool = true) {
        if self.floatingLabelVisible || !self.enableFloatingPlaceholder {
            return
        }
        
        self.floatingLabelVisible = true
        self.floatingLabel?.textColor = self.isFirstResponder ? self.activeFloatingLabelColor : self.inactiveFloatingLabelColor
        self.floatingLabelTopConstraint?.constant = -8
        
        let animator = UIViewPropertyAnimator(duration: animated ? 0.3 : 0, curve: .easeInOut) {
            self.floatingLabel?.alpha = 1
            self.layoutIfNeeded()
        }
        animator.startAnimation()
    }
    
    open func hideFloatinglabel(_ animated: Bool = true) {
        if !self.floatingLabelVisible || !self.enableFloatingPlaceholder {
            return
        }
        
        self.floatingLabelVisible = false
        self.floatingLabelTopConstraint?.constant = 0
        
        let animator = UIViewPropertyAnimator(duration: animated ? 0.3 : 0, curve: .easeInOut) {
            self.floatingLabel?.alpha = 0
            self.layoutIfNeeded()
        }
        animator.startAnimation()
    }
}

fileprivate extension ClosedRange {
    func clamp(_ element: Bound) -> Bound {
        return Swift.max(lowerBound, Swift.min(upperBound, element))
    }
}
