import UIKit

open class TextView: UITextView {
    @IBInspectable var placeholderTextColor: UIColor = .lightGray {
        didSet {
            self.placeholderLabel?.textColor = self.placeholderTextColor
        }
    }
    
    @IBInspectable open  var placeholder: String = "" {
        didSet {
            self.placeholderLabel?.text = self.placeholder
        }
    }
    
    @IBInspectable open var minimumHeight: CGFloat = 44
    @IBInspectable open var maximumHeight: CGFloat = 9999999
    @IBInspectable open var maxCharacterLength: Int = .max
    
    public var heightDidUpdate: (() -> Void)?
    
    private var heightConstraint: NSLayoutConstraint!
    private var placeholderLabel: UILabel!
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
        
        let height = self.heightRange.clamp(self.intrinsicContentSize.height)
        
        if self.maximumHeight != height {
            self.contentOffset = .zero
        }
        
        self.heightConstraint?.constant = height
        self.heightDidUpdate?()
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
            
            if text.count > self.maxCharacterLength {
                self.text = text.substring(0, length: self.maxCharacterLength)
            }
        } else {
            self.placeholderLabel.isHidden = false
        }
    }
    
    @objc func textDidChange(_ notification: Notification) {
        update()
        layoutIfNeeded()
    }
}

fileprivate extension ClosedRange {
    func clamp(_ element: Bound) -> Bound {
        return Swift.max(lowerBound, Swift.min(upperBound, element))
    }
}
