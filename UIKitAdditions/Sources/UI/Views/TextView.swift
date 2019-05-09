//
//  TextView.swift
//  UIKitAdditions
//
//  Created by Prince Ugwuh on 4/27/19.
//  Copyright © 2019 Prince Ugwuh. All rights reserved.
//

import Foundation

open class TextView: UITextView {
    private let placeholderTextView: UITextView = {
        let view = UITextView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        view.isScrollEnabled = false
        view.isUserInteractionEnabled = false
        view.textColor = .gray
        return view
    }()
    
    @IBInspectable public var maxHeight: CGFloat = 0.0
    @IBInspectable public var placeholder: String? {
        get { return self.placeholderTextView.text }
        set { self.placeholderTextView.text = newValue }
    }
    
    @IBInspectable public var placeholderTextColor: UIColor = .gray {
        didSet {
            self.placeholderTextView.textColor = self.placeholderTextColor
        }
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        NotificationCenter.default.addObserver(self, selector: #selector(textDidChange), name: UITextView.textDidChangeNotification, object: self)
        
        self.isScrollEnabled = false
        self.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        self.placeholderTextView.font = self.font
        addSubview(self.placeholderTextView)
        
        NSLayoutConstraint.activate([
            self.placeholderTextView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.placeholderTextView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.placeholderTextView.topAnchor.constraint(equalTo: self.topAnchor),
            self.placeholderTextView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        ])
    }
    
    open override var text: String! {
        didSet {
            invalidateIntrinsicContentSize()
            self.placeholderTextView.isHidden = !self.text.isEmpty
        }
    }
    
    open override var font: UIFont? {
        didSet {
            self.placeholderTextView.font = self.font
            invalidateIntrinsicContentSize()
        }
    }
    
    open override var contentInset: UIEdgeInsets {
        didSet {
            self.placeholderTextView.contentInset = self.contentInset
        }
    }
    
    open override var intrinsicContentSize: CGSize {
        var size = super.intrinsicContentSize
        
        if size.height == UIView.noIntrinsicMetric {
            self.layoutManager.glyphRange(for: self.textContainer)
            size.height = self.layoutManager.usedRect(for: self.textContainer).height + self.textContainerInset.top + self.textContainerInset.bottom
        }
        
        if self.maxHeight > 0.0 && size.height > self.maxHeight {
            size.height = self.maxHeight
            
            if !self.isScrollEnabled {
                self.isScrollEnabled = true
            }
            
        } else if self.isScrollEnabled {
            self.isScrollEnabled = false
        }
        
        return size
    }
    
    @objc private func textDidChange(_ notification: Notification) {
        invalidateIntrinsicContentSize()
        self.placeholderTextView.isHidden = !self.text.isEmpty
    }
}
