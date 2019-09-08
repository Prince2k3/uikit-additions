import UIKit
import CoreGraphics
import SwiftAdditions

public class TextField: UITextField {
    public enum IconPosition {
        case left, right
    }

    @IBInspectable public var stringFormat: String = ""
    @IBInspectable public var allowOnlyNumbers: Bool = false
    @IBInspectable public var maxCharacterLength: Int = Int.max
    @IBInspectable public var minCharacterLength: Int = -1
    @IBInspectable public var isRequired: Bool = true
    @IBInspectable public var activeTextColor: UIColor = .black
    @IBInspectable public var inactiveTextColor: UIColor = .darkGray
    @IBInspectable public var activeFloatingLabelColor: UIColor = .blue
    @IBInspectable public var inactiveFloatingLabelColor: UIColor = .lightGray
    @IBInspectable public var placeholderTextColor: UIColor = .black {
        didSet {
            if let placeholder = self.placeholder {
                self.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [.foregroundColor: self.placeholderTextColor])
            }
        }
    }

    @IBInspectable public var underlineViewColor: UIColor = UIColor.lightGray.withAlphaComponent(0.4) {
        didSet {
            self.underlineView?.backgroundColor = self.underlineViewColor
        }
    }

    @IBInspectable public var enableFloatingPlaceholder: Bool = true {
        didSet {
            if !self.enableFloatingPlaceholder {
                hideFloatinglabel(false)
            }
        }
    }

    @IBInspectable public var showUnderline: Bool = false {
        didSet {
            self.underlineView.alpha = self.showUnderline ? 1 : 0
            if self.showUnderline {
                self.borderWidth = 0
            }
        }
    }

    @IBInspectable public var useAsDropDown: Bool = false {
        didSet {
            UIMenuController.shared.isMenuVisible = !self.useAsDropDown
            setNeedsLayout()
        }
    }

    private var underlineView: UIView!
    private var floatingLabel: UILabel!
    private var floatingLabelTopConstraint: NSLayoutConstraint!
    private var floatingLabelVisible: Bool = false
    private var originalBorderColor: UIColor!
    private var originalTextColor: UIColor!
    private var originalPlaceholder: String = ""
    private var doAnimation: Bool = false

    public var validator: Validator?
    public var hasError: Bool = false {
        didSet {
            guard self.hasError != oldValue else { return }
            updateError()
        }
    }

    public var iconPosition: IconPosition = .left {
        didSet {
            guard self.iconPosition != oldValue else { return }
            updateIcon()
        }
    }

    public var iconSize: CGSize = CGSize(width: 45, height: 24) {
        didSet {
            guard self.iconSize != oldValue else { return }
            updateIcon()
        }
    }

    public var iconImage: UIImage? {
        didSet {
            guard self.iconImage != oldValue else { return }
            updateIcon()
        }
    }

    private var _text: String = ""

    public override var text: String? {
        get { return super.text }

        set {
            self._text = newValue ?? ""
            checkText(&self._text, animated: doAnimation)
            super.text = self._text
        }
    }

    public override var textAlignment: NSTextAlignment {
        didSet {
            self.floatingLabel?.textAlignment = self.textAlignment
        }
    }

    public override var font: UIFont? {
        didSet {
            self.floatingLabel?.font = self.font
        }
    }

    public override var attributedPlaceholder: NSAttributedString? {
        didSet {
            if let attributedPlaceholder = attributedPlaceholder {
                self.floatingLabel?.text = nil
                self.floatingLabel?.attributedText = attributedPlaceholder
            }
        }
    }

    public override var placeholder: String? {
        didSet {
            if let placeholder = self.placeholder {
                self.floatingLabel?.attributedText = nil
                self.floatingLabel?.text = placeholder
                self.accessibilityLabel = placeholder
            }
        }
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    public override func textRect(forBounds bounds: CGRect) -> CGRect {
        var rect =  super.textRect(forBounds: bounds)

        if let leftView = self.leftView,
            self.leftViewMode == .always {
            rect.origin.x = leftView.frame.maxX + 6
        } else if let rightView = self.rightView,
            self.rightViewMode == .always {
            rect.origin.x = 0
            rect.size.width = bounds.width - rightView.frame.width
        }
        return rect
    }

    public override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return textRect(forBounds: bounds)
    }

    public override func caretRect(for position: UITextPosition) -> CGRect {
        if self.useAsDropDown {
            return .zero
        }
        return super.caretRect(for: position)
    }

    public override func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool {
        if action == #selector(UIResponderStandardEditActions.paste) &&
            action == #selector(UIResponderStandardEditActions.select) &&
            action == #selector(UIResponderStandardEditActions.selectAll) &&
            action == #selector(UIResponderStandardEditActions.copy) &&
            self.useAsDropDown {

            return false
        }
        return super.canPerformAction(action, withSender: sender)
    }

    public override func selectionRects(for range: UITextRange) -> [UITextSelectionRect] {
        if self.useAsDropDown {
            return []
        }
        return super.selectionRects(for: range)
    }

    func setup() {

        // setup underline View
        self.underlineView = UIView()
        self.underlineView.backgroundColor = underlineViewColor
        self.underlineView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(underlineView)
        self.underlineView.alpha = 0

        // setup floating label
        self.floatingLabel = UILabel()
        addSubview(self.floatingLabel)
        self.floatingLabel.translatesAutoresizingMaskIntoConstraints = false
        self.floatingLabel.textAlignment = self.textAlignment
        self.floatingLabel.textColor = self.activeFloatingLabelColor
        if let font = self.font {
            self.floatingLabel.font = UIFont(name: font.fontName, size: (max(12, font.pointSize * 0.65)))
        }
        self.floatingLabel.text = self.placeholder
        self.floatingLabel.alpha = 0
        self.floatingLabel.sizeToFit()

        self.underlineView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        self.underlineView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        self.underlineView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        self.underlineView.heightAnchor.constraint(equalToConstant: 1).isActive = true

        self.floatingLabel.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        self.floatingLabel.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        self.floatingLabelTopConstraint = self.floatingLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        self.floatingLabelTopConstraint.isActive = true

        addTarget(self, action: #selector(textFieldEditingChanged), for: .editingChanged)
        addTarget(self, action: #selector(textFieldEditingDidEnd), for: .editingDidEnd)
        addTarget(self, action: #selector(textFieldEditingDidBegin), for: .editingDidBegin)

        self.clipsToBounds = false
        self.originalPlaceholder = self.placeholder ?? ""
        self.originalBorderColor = self.borderColor
        self.originalTextColor = self.textColor
    }

    public func showFloatingLabel(_ animated: Bool = true) {
        if self.floatingLabelVisible || !self.enableFloatingPlaceholder {
            return
        }

        self.floatingLabel?.textColor = self.isFirstResponder ? self.activeFloatingLabelColor : self.inactiveFloatingLabelColor
        self.floatingLabelTopConstraint?.constant = (bounds.height / 2)

        UIView.animate(withDuration: animated ? 0.3 : 0, delay: 0, options: .curveEaseInOut, animations: {
            self.floatingLabel?.alpha = 1
            self.layoutIfNeeded()
        }, completion: { _ in
            self.floatingLabelVisible = true
            self.doAnimation = false
        })
    }

    public func hideFloatinglabel(_ animated: Bool = true) {
        if !self.floatingLabelVisible || !self.enableFloatingPlaceholder {
            return
        }
        self.floatingLabelTopConstraint?.constant = 0
        UIView.animate(withDuration: animated ? 0.15 : 0, animations: {
            self.floatingLabel?.alpha = 0
            self.layoutIfNeeded()
        }, completion: { _ in
            self.floatingLabelVisible = false
            self.doAnimation = false
        })
    }

    public func updateError() {
        if self.hasError {
            self.originalBorderColor = self.borderColor
            self.originalTextColor = self.textColor
            self.borderColor = .red
            self.textColor = self.borderColor
            self.underlineView?.backgroundColor = self.borderColor
            self.floatingLabel?.textColor = self.borderColor
            self.placeholder = self.validator?.errorMessage ?? self.originalPlaceholder
        } else {
            self.borderColor = self.originalBorderColor
            self.textColor = self.originalTextColor
            self.underlineView?.backgroundColor = self.underlineViewColor
            self.floatingLabel?.textColor = self.isFirstResponder ? self.activeFloatingLabelColor : self.inactiveFloatingLabelColor
            self.placeholder = self.originalPlaceholder
        }

        if let placeholder = self.placeholder {
            let attributes: [NSAttributedString.Key: Any] =  [.foregroundColor: self.hasError ? self.borderColor ?? .red : self.placeholderTextColor]
            self.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: attributes)
        }
    }

    public func updateIcon() {
        self.leftView = nil
        self.leftViewMode = .never
        self.rightView = nil
        self.rightViewMode = .never

        if let iconImage = self.iconImage {
            let imageView = UIImageView(image: iconImage)
            imageView.frame = CGRect(origin: .zero, size: self.iconSize)
            imageView.contentMode = .scaleAspectFit
            if self.iconPosition == .left {
                self.leftView = imageView
                self.leftViewMode = .always
            } else {
                self.rightView = imageView
                self.rightViewMode = .always
            }
        }
        setNeedsLayout()
    }

    @discardableResult
    public func validate() -> Bool {
        guard var text = self.text else {
            return (self.isRequired ? false : true)
        }

        if !self.stringFormat.isEmpty {
            text = text.clearFormat(self.stringFormat)
        }

        var valid: Bool = true

        if self.isRequired {
            valid = !text.trim().isEmpty
        }

        if !text.isEmpty &&
            self.minCharacterLength > text.count &&
            self.maxCharacterLength > text.count {
            valid = false
        }

        if let validator = self.validator {
            valid = valid && text.validate(validator)
        }

        self.hasError = !valid
        return valid
    }

    public func checkText(_ value: inout String, animated: Bool = true) {
        if self.hasError && self.isRequired {
            validate()
        }

        guard !value.isEmpty else {
            hideFloatinglabel(animated)
            return
        }

        showFloatingLabel(animated)

        if !self.stringFormat.isEmpty {
            value = value.clearFormat(self.stringFormat)
        }

        if self.allowOnlyNumbers {
            let characterSet = CharacterSet(charactersIn: "0123456789 +")
            value = value.components(separatedBy: characterSet.inverted).joined()
        }

        if !self.stringFormat.isEmpty {
            value = value.format(self.stringFormat)
        }

        toggleFloatingLabel()
    }

    public func toggleFloatingLabel() {
        if self.isFirstResponder {
            self.textColor = self.activeTextColor
            self.floatingLabel.textColor = hasError ? .red : activeFloatingLabelColor
        } else {
            self.textColor = self.inactiveTextColor
            self.floatingLabel.textColor =  hasError ? .red : inactiveFloatingLabelColor
        }
    }
}

extension TextField {
    @objc public func textFieldEditingDidBegin(_ textField: UITextField) {
        self.text = textField.text
    }

    @objc public func textFieldEditingDidEnd(_ textField: UITextField) {
        self.text = textField.text
    }

    @objc public func textFieldEditingChanged(_ textField: UITextField) {
        self.doAnimation = true
        self.text = textField.text
    }
}
